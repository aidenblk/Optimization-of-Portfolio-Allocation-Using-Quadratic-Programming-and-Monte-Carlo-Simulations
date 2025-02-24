# Portfolio Optimization using Quadratic Programming in MATLAB

## Project Description
This project implements **portfolio optimization** using **quadratic programming** in MATLAB. The goal is to **find the optimal allocation of assets** that minimizes portfolio risk while maintaining a desired return, following **Markowitz's Modern Portfolio Theory (MPT)**. Additionally, a **Monte Carlo simulation** is used to generate random portfolios, allowing for visualization of the **Efficient Frontier**, which represents the best trade-off between risk and return.

---

## Features
**Quadratic Programming Optimization**: Finds the asset weights that minimize portfolio variance.  
**Monte Carlo Simulation**: Generates thousands of random portfolios to compare risk-return characteristics.  
**Efficient Frontier Plot**: Visualizes the relationship between expected return and risk.  
**Modular MATLAB Code**: Functions are separated into different files for clarity and reusability.  

---

## Files Overview
- `define_data.m` - Defines expected returns and covariance matrix for assets.
- `solve_qp.m` - Implements **quadratic programming** to compute the optimal portfolio weights.
- `monte_carlo.m` - Performs **Monte Carlo simulations** to generate random portfolios.
- `plot_frontier.m` - Plots the **Efficient Frontier** and marks the optimized portfolio.
- `main.m` - Main script to execute all functions and display results.

---

## Installation & Usage
### Prerequisites
- MATLAB (R2020a or later recommended)
- Optimization Toolbox (for `quadprog` function)

### Running the Project
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/portfolio-optimization-matlab.git
   cd portfolio-optimization-matlab

2. Open MATLAB and naviagte to the project directory.
  - After adding all the MATLAB files to the same project continue to step 4.
4. Run the main script
   ```bash
   main
   ```
5. The output will include:
   optimized portfolio weights
   Minimum portfolio risk
   Efficent Frontier plot with random portfolios and the optimal portfoliio marked with a red dot.
   
