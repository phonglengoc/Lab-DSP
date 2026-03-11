n = -5:5;                       // Range of samples 
msignal = bool2s(n == 0);       // Generate delta(n) 
plot2d3(n, msignal);            // Plot discrete signal 
plot(n, x, 'ro');
title('Unit Impulse Signal delta(n)');

xlabel('Sample n');
ylabel('Amplitude');
xgrid(1);