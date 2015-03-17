% Author: Michael Shemesh

function p = pie(n)
  p=0;
  for i=1:n
  % power series of pi
    p=p+1/(i^2);
  end
  p=sqrt(6*p);
end
