# Booth Multiplier Project

## Overview
This project implements a Booth multiplier, a binary multiplication algorithm that uses Booth's method for signed binary multiplication. It is a crucial algorithm in digital signal processing and computer arithmetic.

## Features
- **Booth's Algorithm Implementation:** Core logic to perform multiplication of two binary numbers.
- **User-Friendly Interface:** Inputs and outputs are displayed in binary form.
- **Simulation in Xilinx Vivado:** Fully tested and validated using Xilinx Vivado.

## Modules
### **1. XOR Module**
A basic XOR gate used to perform binary addition and subtraction operations within the multiplier logic.

### **2. Full Adder Module**
Implements the full adder logic required for binary addition in the Booth multiplier, handling carry operations.

### **3. Eight-bit Adder/Subtractor Module**
Computes the sum and difference of 8-bit binary numbers. This module is used for generating partial products and handling two’s complement when necessary.

### **4. Booth Substep Module**
Implements the substeps of Booth’s algorithm, including encoding the multiplier and handling shifts during the multiplication process.

### **5. Booth Multiplier Module**
The core logic that brings together all modules to perform Booth multiplication. It calculates the product of two 8-bit binary numbers using Booth’s algorithm.

### **6. Testbench**
A simulation environment designed to validate the Booth multiplier design. It provides test cases to verify correctness by comparing outputs with expected results. The testbench is executed in Xilinx Vivado and includes various binary input combinations to test multiplication logic.
