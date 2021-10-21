im1 = imread('cameraman.tif');
im2 = imread('tire.tif');

%FILTRA CAMERAMAN
pre = edge(im1,'prewitt');
rob = edge(im1,'roberts');
sob = edge(im1,'sobel');
l = fspecial('laplacian',0);
zcl = edge(im1,'zerocross',l);
lg = fspecial('log',13,2);
zclg = edge(im1,'zerocross',lg);

%EMFANISI AKMWN CAMERAMAN
subplot(2,3,1)
imshow(im1);
title('NORMAL');
subplot(2,3,2)
imshow(pre);
title({'CAMERAMAN';'PREWITT EDGE'});
subplot(2,3,3)
imshow(rob);
title({'CAMERAMAN';'ROBERTS EDGE'});
subplot(2,3,4)
imshow(sob);
title({'CAMERAMAN';'SOBEL EDGE'});
subplot(2,3,5)
imshow(zcl);
title({'CAMERAMAN';'ZEROCROSSING';'LAPLASSIAN EDGE'});
subplot(2,3,6)
imshow(zclg);
title({'CAMERAMAN';'ZEROCROSSING';'LAPLASSIAN';'OF GAUSSIAN EDGE'});

figure;

%FILTRA TIRE
pre = edge(im2,'prewitt');
rob = edge(im2,'roberts');
sob = edge(im2,'sobel');
l = fspecial('laplacian',0);
zcl = edge(im2,'zerocross',l);
lg = fspecial('log',13,2);
zclg = edge(im2,'zerocross',lg);

%EMFANISI AKMWN TIRE
subplot(2,3,1)
imshow(im2);
title('NORMAL');
subplot(2,3,2)
imshow(pre);
title({'TIRE';'PREWITT EDGE'});
subplot(2,3,3)
imshow(rob);
title({'TIRE';'ROBERTS EDGE'});
subplot(2,3,4)
imshow(sob);
title({'TIRE';'SOBEL EDGE'});
subplot(2,3,5)
imshow(zcl);
title({'TIRE';'ZEROCROSSING';'LAPLASSIAN EDGE'});
subplot(2,3,6)
imshow(zclg);
title({'TIRE';'ZEROCROSSING';'LAPLASSIAN';'OF GAUSSIAN EDGE'});
