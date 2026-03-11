clear;
clc;
clf;

disp("EXERCISE 1.2: ");

//a)
// preparing information
t = 0:0.0001:0.1;
xa = 3*sin(100*%pi*t);
//plot
subplot(3, 1, 1);
plot(t, xa, 'b'); // 'b' for blue line
title('a) Analog signal xa(t) = 3sin(100*pi*t) in 5 periods');
xlabel('Time t (seconds)');
ylabel('Amplitude');
xgrid(1); // Turn on grid

//b, c)
//preparing information
//fs = 300 ->f0/fs = 1/3
//2*pi / 1/3pi = 6 (N)
n = 0:29;
x = 3 * sin(%pi*n/3);
disp(x)
//plot
subplot(3, 1, 2);
plot2d3(n, x);
plot(n, x, 'ro'); // Add red circles at the top of the stems
title('c) Discrete-time signal x(n) = 3sin(pi*n/3) in 5 periods');
xlabel('Sample n');
ylabel('Amplitude');
xgrid(1);

//add val
ax = gca(); // Lấy trục hiện tại (get current axes)
ax.data_bounds = [0, -4; 29, 4]; // Giới hạn X: 0->29, Y: -4->4

// In giá trị cho x(n)
for i = 1:length(n)
    if x(i) >= 0 then
        y_pos = x(i) + 0.3; // Số dương in nhích lên trên
    else
        y_pos = x(i) - 0.6; // Số âm in nhích xuống dưới
    end
    xstring(n(i) - 0.4, y_pos, msprintf("%.5f", x(i)));
end
//d
// prepare information
denta = 0.1;
x_quantize = denta*floor(x/denta);
//plot
subplot(3, 1, 3);
plot2d3(n, x_quantize);
plot(n, x_quantize, 'mo');
title('d) Quantized signal x_quantize(n) with Delta = 0.1 (Truncated method)');
xgrid(1);

for i = 1:length(n)
    if x_quantize(i) >= 0 then
        y_pos = x_quantize(i) + 0.05;
    else
        y_pos = x_quantize(i) - 0.4;
    end
    xstring(n(i) - 0.3, y_pos, msprintf("%.1f", x_quantize(i)));
end


