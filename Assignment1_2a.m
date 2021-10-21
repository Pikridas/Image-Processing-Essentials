t=imread('text.png');
c=imread('cameraman.tif');
m=uint8(double(c)+255*double(t));
figure,imshow(m);
title('EIKONA M PRIN TIN KATOFLIWSH');
ma=im2bw(m,0.999);
figure,imshow(ma);
title('EIKONA M META TIN KATOFLIWSH');
