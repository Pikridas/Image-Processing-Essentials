[x,y]=meshgrid(-128:127,-128:127);
z=sqrt(x.^2+y.^2);
c=(z < 15);
cf=fftshift(fft2(z));
cfh=cf.*c;
figure,fftshow(cfh,'log')
cfhi=ifft2(cfh);
figure,fftshow(cfhi,'abs')
cm=imread('cameraman.tif');
cf=fftshift(fft2(cm));
cfl=cf.*c2;
cfli=ifft2(cfl);
figure,fftshow(cfli,'abs')
title('VATHIPERATO ABS');
figure,fftshow(cfli,'log')
title('VATHIPERATO LOG');

%OSO ANEVAZW TIN AKTINA TOSO PIO POLU
%PLISIAZW THN ARXIKI EIKONA