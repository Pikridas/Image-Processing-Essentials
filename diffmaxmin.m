function [p,el] = diffmaxmin (I, n)
p = imread(I);
el = n;
subplot(2,2,1);
imshow(p);
title('EIKONA XWRIS NON-LINEAR FILTER');
cmin=nlfilter(p,[n,n],'min(x(:))');
subplot(2,2,2);
imshow(cmin);
title('EIKONA ME NON-LINEAR MIN FILTER');
cmax=nlfilter(p,[n,n],'max(x(:))');
subplot(2,2,3);
imshow(cmax);
title('EIKONA ME NON-LINEAR MAX FILTER');
c = cmax-cmin;
subplot(2,2,4);
imshow(c);
title('EIKONA ME NON-LINEAR MAX - MIN  FILTER');
