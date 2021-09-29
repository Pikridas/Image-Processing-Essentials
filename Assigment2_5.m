im = imread('circbw.tif');
sq = [1 1 1;1 1 1;1 1 1]; %TETRAGWNO
di = [1 0 0;1 1 1;0 0 1]; %DIAMANTI
sqh = [1 1 1;1 0 1;1 1 1]; %TETRAGWNO ME TRYPA STIN MESH
B = [1 0 0;1 0 0;0 0 1];

dial = imdilate(im,sq);
ero = imerode(im,sq);
open = imopen(im,sq);
close = imclose(im,sq);

subplot(3,4,1)
imshow(dial);
title({'DILATION','SQUARE'});
subplot(3,4,2)
imshow(ero);
title({'EROSION','SQUARE'});
subplot(3,4,3)
imshow(open);
title({'OPEN','SQUARE'});
subplot(3,4,4)
imshow(close);
title({'CLOSE','SQUARE'});

dial = imdilate(im,di);
ero = imerode(im,di);
open = imopen(im,di);
close = imclose(im,di);

subplot(3,4,5)
imshow(dial);
title({'DILATION','DIAMOND'});
subplot(3,4,6)
imshow(ero);
title({'EROSION','DIAMOND'});
subplot(3,4,7)
imshow(open);
title({'OPEN','DIAMOND'});
subplot(3,4,8)
imshow(close);
title({'CLOSE','DIAMOND'});

dial = imdilate(im,sqh);
ero = imerode(im,sqh);
open = imopen(im,sqh);
close = imclose(im,sqh);

subplot(3,4,9)
imshow(dial);
title({'DILATION','TRYPIO TETRAGWNO'});
subplot(3,4,10)
imshow(ero);
title({'EROSION','TRYPIO TETRAGWNO'});
subplot(3,4,11)
imshow(open);
title({'OPEN','TRYPIO TETRAGWNO'});
subplot(3,4,12)
imshow(close);
title({'CLOSE','TRYPIO TETRAGWNO'});

figure;

subplot(3,2,1)
imshow(im);
title('NORMAL');

d1 = imdilate(im,B);

subplot(3,2,2)
imshow(d1);
title('DIALATION B');

e1 = imerode(d1,B);

subplot(3,2,3)
imshow(e1);
title({'DIALATION B','EROSION B'});

e2 =  imerode(e1,B);

subplot(3,2,4)
imshow(e2);
title({'DIALATION B','EROSION B','EROSION B'});

d2 =  imdilate(e2,B);

subplot(3,2,[5 6])
imshow(d2);
title({'DIALATION B','EROSION B','EROSION B','DIALATION B'});