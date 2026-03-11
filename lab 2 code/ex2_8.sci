// Exercise 2.8: Signal Manipulations
clear; clc; clf();

// Original Signal x(n)
nx = -2:1;
x = [1, -2, 3, 6];

// --- 1. First Pair: y1(n) = x(-n) ---
ny1 = -nx($:-1:1);
y1 = x($:-1:1);

figure(1);
subplot(2, 1, 1);
plot2d3(nx, x); e = gce(); e.children.thickness = 3;
plot(nx, x, 'ro'); e2 = gce(); e2.children.thickness = 2;
title('Original Signal x(n)'); xlabel('n'); ylabel('Amplitude');
ax1 = gca(); ax1.data_bounds = [-2.5, -5; 2.5, 14]; xgrid(color('gray'));
for i = 1:length(nx)
    if x(i) >= 0 then ypos = x(i) + 1.5; else ypos = x(i) - 2.5; end
    xstring(nx(i)-0.1, ypos, msprintf("%.1f", x(i)));
end

subplot(2, 1, 2);
plot2d3(ny1, y1); e = gce(); e.children.thickness = 3;
plot(ny1, y1, 'mo'); e2 = gce(); e2.children.thickness = 2;
title('Manipulated Signal y1(n) = x(-n)'); xlabel('n'); ylabel('Amplitude');
ax2 = gca(); ax2.data_bounds = [-2.5, -5; 2.5, 14]; xgrid(color('gray'));
for i = 1:length(ny1)
    if y1(i) >= 0 then ypos = y1(i) + 1.5; else ypos = y1(i) - 2.5; end
    xstring(ny1(i)-0.1, ypos, msprintf("%.1f", y1(i)));
end

// --- 2. Second Pair: y2(n) = x(n+3) ---
ny2 = nx - 3;
y2 = x;

figure(2);
subplot(2, 1, 1);
plot2d3(nx, x); e = gce(); e.children.thickness = 3;
plot(nx, x, 'ro'); e2 = gce(); e2.children.thickness = 2;
title('Original Signal x(n)'); xlabel('n'); ylabel('Amplitude');
ax3 = gca(); ax3.data_bounds = [-5.5, -5; 1.5, 14]; xgrid(color('gray'));
for i = 1:length(nx)
    if x(i) >= 0 then ypos = x(i) + 1.5; else ypos = x(i) - 2.5; end
    xstring(nx(i)-0.1, ypos, msprintf("%.1f", x(i)));
end

subplot(2, 1, 2);
plot2d3(ny2, y2); e = gce(); e.children.thickness = 3;
plot(ny2, y2, 'go'); e2 = gce(); e2.children.thickness = 2;
title('Manipulated Signal y2(n) = x(n+3)'); xlabel('n'); ylabel('Amplitude');
ax4 = gca(); ax4.data_bounds = [-5.5, -5; 1.5, 14]; xgrid(color('gray'));
for i = 1:length(ny2)
    if y2(i) >= 0 then ypos = y2(i) + 1.5; else ypos = y2(i) - 2.5; end
    xstring(ny2(i)-0.1, ypos, msprintf("%.1f", y2(i)));
end

// --- 3. Third Pair: y3(n) = 2x(-n-2) ---
ny3 = -nx($:-1:1) - 2;
y3 = 2 * x($:-1:1);

figure(3);
subplot(2, 1, 1);
plot2d3(nx, x); e = gce(); e.children.thickness = 3;
plot(nx, x, 'ro'); e2 = gce(); e2.children.thickness = 2;
title('Original Signal x(n)'); xlabel('n'); ylabel('Amplitude');
ax5 = gca(); ax5.data_bounds = [-3.5, -5; 1.5, 14]; xgrid(color('gray'));
for i = 1:length(nx)
    if x(i) >= 0 then ypos = x(i) + 1.5; else ypos = x(i) - 2.5; end
    xstring(nx(i)-0.1, ypos, msprintf("%.1f", x(i)));
end

subplot(2, 1, 2);
plot2d3(ny3, y3); e = gce(); e.children.thickness = 3;
plot(ny3, y3, 'bo'); e2 = gce(); e2.children.thickness = 2;
title('Manipulated Signal y3(n) = 2x(-n-2)'); xlabel('n'); ylabel('Amplitude');
ax6 = gca(); ax6.data_bounds = [-3.5, -5; 1.5, 14]; xgrid(color('gray'));
for i = 1:length(ny3)
    if y3(i) >= 0 then ypos = y3(i) + 1; else ypos = y3(i) - 1.5; end
    xstring(ny3(i)-0.1, ypos, msprintf("%.1f", y3(i)));
end