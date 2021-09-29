function[x] = myEdge(image,filter)
x = imread(image);
if strcmp(filter,'roberts') == 1
%DHMIOYRGIA PINAKA X1.
    x1 = [1 0 0; 0 -1 0; 0 0 0];
%DHMIOYRGIA FILTROU EIKONAS ME XRHSH TOY PINAKA X1.
    xx1 = filter2(x1,x);
%DHMIOYRGIA PINAKA X2.
    x2 = [0 1 0; -1 0 0; 0 0 0];
%DHMIOYRGIA FILTROU EIKONAS ME XRHSH TOY PINAKA X2.
    xx2 = filter2(x2,x);
%SYNENOWSH TWN FILTRWN KAI YPSWSH TOUS STO TETRAGWNO.
    rob = sqrt(xx1.^2 + xx2.^2);
%XRHSH EDGE ME METHODO ROBERTS GIA LOGOUS SIGKRISHS.
    rob1 = edge(x,'roberts');
%EMFANISI THS EIKONAS ME XRISI EDGE
    subplot(1,2,1)
    imshow(rob1);
    title('ORIGINAL ROBERT EDGE DETECTION');
%EMFANISI THS EIKONAS XWIRIS XRISI EDGE
%ME XRISI TOY FILTROY POU FTIAXSAME PRIN.
    subplot(1,2,2)
    imshow(rob/255);
    title('CUSTOM ROBERT EDGE DETECTION');
end
if strcmp(filter,'sobel') == 1
%DHMIOYRGIA PINAKA X1.
    x1 = [-1 0 1; -2 0 2; -1 0 1];
%DHMIOYRGIA FILTROU EIKONAS ME XRISI TOY PINAKA X1.
    xx1 = filter2(x1,x);
%DHMIOYRGIA PINAKA X2.
    x2 = [-1 -2 -1; 0 0 0; 1 2 1];
%DHMIOYRGIA FILTROU EIKONAS ME XRISI TOY PINAKA X2.
    xx2 = filter2(x2,x);
%SYNENOWSH TWN FILTRWN KAI YPSWSH TOUS STO TETRAGWNO.
    sob = sqrt(xx1.^2 + xx2.^2);
%XRHSH EDGE ME METHODO ROBERTS GIA LOGOUS SIGKRISHS.  
    sob1 = edge(x,'Sobel');
%EMFANISI THS EIKONAS ME XRISI EDGE
    subplot(1,2,1)
    imshow(sob1);
    title('ORIGINAL SOBEL EDGE DETECTION');
%EMFANISI THS EIKONAS XWIRIS XRISI EDGE
%ME XRISI TOY FILTROY POU FTIAXSAME PRIN.
    subplot(1,2,2)
    imshow(sob/255);
    title('CUSTOM SOBEL EDGE DETECTION');
end