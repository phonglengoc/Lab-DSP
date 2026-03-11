clear; clc; clf;
n = -2:2; 

x = [0, 1, 3, -2, 0]; 

//fold
x_fold = x($:-1:1); 

xe = 0.5 * (x + x_fold);
xo = 0.5 * (x - x_fold);


figure;

// 1. Original Signal
subplot(3, 1, 1);
plot2d3(n, x); 
e = gce(); e.children.thickness = 3; 
plot(n, x, 'ro'); 
e2 = gce(); e2.children.thickness = 2; 

title('Original Signal x(n) = {1, 3, -2}');
xlabel('Sample n'); ylabel('Amplitude');


ax1 = gca(); ax1.data_bounds = [-2.5, -3; 2.5, 4]; 
xgrid(color('gray')); 


for i = 1:length(n)
    if x(i) >= 0 then
        y_pos = x(i) + 0.3;
    else
        y_pos = x(i) - 0.7;
    end
    xstring(n(i) - 0.1, y_pos, msprintf("%.1f", x(i)));
end


// 2. Even Component
subplot(3, 1, 2);
plot2d3(n, xe); 
e = gce(); e.children.thickness = 3;
plot(n, xe, 'go'); 
e2 = gce(); e2.children.thickness = 2;

title('Even Component xe(n)');
xlabel('Sample n'); ylabel('Amplitude');

ax2 = gca(); ax2.data_bounds = [-2.5, -3; 2.5, 4]; 
xgrid(color('gray'));

for i = 1:length(n)
    if xe(i) >= 0 then
        y_pos = xe(i) + 0.3;
    else
        y_pos = xe(i) - 0.7;
    end
    xstring(n(i) - 0.1, y_pos, msprintf("%.1f", xe(i)));
end


// 3. Odd Component
subplot(3, 1, 3);
plot2d3(n, xo); 
e = gce(); e.children.thickness = 3;
plot(n, xo, 'bo'); 
e2 = gce(); e2.children.thickness = 2;

title('Odd Component xo(n)');
xlabel('Sample n'); ylabel('Amplitude');

ax3 = gca(); ax3.data_bounds = [-2.5, -3; 2.5, 4]; 
xgrid(color('gray'));

for i = 1:length(n)
    if xo(i) >= 0 then
        y_pos = xo(i) + 0.5;
    else
        y_pos = xo(i) - 0.7;
    end
    xstring(n(i) - 0.1, y_pos, msprintf("%.1f", xo(i)));
end