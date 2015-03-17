[road,fs] = audioread('road.wav');

%
% This is a framework for our project. 
% We need to make a gui that runs commands.
%




len=size(road,1)/20;
X=0:1:len;
Y=X;
%R = sqrt(X.^2 + Y.^2) + eps;
Z = road(1:len,1);
Z1 = road(1:len,2);

figure
mesh(X,Y,Z)
figure
colormap hsv
surf(X,Y,Z,'FaceColor','interp',...
   'EdgeColor','none',...
   'FaceLighting','gouraud')
daspect([5 5 1])
axis tight
view(-50,30)
camlight left
