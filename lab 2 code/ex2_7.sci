// Exercise 2.7: Multiplication of two signals
clear; clc; clf;

// Define common time vector with padding for clear visualization
n = -2:4;

// Original signals padded with zeros to match the length of n
// x1(n) = {0, 1, 3, -2} at n = 0, 1, 2, 3
x1 = [0, 0, 0, 1, 3, -2, 0];

// x2(n) = {0, 1, 2, 3} at n = -1, 0, 1, 2
x2 = [0, 0, 1, 2, 3, 0, 0];

// Calculate the product y(n) = x1(n) .* x2(n)
// Note: '.*' is strictly used for element-wise multiplication
y = x1 .* x2;

// --- PLOTTING ---
figure;

// 1. Plot x1(n)
subplot(3, 1, 1);
plot2d3(n, x1); e = gce(); e.children.thickness = 3;
plot(n, x1, 'ro'); e2 = gce(); e2.children.thickness = 2;
title('Signal x1(n) = {0, 1, 3, -2} (origin at n=0)');
xlabel('Sample n'); ylabel('Amplitude');
ax1 = gca(); ax1.data_bounds = [-2.5, -3; 4.5, 11];
xgrid(color('gray'));

for i = 1:length(n)
    if x1(i) >= 0 then y_pos = x1(i) + 1.2; else y_pos = x1(i) - 1.8; end
    xstring(n(i) - 0.1, y_pos, msprintf("%.1f", x1(i)));
end

// 2. Plot x2(n)
subplot(3, 1, 2);
plot2d3(n, x2); e = gce(); e.children.thickness = 3;
plot(n, x2, 'go'); e2 = gce(); e2.children.thickness = 2;
title('Signal x2(n) = {0, 1, 2, 3} (origin at n=1)');
xlabel('Sample n'); ylabel('Amplitude');
ax2 = gca(); ax2.data_bounds = [-2.5, -3; 4.5, 11];
xgrid(color('gray'));

for i = 1:length(n)
    if x2(i) >= 0 then y_pos = x2(i) + 1.2; else y_pos = x2(i) - 1.8; end
    xstring(n(i) - 0.1, y_pos, msprintf("%.1f", x2(i)));
end

// 3. Plot y(n)
subplot(3, 1, 3);
plot2d3(n, y); e = gce(); e.children.thickness = 3;
plot(n, y, 'bo'); e2 = gce(); e2.children.thickness = 2;
title('Product Signal y(n) = x1(n) .* x2(n)');
xlabel('Sample n'); ylabel('Amplitude');
ax3 = gca(); ax3.data_bounds = [-2.5, -3; 4.5, 11];
xgrid(color('gray'));

for i = 1:length(n)
    if y(i) >= 0 then y_pos = y(i) + 1.2; else y_pos = y(i) - 1.8; end
    xstring(n(i) - 0.1, y_pos, msprintf("%.1f", y(i)));
end