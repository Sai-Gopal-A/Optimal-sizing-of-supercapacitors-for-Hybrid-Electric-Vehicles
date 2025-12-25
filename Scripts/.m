% Parameters
R_cell = 10 * 10^-3; % Resistance for one cell
n = 10; % Number of cells
R_ESR = n * R_cell; % Ohms - Equivalent Series Resistance
C0 = 100; % Farads - Capacitance of the cell
K1 = 22.3; % Constant F/V
E_cells = 2.7; % Voltage of one cell
C1 = K1 * E_cells; % Capacitance of additional capacitor
C_cell = C0 + C1; % Total capacitance
C = C_cell / n; % Capacitance of an individual cell
p = 5; % Watts - Power
T = 20; % Seconds - Total simulation time

% Time points
t = 0:0.01:T; % Time vector with a step of 0.01 seconds

% Initial conditions
E_cells = E_cells * n; % Initial voltage across the cell

% Solve the differential equation for cell voltage
dE_cellsdt = @(t, E_cells) ((-p/E_cells) * (1/((C0 + ((2 * K1) * (E_cells - ((p * R_ESR) / E_cells)))) * (1/(1 + (p * R_ESR) / E_cells^2)))));
[t, Y] = ode45(dE_cellsdt, [0, T], E_cells);

% Extracting results
E_cells = Y(:, 1);
i = -C * gradient(E_cells, t);

% Calculate power in kilowatts
power_w = (E_cells.* i) ;

% Calculate terminal voltage
V = E_cells - i * R_ESR;


% Plots
figure(1)
plot(t, E_cells, t, V)
title('Supercapacitor Internal & Terminal Voltages')
legend('E(Internal Voltage)', 'V(Terminal Voltage)')
xlabel('Time (s)'); ylabel('Voltage (V)')

figure(2)
plot(t, i)
title('Supercapacitor Current')
xlabel('Time (s)'); ylabel('Current (A)')

figure(3)
plot(t, power_w)
title('Supercapacitor Power')
xlabel('Time (s)'); ylabel('Power (W)')
