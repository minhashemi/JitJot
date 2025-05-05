
# MATLAB Basics (Workshop 2)

## Contents
| Section | Description | Links |
|---------|-------------|-------|
| 📂 **Notes** | Explored MATLAB Basics and Numerical Methods to solve equations | [readme file](./readme.md) [matlab file](./workshop2.m) |
| 📂 **Codes** | Code examples used in the workshop | [codes](./codes) |
| 📂 **Video** | Workshop recording | [Differentiation](https://youtu.be/3wUlsy59KI4) [Integration](https://youtu.be/OAMNWzkMYhs) |


## 📐 Differentiation

### Symbolic (requires Symbolic Toolbox)

```matlab
syms x
diff(sin(x))          % cos(x)
diff(x^2 + 3*x + 2)   % 2*x + 3
```

### Numeric Approximation (Finite Difference)

```matlab
f = @(x) x.^2 + 3*x;
h = 1e-5;
x0 = 2;
df = (f(x0 + h) - f(x0)) / h;
```

---

## ∫ Integration

### Symbolic Integration

```matlab
syms x
int(x^2)              % (1/3)*x^3
int(sin(x), x, 0, pi) % 2
```

### Numerical Integration (Trapezoidal Rule)

```matlab
x = 0:0.1:1;
y = x.^2;
area = trapz(x, y);   % Approx. ∫x² dx from 0 to 1
```

### `integral` Function (for general use)

```matlab
f = @(x) x.^2;
integral(f, 0, 1)     % Returns 1/3 ≈ 0.3333
```

---

## 📈 Interpolation

### Linear Interpolation

```matlab
x = [1 2 3];
y = [2 4 6];
xi = 1.5;
yi = interp1(x, y, xi);  % 3
```

### Other Methods

```matlab
interp1(x, y, xi, 'spline')    % Spline interpolation
interp1(x, y, xi, 'nearest')   % Nearest neighbor
```

---

## 📉 Mean Square Error (MSE)

Used to evaluate fit quality:

```matlab
y_true = [1 2 3];
y_pred = [1.1 1.9 3.2];
mse = mean((y_true - y_pred).^2);  % ≈ 0.0233
```

---

## 🔚 Tip

Use `help function_name` or `doc function_name` in MATLAB for detailed syntax and examples:

```matlab
help plot
doc trapz
```
