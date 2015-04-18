% Michael Shemesh
% Homework 6
% Problem 2
% 04/04/15

function p = polymult(p1, p2)
% to multiply two polynomials we must multiply all of the terms then
% combine like terms.

% first we distribute the multiplication
len= length(p1)+length(p2)-1;
p=zeros(1,len);
for i=1:length(p1)
%scan through p1 and multiply p2 by the values, shifting each time
p=p+[zeros(1,i-1) p2*p1(i) zeros(1,length(p1)-i)];

end 
end

