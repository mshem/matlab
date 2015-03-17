function r = reciprofibo(n)
r=2;
a=1;
b=1;
c=0;
for i=2:n
    
   r=r+1/(b+a);
   c=a;
   a=a+b;
   b=c;
end

end