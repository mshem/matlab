
function ellipse(alpha,e)
% r= alpha(1-e^2)/(1-ecos@)
% plot the ellipse


a=(alpha*(1-e^2));
X=[];
Y=[];

for i=0.0:0.001:2*pi %important to have enough values for theta, if there are not enough the plot will not look good
    r=a/(1-e*cos(i));
    %convert polar to cartesian
   y=r*sin(i);
    Y=[Y; y];
     X=[X; r*cos(i)];
end


plot(X,Y)
axis equal
end