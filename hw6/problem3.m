% Michael Shemesh
% Homework 6
% Problem 3
% 04/04/15
x = [2 5 6 8 9 13 15];
y = [7 8 10 11 12 14 15];
xp = 2:15;
hold on
plot(x,y, 'ro') % plot the given data
p=polyfit(x, y, 1); %get the best polynomial,
% with n=1 so it will be in y=mx+b form.
m=p(1);
b=p(2);
yp=m*xp+b;
plot(xp, yp) % plot usibg mx+ b 
yp=polyval(p, xp);
plot(xp, yp, 'co') % plot using polyval, should be same at first plot.
