w = -%pi:0.01:%pi;

// Tính H(w)
H = 1 ./ (1 + 0.1*exp(-%i*w) + 0.2*exp(-%i*2*w));

magH = abs(H);
phaseH = atan(imag(H), real(H));

// Vẽ đồ thị
figure(3);
subplot(2,1,1);
plot(w, magH);
title('Amplitude Spectrum of Impulse Response H(w) - Exercise 4');
xlabel('Frequency w (rad/sample)'); ylabel('|H(w)|');

subplot(2,1,2);
plot(w, phaseH);
title('Phase Spectrum of H(w)');
xlabel('Frequency w (rad/sample)'); ylabel('Phase (radians)');