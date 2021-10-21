f=imread('C:\Users\Admin\Desktop\epeksergasia\flowers.tif');
fg=rgb2gray(f);
fg=im2uint8(fg(30:285,60:315));
%EIKONA XWRIS GAUSSIAN NOISE
subplot(2,3,1)
imshow(fg);
title('EIKONA XWRIS GAUSSIAN NOISE');
a = imnoise(fg,'gaussian',0,0.01);
subplot(2,3,2)
imshow(a);
title('EIKONA ME GAUSSIAN NOISE 0.01');
b = imnoise(fg,'gaussian',0,0.02);
subplot(2,3,3)
imshow(b);
title('EIKONA ME GAUSSIAN NOISE 0.02');
c = imnoise(fg,'gaussian',0,0.05);
subplot(2,3,4)
imshow(c);
title('EIKONA ME GAUSSIAN NOISE 0.05');
d = imnoise(fg,'gaussian',0,0.1);
subplot(2,3,5)
imshow(d);
title('EIKONA ME GAUSSIAN NOISE 0.1');
e = imnoise(fg,'gaussian',0,0.2);
subplot(2,3,6)
imshow(d);
title('EIKONA ME GAUSSIAN NOISE 0.2');
figure;
avg = fspecial('average',[7,7]);
a1 = filter2(avg,a);
subplot(2,2,1)
imshow(a1);
title('EIKONA a ME FILTRO AVERAGE');
a2 = filter2(avg,b);
subplot(2,2,2)
imshow(a2);
title('EIKONA b ME FILTRO AVERAGE');
a3 = filter2(avg,c);
subplot(2,2,3)
imshow(a3);
title('EIKONA c ME FILTRO AVERAGE');
a4 = filter2(avg,d);
subplot(2,2,4)
imshow(a4);
title('EIKONA d ME FILTRO AVERAGE');
figure;
b1 = wiener2(a);
subplot(2,2,1);
imshow(b1);
title('EIKONA a ME FILTRO WIENER');
b2 = wiener2(b);
subplot(2,2,2);
imshow(b2);
title('EIKONA b ME FILTRO WIENER');
b3 = wiener2(c);
subplot(2,2,3);
imshow(b3);
title('EIKONA c ME FILTRO WIENER');
b4 = wiener2(d);
subplot(2,2,4);
imshow(b4);
title('EIKONA d ME FILTRO WIENER');
