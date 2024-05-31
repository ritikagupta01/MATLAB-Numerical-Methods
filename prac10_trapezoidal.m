% PRACTICAL 10
% Trapezoidal rule
% RITIKA GUPTA MSCMAT54

clear all;
f=input('Enter f(x): ');
a=input('Enter lower limit: ');
b=input('Enter upper limit: ');
n=input('Enter number of sub intervals: ');
h=(b-a)/n;
I=(f(a)+f(b))/2;
for i=1:n-1 
    I=I+ f(a+i*h);
end
Integral = h*I
