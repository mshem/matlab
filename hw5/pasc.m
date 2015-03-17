
% Author: Michael Shemesh
% Date: 3/15/2015
% 
% Homework 5
% Problem 3


function p = pasc(n)
% creates a pascal matri. could also call built in pascal(n)
    m=ones(n,n);
    prev=0;
    for i=2:n
        for j=2:n
            m(i,j)=m(i-1,j)+m(i,j-1)
        end
    end

end
% output of pasc(4):
%     1     1     1     1
%     1     2     3     4
%     1     3     6    10
%     1     4    10    20

%output of pasc(7)
%    1     1     1     1     1     1     1
%    1     2     3     4     5     6     7
%    1     3     6    10    15    21    28
%    1     4    10    20    35    56    84
%    1     5    15    35    70   126   210
%    1     6    21    56   126   252   462
%    1     7    28    84   210   462   924
