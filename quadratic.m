function X = quadratic(A,B,C)
%MIchael Shemesh Quadratic calculator
D = B^2- 4.0*A*C
if D<0
    
   'No real roots.'
   
end
    %for each case, the math remains the same
    X(1)=(-B+sqrt(D))/(2.0*A);
    X(2)=(-B-sqrt(D))/(2.0*A);

end
