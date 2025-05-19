Here’s a clean and organized **README.md** format for your MATLAB plotting examples. This format uses Markdown syntax and includes code blocks, section headers, 
# MATLAB Plotting Cheatsheet

This document summarizes basic to advanced plotting techniques in MATLAB, including 2D and 3D plots, colors, markers, legends, subplots, and surface visualization.

---

## 📈 Basic Plot

```matlab
x = 0:pi/4:pi;
y = sin(x);
plot(x, y)
```

---

## 📊 Multiple Plots

```matlab
x = -pi:pi/40:pi;
y = sin(x);
z = 2*cos(x);

plot(x, y)
plot(x, z)         % This overwrites the previous plot

plot(x, y, x, z)   % Plot both on the same figure
```

---

## 🎨 Colors

```matlab
plot(x, y, 'r')  % red
plot(x, y, 'k')  % black
```

---

## ✏️ Line Styles & Markers

| Symbol | Description    |
| ------ | -------------- |
| `'--'` | dashed line    |
| `':'`  | dotted line    |
| `'-.'` | dash-dot line  |
| `'*'`  | star marker    |
| `'o'`  | circle marker  |
| `'s'`  | square marker  |
| `'^'`  | triangle up    |
| `'<'`  | triangle left  |
| `'>'`  | triangle right |

---

## 🔗 Combined Styles

```matlab
plot(x, y, 'r--')              % red dashed
plot(x, y, 'k:*')              % black dotted with star
plot(x, y, 'b--', x, z, 'g^')  % blue dashed and green triangles
```

---

## 🛑 Hold On

```matlab
plot(x, y, 'b')
hold on
plot(x, z, 'r')
plot(x, x + y)
```

---

## 🖼️ Figure & Legend

```matlab
figure(10)
plot(x, y, 's')
hold on
plot(x, y, '>')
plot(x, y, '<')
plot(x, y, '^')

figure(2)
plot(x, y, 'r--', x, z, 'b^')
legend('y', 'z', 'ellipse')
```

---

## 📏 Axes & Labels

```matlab
axis([xmin xmax ymin ymax])

xlabel('time (s)')
ylabel('\omega')
title('x-t diagram')

grid on
grid minor
```

---

## ✍️ Text & Line Width

```matlab
text(x, y, 'hey')
text(1, 3, num2str(var))

plot(x, z, 'b', 'LineWidth', 4)
```

---

## 🧱 Subplots

```matlab
subplot(2, 3, 1)
plot(x, y, 'r')
hold on
plot(x, z, 'b--')

subplot(2, 3, 2:3)
plot(x, z + 5)
hold on
plot(x, y + z)
```

---

## 🧩 3D Plot

```matlab
plot3(t, x, y)
axis([xmin xmax ymin ymax zmin zmax])
```

---

## 🌄 Surface & Contour

```matlab
surf(y, x, z)     % 3D surface
surfc(y, x, z)    % surface with contours
contour(y, x, z)  % contour lines
contourf(y, x, z) % filled contours
```

---

## 📌 Notes

* `hold on` allows overlaying multiple plots on the same figure.
* `figure(n)` creates or switches to figure window `n`.
* Always label axes and use legends in multi-plot figures for clarity.
