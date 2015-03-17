
% Author: Michael Shemesh
% Date: 3/14/2015
% 
% Homework 5
% Problem 1
function change()
% This function returns change to you.
    while (true)
        %generate a number under $20
        x=randi(2000)/100;
        %initialize the denominations
        denominations = [0.01 0.05 0.1 0.25 1.00 5.00 10.00];
        sprintf('Price is $ %0.2f', x)
        y=input('Please pay with 1, 5, 10, or 20. ');
        z=y-x;
        while z<0 
            %if the differece is negative, the customer did not pay
            %enough.
            sprintf('I still need %0.2f',-z)
            y=y+input('Please pay with 1, 5, 10, or 20.')
            z=y-x
        end
        %initialize the result
        result=[0 0 0 0 0 0 0];
    
        for i=length(denominations):-1:1
            while z>=denominations(i)
                result(i)=result(i)+1;
                z=z-denominations(i);
            end    
        end
        %initialize the names
        names= {'pennies ' 'nickels ' 'dimes ' 'quarters ' 'ones ' 'fives ' 'tens'};

        sprintf('Change is %i %s,  %i %s, %i %s,  %i %s, %i %s,  %i %s, and %i %s.  Next Item. ',result(1),char(names(1)),result(2),char(names(2)),result(3),char(names(3)),result(4),char(names(4)),result(5),char(names(5)),result(6),char(names(6)),result(7),char(names(7)))
    end
    
    
end

