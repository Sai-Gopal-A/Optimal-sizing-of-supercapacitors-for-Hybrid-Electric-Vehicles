% Parameters
R = 0.7*10^-3; % Ohms - Resistance for one cell
C_cell = 2098; % Farads - Capacitance of the cell
n = 1; % Number of cells
C = C_cell/n; % Capacitance of an individual cell
p = 200; % Watts - Power
T = 36; % Seconds - Total simulation time
R_ESR = n * R; % Ohms - Equivalent Series Resistance

% Time points
t = 0:0.01:T; % Time vector with a step of 0.01 seconds

% Initial conditions
E0 = 2.7 * n; % Initial voltage across the cell

% Solve the differential equation for cell voltage
dEdt = @(t, E) (-C * E + sqrt(C^2 * E.^2 - 4 * C^2 * R_ESR * p)) / (2 * R_ESR * C^2);
[t, E] = ode45(dEdt, [0, T], E0);

% Calculate current using the specified formula i(t) = -C * dE(t)/dt
i = -C * gradient(E, t);

% Calculate power in watts
power_kw = (E .* i);

% Calculate terminal voltage
V = E - i * R_ESR;

% Plots
figure(1)
plot(t, E, t, V)
title('Supercapacitor Internal & Terminal Voltages')
legend('E(Internal Voltage)', 'V(Terminal Voltage)')
xlabel('Time (s)'); ylabel('Voltage (V)')

figure(2)
plot(t, i)
title('Supercapacitor Current')
xlabel('Time (s)'); ylabel('Current (A)')

figure(3)
plot(t, power_kw)
title('Supercapacitor Power')
xlabel('Time (s)'); ylabel('Power (W)')
