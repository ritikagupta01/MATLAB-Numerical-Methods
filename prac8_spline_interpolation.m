% PRACTICAL 8
% Splines method for interpolation
% cubic spline method
% RITIKA GUPTA MSCMAT54

clear all;
x=input('Enter values of x: ');
y=input('Enter y=f(x)= ');
n=length(x);
query=input('Enter values to find interpolated polynomial for: ');
ycurve=spline(x,y,query);
ycurve
plot(query,ycurve,x,y,'o')