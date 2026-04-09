N = 100;
img_orig = zeros(N, N);
img_orig(30:70, 30:70) = 1; 

// 2. Them nhieu 
rand("normal"); 
img_noisy = img_orig + 0.3 * rand(N, N);

// 3. Tao bo loc lam mo (Averaging filter)
kernel_size = 5;
h = ones(kernel_size, kernel_size) / (kernel_size * kernel_size);

// 4. Ap dung bo loc vao anh bang tich chap 2 chieu
img_blurred = conv2(img_noisy, h, "same");

// 5. Ep kieu ve so nguyen tu 1 den 256 de Matplot hieu duoc
img_noisy_disp = int(min(max(img_noisy * 255, 0), 255)) + 1;
img_blurred_disp = int(min(max(img_blurred * 255, 0), 255)) + 1;

// 6. Ve hai buc anh len cung mot cua so de so sanh
scf(1);
clf();
f = gcf();

// TỰ TẠO MA TRẬN MÀU XÁM (Khắc phục lỗi graycolormap)
// Tao 1 cot 256 gia tri tu 0->1, sau do nhan voi [1 1 1] de ra 3 cot R G B giong nhau
gray_cmap = linspace(0, 1, 256)' * ones(1, 3); 
f.color_map = gray_cmap; 

subplot(1, 2, 1);
Matplot(img_noisy_disp);
xtitle("Noisy Image (Original)");

subplot(1, 2, 2);
Matplot(img_blurred_disp);
xtitle("Blurred Image (After 2D Filter)");