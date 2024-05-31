% PRACTICAL 9
% Simpson's rule for Numerical Integration
% using simpson's 1/3 rule
% RITIKA GUPTA MSCMAT54

clear all;
f=input('Enter f(x): ');
a=input('Enter lower limit: ');
b=input('Enter upper limit: ');
n=input('Enter number of sub intervals (even): ');
if rem(n,2)==0
    h=(b-a)/n;
    s=f(a)+f(b);
    for i=1:2:n-1 
        s=s+ 4*f(a+i*h);
    end
    for i=2:2:n-2
        s=s+ 2*f(a+i*h);
    end
    Integral =(h/3)*s
else
    disp('n not an even number.');
end

