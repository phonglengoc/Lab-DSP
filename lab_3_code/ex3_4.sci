function [yn, yorigin] = add(x1n, x1origin, x2n, x2origin)
    n1_start = 1 - x1origin;
    n1_end = length(x1n) - x1origin;
    n2_start = 1 - x2origin;
    n2_end = length(x2n) - x2origin;
    
    n_start = min(n1_start, n2_start);
    n_end = max(n1_end, n2_end);
    
    yorigin = 1 - n_start; 
    
    n = n_start:n_end;
    yn = zeros(1, length(n));
    
    for i = 1:length(n)
        if (n(i) >= n1_start) & (n(i) <= n1_end) then
            idx1 = n(i) + x1origin;
            yn(i) = yn(i) + x1n(idx1);
        end
        if (n(i) >= n2_start) & (n(i) <= n2_end) then
            idx2 = n(i) + x2origin;
            yn(i) = yn(i) + x2n(idx2);
        end
    end
    
    subplot(3, 1, 1); 
    plot2d3(n1_start:n1_end, x1n, style=2);
    e1 = gce(); e1.children.thickness = 3;
    xtitle("Tín hiệu x1(n)", "n", "x1(n)");
    xgrid();
    
    subplot(3, 1, 2); 
    plot2d3(n2_start:n2_end, x2n, style=5);
    e2 = gce(); e2.children.thickness = 3;
    xtitle("Tín hiệu x2(n)", "n", "x2(n)");
    xgrid();
    
    subplot(3, 1, 3); 
    plot2d3(n, yn, style=3);
    e3 = gce(); e3.children.thickness = 3;
    xtitle("Tín hiệu tổng y(n) = x1(n) + x2(n)", "n", "y(n)");
    xgrid();
endfunction

[yn, yorigin] = add([1, 2, 3, 4], 2, [2, -1, 3], 1);

disp("Dãy tín hiệu tổng y(n):");
disp(yn);
disp("Vị trí gốc yorigin mới:");
disp(yorigin);