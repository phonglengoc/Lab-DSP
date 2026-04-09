// 1. Tao tin hieu am thanh: song sin 440 Hz trong 2 giay
fs = 44100;         // Tan so lay mau (Hz)
t = 0:1/fs:2;       // Truc thoi gian
f = 440;            // Tan so am (Hz)
x = 0.5 * sin(2 * %pi * f * t); // Tin hieu am thanh

// 2. Ghi vao file WAV
wavwrite(x, fs, "sin440.wav");

// 3. Ve mot doan ngan tu 0.005s den 0.02s de nhin ro song
start_time = 0.005; // 5 ms
end_time = 0.02;    // 20 ms

start_index = int(start_time * fs) + 1;
end_index = int(end_time * fs);

t_zoom = t(start_index:end_index);
x_zoom = x(start_index:end_index);

// 4. Ve do thi zoom
scf(0);
plot(t_zoom, x_zoom);
xlabel("Thoi gian (s)");
ylabel("Bien do");
xtitle("Phong to tin hieu song am thanh hinh sin 440Hz (5ms-20ms)");

// 5. Phat am thanh ra loa (tui them vao cho day du nhe)
sound(x, fs);