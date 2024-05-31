%Newton Raphson Method
%RITIKA GUPTA MSCMAT54

clear all;
f = @(x) 2*x^3 + 2*x - 1;
df=@(x) 6*x^2 + 2;
x = input('Enter value for x0: ');
n = input('Enter maximum number of iterations: ');

x0=x;
for i=1:200
    x1=x- f(x)/df(x);
    x=x1;
end
root=x; x=x0;
for i=1:n
    x1=x- f(x)/df(x);
    x=x1;
    er(i)=x1-root;
end

fprintf('Approximate root of the given equation after %d iterations is %f',n,root);

plot(er);
xlabel('Number of iterations');
ylabel('Error');
title('Error vs Number of iterations for NR Method');