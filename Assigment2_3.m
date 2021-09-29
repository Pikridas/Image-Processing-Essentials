im = imread('cameraman.tif');

%FOURIE TRANSFORMS OF CAMERAMAN
%IDEAL LOW AND HIGH PASS FILTERS.

[x,y] = meshgrid(-128:127,-128:127);
z = sqrt(x.^2+y.^2);
c = (z < 100);

x1 = fftshift(fft2(im));
x1h = x1.*c;
x2 = ifft2(x1h);

subplot(2,2,1)
fftshow(x2,'log');
title({'IDEAL LOW PASS','IFFT2 LOG'});
subplot(2,2,2)
fftshow(x2,'abs');
title({'IDEAL LOW PASS','IFFT2 ABS'});

c = (z > 100 );

x3 = fftshift(fft2(im));
x3h = x3.*c;
x4 = ifft2(x3h);

subplot(2,2,3)
fftshow(x4,'log');
title({'IDEAL HIGH PASS','IFFT2 LOG'});
subplot(2,2,4)
fftshow(x4,'abs');
title({'IDEAL HIGH PASS','IFFT2 ABS'});

%FOURIE TRANSFORMS OF CAMERAMAN
%BUTTERWORTH LOW AND HIGH PASS FILTERS.
figure;

c = fftshift(fft2(im));
x1 = lbutter(im,100,2);
x1h = x1.*c;
x2 = ifft2(x1h);

subplot(2,2,1)
fftshow(x2,'log');
title({'BUTTERWORTH LOW PASS','IFFT2 LOG'});
subplot(2,2,2)
fftshow(x2,'abs');
title({'BUTTERWORTH LOW PASS','IFFT2 ABS'});

c = fftshift(fft2(im));
x3 = hbutter(im,100,2);
x1h = x3.*c;
x4 = ifft2(x1h);

subplot(2,2,3)
fftshow(x4,'log');
title({'BUTTERWORTH HIGH PASS','IFFT2 LOG'});
subplot(2,2,4)
fftshow(x4,'abs');
title({'BUTTERWORTH HIGH PASS','IFFT2 ABS'});