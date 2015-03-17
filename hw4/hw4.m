% Author: Michael Shemesh

format long
%Problem 1
a=taylorcos(35)
error=cos(35*pi/180)-a
b=taylorsin(125)
error=sin(125*pi/180)-b

%Problem 2
c=pie(100)
error=pi-c
d=pie(10000)
error=pi-d
e=pie(1000000)
error=pi-e

%Problem 3
f=reciprofibo(10)
g=reciprofibo(50)
h=reciprofibo(100)
