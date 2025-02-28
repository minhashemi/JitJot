# MATLAB Basics (Workshop 1)


## Contents
| Section | Description | Links |
|---------|------------|-------|
| 📂 **Notes** | Explored MATLAB Basics and Numerical Mehtods to solve equations | [readme file](./readme.md) [matlab file](./workshop1.m) |
| 📂 **Codes** | Codes of examples proposed during the workshop | [Link](./codes) |


## Preliminaries

- **Semicolon (`;`)**: Suppresses output.
  - Example:
    ```matlab
    a = 2
    A = 3; % A is stored but not printed
    ```
- **Clear and Clc**:
  - `clc` : Clears the command window.
  - `clear var` : Clears a specific variable.
  - `clear all` : Clears all variables.
- **Case Sensitivity**: `a` and `A` are different.
- **MATLAB as a Calculator**: Supports `+ - * / ^ ()`.

## Math Functions

- **Trigonometric Functions**:
  - `sin(x)`, `cos(x)`, `tan(x)` (Radians)
  - Example: `sin(pi/2) % Returns 1`
- **Inverse Trigonometric Functions**:
  - `asin(x)`, `acos(x)`, `atan(x)`
  - Example: `asin(1) % Returns pi/2`
- **Logarithmic Functions**:
  - `log(x)`: Natural log
  - `log10(x)`: Base 10 log
  - `log2(x)`: Base 2 log
  - Example: `log(10) % Returns 2.3026`
- **Exponential Function**:
  - `exp(x)`: Exponential of `x`
  - Example: `exp(1) % Returns 2.7183`
- **Square Root**:
  - `sqrt(x)`
  - Example: `sqrt(16) % Returns 4`
- **Absolute Value**:
  - `abs(x)`
  - Example: `abs(-5) % Returns 5`
- **Random Number Generation**:
  - `rand()`: Random number between 0 and 1
  - `rand(m, n)`: `m x n` matrix of random numbers
  - Example: `rand(2,3)`
- **Matrix Functions**:
  - `zeros(m,n)`, `ones(m,n)`, `eye(m)` (Identity matrix)
  - Example: `zeros(3,2)`
- **Determinant and Inverse**:
  - `det(a)`: Determinant of matrix `a`
  - `inv(a)`: Inverse of matrix `a`
  - Example: `inv([1 2; 3 4])`
- **Eigenvalues and Eigenvectors**:
  - `eig(a)`
  - Example: `eig([1 2; 3 4])`

## Control Flow and Loops

- **If-Else Condition**:
  ```matlab
  if x > 0
      disp('Positive')
  elseif x < 0
      disp('Negative')
  else
      disp('Zero')
  end
  ```
- **While Loop**:
  ```matlab
  while x < 10
      x = x + 1;
  end
  ```
- **For Loop**:
  ```matlab
  for i = 1:5
      disp(i)
  end
  ```
- **Logical Operators**:
  - `&`, `&&` (AND)
  - `|`, `||` (OR)
  - `~=`, `==`, `<`, `>`, `<=`, `>=` (Comparisons)

## Matrices and Indexing

- **Matrix Creation**:
  ```matlab
  a = [1 2 3; 4 5 6] % 2x3 matrix
  ```
- **Matrix Indexing**:
  ```matlab
  a(i,j) % Access element at row i, column j
  ```
  Example: `a(2,3)`
- **Removing Columns or Rows**:
  ```matlab
  a(:,4) = [] % Remove column 4
  ```

## Functions

- **Simple Function**:
  ```matlab
  function y = f(x)
      y = x^2 + 5;
  end
  ```
- **Multiple Outputs**:
  ```matlab
  function [y1, y2] = f(x1, x2)
      y1 = x1^2 + 4;
      y2 = abs(x2 * 3 + x1);
  end
  ```

