function t = taylorcos(x)
x=x*pi/180; %this expansion only works for radians so we must convert the input, which is degrees, into radians
E=1;
n=1;
result=1;
temp=0;
while E>0.000001
    temp=result;
    result=result+((((-1)^(n))*(x^(2*n)))/(factorial(2*n)));

    E=abs((result-temp)/temp);
    n=n+1;
end
t=result;

end
