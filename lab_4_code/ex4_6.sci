x = [1, 2, -3, 2, 1];
h = [1, 0, -1];

// 1. Tich chap bang ham conv() (tuong duong Folding & Shifting)
y_conv = conv(x, h);
disp("Linear convolution result (Folding & Shifting):");
disp(y_conv);

// 2. Tich chap bang phuong phap Ma tran
N = length(x);
M = length(h);
L = N + M - 1;

H = zeros(L, N);
for j = 1:N
    for i = 1:M
        if (i + j - 1) <= L then
            H(i + j - 1, j) = h(i);
        end
    end
end

y_matrix = H * x';
disp("Convolution using Matrix Method:");
disp(y_matrix');

// 3. Ve do thi x(n), y(n) va Nang luong
nx = 0:N-1;
ny = 0:L-1;

energy = sum(abs(y_conv).^2);
energy_vec = ones(1, L) * energy;

scf(2);
clf();
plot(nx, x, 'r-*');
plot(ny, y_conv, 'b-o');
plot(ny, energy_vec, 'g--');

xtitle("Signals x(n), Convolution y(n), and Energy", "n", "Amplitude");
legend(["x(n)"; "y(n)"; "Total Energy"]);
xgrid();