[road,fs] = audioread('road.wav');

%
% This is a framework for our project. 
% We need to make a gui that runs commands.
%

% Audio volume is scaled from -1 to 1




len=size(road,1)/20;
X=0:1:len;
Y=road();
%R = sqrt(X.^2 + Y.^2) + eps;
Z = road(1:len,1);
Z1 = road(1:len,2);

figure
plot(X,Y,)

