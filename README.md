# Optimal-sizing-of-supercapacitors-for-Hybrid-Electric-Vehicles

Objective: To minimize the mass and cost of a supercapacitor bank for a Hybrid Electric Vehicle (HEV) while meeting constant power demands.

Methodologies Used:
Numerical Iterative Method: Implemented to determine the minimum number of capacitors required for a non-ideal circuit model.
Two-Branch Model: Developed as an enhancement to the initial model to account for voltage leakage effects and double-layer complex impedance.
MATLAB Scripting: Utilized to solve differential equations (using ode45) and validate numerical results against experimental data.


Key Results (The Stats):
ESR Impact: Demonstrated that Equivalent Series Resistance (ESR) caused a 27.96% divergence between internal and terminal voltages.
Efficiency Gains: Successfully modeled a discharge process where internal voltage dropped by 44.4% and terminal voltage by 42.6% while maintaining rapid energy discharge.
Validation Accuracy: The Two-Branch model achieved a mean error of only 4.54% compared to experimental data, a significant improvement over simpler models.
