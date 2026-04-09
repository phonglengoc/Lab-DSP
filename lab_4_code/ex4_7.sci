
x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];
N = length(x);

// 1. Tich chap vong bang Folding & Shifting
y_circ = zeros(1, N);
for n = 1:N
    sum_val = 0;
    for k = 1:N
        idx = pmodulo((n - 1) - (k - 1), N) + 1;
        sum_val = sum_val + h(k) * x(idx);
    end
    y_circ(n) = sum_val;
end
disp("Circular convolution result (Folding & Shifting):");
disp(y_circ);

// 2. Tich chap vong bang Ma tran
H_circ = zeros(N, N);
for i = 1:N
    for j = 1:N
        idx = pmodulo((i - 1) - (j - 1), N) + 1;
        H_circ(i, j) = h(idx);
    end
end
y_matrix_circ = H_circ * x';
disp("Circular convolution using Matrix Method:");
disp(y_matrix_circ');

// 3. Ve do thi
n_vec = 0:N-1;
energy_circ = sum(abs(y_circ).^2);
energy_vec_circ = ones(1, N) * energy_circ;

scf(3);
clf();
plot(n_vec, x, 'r-*');
plot(n_vec, y_circ, 'b-o');
plot(n_vec, energy_vec_circ, 'g--');

xtitle("Signals x(n), Circular Convolution y(n), and Energy", "n", "Amplitude");
legend(["x(n)"; "y(n)"; "Total Energy"]);
xgrid();