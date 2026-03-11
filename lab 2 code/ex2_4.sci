n = -5:5;                       
msignal = n .* bool2s(n >= 0);  

// Plotting the discrete signal
plot2d3(n, msignal);            

// Adjusting plot properties for thicker stems and markers
h = gce();                      // Get current entity (the stems)
h.children.thickness = 3;       // Increase stem thickness
h.children.mark_size = 4;       // Adjust marker size

title('Unit Ramp Signal ur(n)');
xlabel('Sample n');
ylabel('Amplitude');
xgrid(1);