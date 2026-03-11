disp("Exercise 1.1")
x1 = 1:4;               
result1 = x1 + 1;        
disp("result  x + 1:");
disp(result1);


x2 = 1:4;                
y2 = 5:8;               
result2 = x2 .* y2;      
disp("result  x*y:");
disp(result2);

// Yêu cầu 3: Tạo vector sin(x) với x gồm 10 giá trị tuyến tính trong đoạn [0, pi]
x3 = linspace(0, %pi, 10); // Hàm linspace chia đều 10 điểm từ 0 đến hằng số Pi (%pi)
result3 = sin(x3);         // Tính sin cho toàn bộ các phần tử trong vector x3
disp("result  sin(x):");
disp(result3);
