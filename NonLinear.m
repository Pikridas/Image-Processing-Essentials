c=imread('cameraman.tif');
cmin=nlfilter(c,[3,3],'min(x(:))');
cmax=nlfilter(c,[3,3],'max(x(:))');
figure,imshow(cmin);
title('MINIMUM');
figure,imshow(cmax);
title('MAXIMUM');