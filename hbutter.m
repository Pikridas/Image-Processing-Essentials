function out=hbutter(im,d,n)
% HBUTTER(IM,D,N) creates a high-pass Butterworth filter
% of the same size as image IM, with cutoff D, and order N
%
% Use:
% x=imread('cameraman.tif');
% l=hbutter(x,25,2);
%
height=size(im,1);
width=size(im,2);
[x,y]=meshgrid(-floor(width/2):floor((width-1)/2),-floor(height/2): ...
floor((height-1)/2));
out= 1 - (1./(1+(sqrt(2)-1)*((x.^2+y.^2)/d^2).^n));