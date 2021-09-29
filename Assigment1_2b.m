t=imread('text.png');
c=imread('cameraman.tif');
t1 = 1-t;
c1 = 1-c;
subplot(2,2,1)
imshow(t);
title('H EIKONA T');
subplot(2,2,3)
imshow(c);
title('H EIKONA C');
subplot(2,2,2)
imshow(t1);
title('SIMPLIRWMATIKH EIKONAS THS T');
subplot(2,2,4)
imshow(c1);
title('SIMPLIRWMATIKH EIKONAS THS C');
figure;
t2=uint8(double(c)+255*double(t1));
subplot(2,3,1)
imshow(t2);
title('H EIKONA YPERTHESIS T1,C')
subplot(2,3,4)
t2a=im2bw(t2,0.999);
imshow(t2a);
title('EIKONA YPERTHESIS T1,C META TIN KATOFLIWSH');
c2=uint8(double(c1)+255*double(t));
subplot(2,3,2)
imshow(c2);
title('H EIKONA YPERTHESIS T,C1')
subplot(2,3,5)
c2a=im2bw(c2,0.999);
imshow(c2a);
title('EIKONA YPERTHESIS T,C1 META TIN KATOFLIWSH');
ct=uint8(double(c1)+255*double(t1));
subplot(2,3,3)
imshow(ct);
title('H EIKONA YPERTHESIS T1,C1')
subplot(2,3,6)
cta=im2bw(ct,0.999);
imshow(cta);
title('EIKONA YPERTHESIS T1,C1 META TIN KATOFLIWSH');
