# Robot Framework Ecommerce Automation

## Overview

This project is an Ecommerce UI Automation Framework developed using **Robot Framework** and **SeleniumLibrary** with Python.

The framework automates key ecommerce workflows using the SauceDemo application and follows a reusable keyword-driven approach.

## Tech Stack

- Robot Framework 7.5
- SeleniumLibrary 6.9.0
- Selenium 4.49.0
- Python
- Chrome Browser
- Git & GitHub

## Project Structure

```text
RobotFramework_Ecommerce/
│
├── resources/
│   ├── keywords.robot
│   └── variables.robot
│
├── tests/
│   ├── login.robot
│   ├── products.robot
│   ├── cart.robot
│   └── checkout.robot
│
├── results/
├── .gitignore
├── requirements.txt
└── README.md

Test Coverage
Login
Valid login
Invalid login
Products
Select Sauce Labs Backpack
Verify product details
Cart
Add product to cart
Verify product in cart
Checkout
Enter checkout information
Verify checkout overview
Complete checkout
Verify order confirmation
Framework Features
Keyword-driven test automation
Reusable custom keywords
Centralized test data and configuration
SeleniumLibrary integration
Test tagging
Smoke and regression test execution
HTML test reporting
Screenshot capture
Python virtual environment support
Test Tags

The tests are organized using Robot Framework tags.

Examples:

smoke
login
products
cart
checkout
regression
Test Execution
Run all tests
python -m robot tests
Run smoke tests
python -m robot --include smoke tests
Run login tests
python -m robot --include login tests
Reports

Robot Framework generates the following execution reports:

report.html – execution summary
log.html – detailed execution log
output.xml – execution results

These generated files are excluded from Git using .gitignore.

Installation

Create a virtual environment:

python -m venv test_env

Activate the virtual environment:

test_env\Scripts\activate

Install the project dependencies:

pip install -r requirements.txt

Run the test suite:

python -m robot tests

Test Application

The framework uses the SauceDemo ecommerce application for UI automation.