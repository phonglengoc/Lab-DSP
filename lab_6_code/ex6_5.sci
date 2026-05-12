w = -%pi:0.01:%pi;

// Tính Y(w)
Y = (1 + exp(-%i*w)) ./ (1 - 0.5*exp(-%i*w));

magY = abs(Y);
phaseY = atan(imag(Y), real(Y));

// Vẽ đồ thị
figure(4);
subplot(2,1,1);
plot(w, magY);
title('Amplitude Spectrum of Output Y(w) - Exercise 5');
xlabel('Frequency w (rad/sample)'); ylabel('|Y(w)|');

subplot(2,1,2);
plot(w, phaseY);
title('Phase Spectrum of Y(w)');
xlabel('Frequency w (rad/sample)'); ylabel('Phase (radians)');