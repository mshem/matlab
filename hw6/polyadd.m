% Michael Shemesh
% Homework 6
% Problem 1
% 04/04/15
function p = polyadd(p1, p2, operation)
%This function performs the operation on the two polynomials and returns
%the resulting polynomial.

% first we need to pad the shorter polynomial
if length(p1)>length(p2)
    while length(p1)>length(p2)
        p2=[0 p2];
    end
elseif length(p2)>length(p1)
     while length(p2)>length(p1)
        p1=[0 p1];
    end
    
end

%now both vectors are the same length. if the operation is 'sub', we
%subtract them, if its 'add' we add them

if strcmp(operation, 'sub')
    p=p1-p2;
elseif strcmp(operation, 'add')
    p=p1+p2;
else
    p=[];
    disp('not a valid operation!');
end


end

