%Bisection Method

clear all;
f = input('Enter f(x) = ');
a = input('Enter value for a: ');
b = input('Enter value for b: ');

n = input('Enter maximum number of iterations: ');

if sign(f(a)) == sign(f(b))
    error('Intermediate value theorem not satisfied.')
end

p1=a; p2=b;
for i=1:200
    c=(a+b)/2;
    if f(c)>0
        b=c;
    else
        a=c;
    end
end
a=p1; b=p2; r=c;
for i=1:n
    c=(a+b)/2;
    er(i)=f(c)-f(r);
    if f(c)>0
        b=c;
    else
        a=c;
    end
end

fprintf('Approximate root of the given equation after %d iterations is %f',n,c);

plot(er);
xlabel('Number of iterations');
ylabel('Error');
title('Error vs Number of iterations for Bisection Method');