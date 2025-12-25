# Optimal Sizing of Supercapacitors for HEVs
**Project Type:** MSc Research - University of Hertfordshire  
**Tools:** MATLAB, Simulink, Numerical Iterative Methods

## 📊 Executive Summary
This project addresses the challenge of sizing supercapacitor banks to handle high-power bursts in HEVs. By implementing a **Two-Branch Model**, I achieved a validation accuracy with only a **4.54% mean error** compared to experimental data.

## 🛠 Technical Implementation
- **Mathematical Modeling:** Developed a non-ideal RC circuit model to account for Equivalent Series Resistance (ESR).
- **Optimization:** Used a numerical iterative approach to find the minimum number of cells required for a 25kW power demand.
- **Validation:** Compared simulated discharge curves against high-fidelity experimental data.

## 📈 Key Findings
- **Mass Optimization:** Reduced system mass by 15% through precise cell-count calculations.
- **Voltage Divergence:** Identified a **27.96% divergence** between internal and terminal voltages caused by ESR.
- **Model Accuracy:** The enhanced Two-Branch model significantly outperformed basic RC models in predicting voltage drops.

## 📁 Repository Structure
- `/Scripts`: MATLAB code for iterative sizing and ODE45 solvers.
- `/Results`: Comparison plots of Experimental vs. Simulated data.
- `/Docs`: Technical summary of the Two-Branch model equations.
