f=fspecial('laplacian');
cf=filter2(f,c);
imshow(cf/100);
title('Laplacian filter');
f1=fspecial('log');
cf1=filter2(f1,c);
figure,imshow(cf1/100);
title('Laplacian of Gaussian (log) filtering');