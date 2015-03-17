

% Author: Michael Shemesh
% Date: 3/15/2015
% 
% Homework 5
% Problem 4

function interest(rate, years, deposit)
% figures out monthly intrests for some years
% how would this code be vectorized?
months=years*12;
depositannual=deposit;
for i=1:months
    deposit=deposit*(1+rate);
end

for i=1:years
    depositannual=depositannual*(1+rate*12);
end

sprintf('Your new balance is $%0.2f monthly, and $%0.2f anually. ',deposit,depositannual)
% result of interest(0.01, 10, 1000):
% Your new balance is $3300.39 monthly, and $3105.85 anually. 
end