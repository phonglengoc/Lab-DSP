// Định nghĩa trục tần số w từ -pi đến pi
w = -%pi:0.01:%pi;

// ---- Tín hiệu x1(n) ----
X1 = 1 ./ (1 - 0.1 * exp(-%i * w));
magX1 = abs(X1);
phaseX1 = atan(imag(X1), real(X1));

// Vẽ phổ cho x1(n)
figure(1);
subplot(2,1,1);
plot(w, magX1);
title('Amplitude Spectrum of x1(n) = 0.1^n u(n)');
xlabel('Frequency w (rad/sample)'); ylabel('|X1(w)|');

subplot(2,1,2);
plot(w, phaseX1);
title('Phase Spectrum of x1(n)');
xlabel('Frequency w (rad/sample)'); ylabel('Phase (radians)');

// ---- Tín hiệu x2(n) ----
X2 = 1 + exp(-%i * w) + exp(-%i * 2*w) + exp(-%i * 3*w);
magX2 = abs(X2);
phaseX2 = atan(imag(X2), real(X2));

// Vẽ phổ cho x2(n)
figure(2);
subplot(2,1,1);
plot(w, magX2);
title('Amplitude Spectrum of x2(n)');
xlabel('Frequency w (rad/sample)'); ylabel('|X2(w)|');

subplot(2,1,2);
plot(w, phaseX2);
title('Phase Spectrum of x2(n)');
xlabel('Frequency w (rad/sample)'); ylabel('Phase (radians)');