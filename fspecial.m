x1 = fspecial('average',[5,7]);
x2 = fspecial('average',5);
c=imread('cameraman.tif');
f1=fspecial('average');
cf1=filter2(f1,c);
figure,imshow(c),figure,imshow(cf1/255)