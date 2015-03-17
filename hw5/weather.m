
% Author: Michael Shemesh
% Date: 3/15/2015
% 
% Homework 5
% Problem 2

function weather()
% This function generates weather data
    head={'hour' 'windspeed' 'visibility'}
    m=[];
    for i = 0:23
        m=[m; i, randi(70), randi(100)/100]
    end
    
    csvwrite('stromtract.dat',m)
    
    %blizzard condition: winds of 30 mph or more and snow leading to
    %visibility of 0.5 miles or less, for at laest 4 hours
        blizz=false;
        
     load stromtract.dat
     [r c] = size(stromtract);
     counter=0;
     hour = 0;
     for i=1:r
         if stromtract(i,2) > 30 && stromtract(i,3) < 0.5
             counter=counter+1;
         else
             counter=0;
         end
         if counter >= 4
             hour=i;
             blizz = true;
         else
         end
     end
     
     
     if blizz 
       fprintf('let it snow, blizzard conditions from %i to %i \n', (hour-4), hour);
     else
        display('No blizzard condition this day!');
     end
end