function [yn, yorigin] = advance(xn, xorigin, k)
    if k <= 0 then
        error("Giá trị k phải lớn hơn 0.");
    end
    
    yn = xn;
    yorigin = xorigin + k;
    
    n_x = (1:length(xn)) - xorigin;
    n_y = (1:length(yn)) - yorigin;
    
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
    xtitle("Tín hiệu sớm y(n)", "n", "y(n)");
    xgrid();
endfunction

[yn, yorigin] = advance([1, -2, 3, 6], 3, 1);

disp("Dãy tín hiệu y(n):");
disp(yn);
disp("Vị trí gốc yorigin:");
disp(yorigin);