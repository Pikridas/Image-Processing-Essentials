im = imread('cameraman.tif');
c1 = imnoise(im,'salt & pepper',0.2);
c2 = imnoise(im,'gaussian',0,0.05);

%FILTRA CAMERAMAN ле SALT & PEPPER
pre = edge(c1,'prewitt');
rob = edge(c1,'roberts');
sob = edge(c1,'sobel');
l = fspecial('laplacian',0);
zcl = edge(c1,'zerocross',l);
lg = fspecial('log',13,2);
zclg = edge(c1,'zerocross',lg);
can = edge(c1,'canny');

%EMFANISI AKMWN CAMERAMAN ле SALT & PEPPER
subplot(2,3,1)
imshow(pre);
title({'S&P CAMERAMAN';'PREWITT EDGE'});
subplot(2,3,2)
imshow(rob);
title({'S&P CAMERAMAN';'ROBERTS EDGE'});
subplot(2,3,3)
imshow(sob);
title({'S&P CAMERAMAN';'SOBEL EDGE'});
subplot(2,3,4)
imshow(zcl);
title({'S&P CAMERAMAN';'ZEROCROSSING';'LAPLASSIAN EDGE'});
subplot(2,3,5)
imshow(zclg);
title({'S&P CAMERAMAN';'ZEROCROSSING';'LAPLASSIAN';'OF GAUSSIAN EDGE'});
subplot(2,3,6)
imshow(can);
title({'S&P CAMERAMAN';'CANNY EDGE'});

figure;

pre = edge(c2,'prewitt');
rob = edge(c2,'roberts');
sob = edge(c2,'sobel');
l = fspecial('laplacian',0);
zcl = edge(c2,'zerocross',l);
lg = fspecial('log',13,2);
zclg = edge(c2,'zerocross',lg);
can = edge(c2,'canny');

%EMFANISI AKMWN CAMERAMAN ле GAUSSIAN
subplot(2,3,1)
imshow(pre);
title({'GAUS CAMERAMAN';'PREWITT EDGE'});
subplot(2,3,2)
imshow(rob);
title({'GAUS CAMERAMAN';'ROBERTS EDGE'});
subplot(2,3,3)
imshow(sob);
title({'GAUS CAMERAMAN';'SOBEL EDGE'});
subplot(2,3,4)
imshow(zcl);
title({'GAUS CAMERAMAN';'ZEROCROSSING';'LAPLASSIAN EDGE'});
subplot(2,3,5)
imshow(zclg);
title({'GAUS CAMERAMAN';'ZEROCROSSING';'LAPLASSIAN';'OF GAUSSIAN EDGE'});
subplot(2,3,6)
imshow(can);
title({'GAUS CAMERAMAN';'CANNY EDGE'});