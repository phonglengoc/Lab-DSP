function [yn, yorigin] = fold(xn, xorigin)
    yn = flipdim(xn, 2);
    
    yorigin = length(xn) - xorigin + 1;
    
    n_x = (1:length(xn)) - xorigin;
    n_y = flipdim(-n_x, 2);
    
    subplot(2, 1, 1);
    plot2d3(n_x, xn, style=2);
    e1 = gce();
    e1.children.thickness = 3;
    xtitle("Tín hiệu gốc x(n)", "n", "x(n)");
    xgrid();
    
    subplot(2, 1, 2);
    plot2d3(n_y, yn, style=5);
    e2 = gce();
    e2.children.thickness = 3;
    xtitle("Tín hiệu gập y(n) = x(-n)", "n", "y(n)");
    xgrid();
endfunction

[yn, yorigin] = fold([1, -2, 3, 6], 3);

disp("Dãy tín hiệu y(n) sau khi gập:");
disp(yn);
disp("Vị trí gốc yorigin mới:");
disp(yorigin);