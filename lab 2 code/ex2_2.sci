// Exercise 2.2: Unit Step Signal
n = -5:5;                       // Range of samples 
msignal = bool2s(n >= 0);       // Generate u(n) using logic 
plot2d3(n, msignal);            // Plot discrete signal
title('Unit Step Signal u(n)');
xlabel('Sample n');
ylabel('Amplitude');
