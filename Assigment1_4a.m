f=imread('C:\Users\Admin\Desktop\epeksergasia\flowers.tif');
fg=rgb2gray(f);
fg=im2uint8(fg(30:285,60:315));
%EIKONA XWRIS SALT AND PEPPER
subplot(2,3,1)
imshow(fg);
title('EIKONA XWRIS SALT AND PEPPER');
%EIKONA ME SALT AND PEPPER 5%
fg_sp = imnoise(fg,'salt & pepper',0.05);
subplot(2,3,4)
imshow(fg_sp);
title('EIKONA ME SALT AND PEPPER 5%');
a = fspecial('average',[7,7]);
a1 = imfilter(fg_sp,a);
subplot(2,3,2)
imshow(a1);
title('EIKONA ME FILTRO AVERAGE');
a2 = medfilt2(fg_sp);
subplot(2,3,5)
imshow(a2);
title('EIKONA ME MEDIAN FILTRO');
a3 = myPsmed(fg_sp);
subplot(2,3,3)
imshow(a3);
title('EIKONA ME PSEUDO-MEDIAN FILTRO');