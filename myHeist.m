function [p] = myHeist(im)
p=imread(im);
%���� ��� �����������
figure,imshow(p);
title('EIKONA PRIN TIN ISOSTATHMISI');
figure,imhist(p);
title('ISTOGRAMMA PRIN TIN ISOSTATHMISI');
axis tight;
%���� ��� �����������
ph=histeq(p);
figure,imshow(ph);
title('EIKONA META TIN ISOSTATHMISI');
figure,imhist(ph);
title('ISTOGRAMMA META TIN ISOSTATHMISI');
axis tight;