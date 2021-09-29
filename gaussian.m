a=50;
s=3;
g=fspecial('gaussian',[a a],s);
surf(1:a,1:a,g)
s=9;
g2=fspecial('gaussian',[a a],s);
figure,surf(1:a,1:a,g2);
g1=fspecial('gaussian',[5,5]);
g2=fspecial('gaussian',[5,5],2);
g3=fspecial('gaussian',[11,11],1);
g4=fspecial('gaussian',[11,11],5);
imshow(filter2(g1,c)/256)
figure,imshow(filter2(g2,c)/256)
figure,imshow(filter2(g3,c)/256)
figure,imshow(filter2(g4,c)/256)