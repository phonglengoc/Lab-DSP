function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = convol(xn, hn);
    
    yorigin = xorigin + horigin - 1;
    
    n_x = (1:length(xn)) - xorigin;
    n_h = (1:length(hn)) - horigin;
    n_y = (1:length(yn)) - yorigin;
    
    subplot(3, 1, 1);
    plot2d3(n_x, xn, style=2);
    e1 = gce(); e1.children.thickness = 3;
    xtitle("Tín hiệu ngõ vào x(n)", "n", "Biên độ");
    xgrid();
    
    subplot(3, 1, 2);
    plot2d3(n_h, hn, style=5);
    e2 = gce(); e2.children.thickness = 3;
    xtitle("Đáp ứng xung h(n)", "n", "Biên độ");
    xgrid();
    
    subplot(3, 1, 3);
    plot2d3(n_y, yn, style=6);
    e3 = gce(); e3.children.thickness = 3;
    xtitle("Tín hiệu ngõ ra y(n) = x(n) * h(n)", "n", "Biên độ");
    xgrid();
endfunction

[yn, yorigin] = convolution([1, 2, 1], 2, [1, -1, 1], 1);

disp("Dãy tín hiệu tích chập y(n):");
disp(yn);
disp("Vị trí gốc yorigin mới:");
disp(yorigin);