% PRACTICAL 7
% Lagrange method for interpolation
% RITIKA GUPTA MSCMAT54

clear all;
x=input('Enter values of x: ');
y=input('Enter corresponding f(x): ');
p0=input('Enter point of approximation: ');
n=length(x);
L=zeros(n);

for i=1:n
    v=1;
    for j=1:n
        if i~=j
            v=conv(v,poly(x(j)))/(x(i)-x(j));
        end
    end
    L(i,:)=v*y(i);
end
L  %row i represents L_i*y(i)
P=sum(L);
for i=1:n
    if i==n
        fprintf('(%.2f)',P(i));
    else
        fprintf('(%.2fx^%d)+',P(i),n-i);   % %.2f prints 2 decimal places
    end
end

%approximating polynomials at a point
fp=polyval(P,p0);
fprintf('\nf(%f) = %f',p0,fp);

%plotting the interpolated polynomial
X=linspace(x(1),x(n),100);
Y=polyval(P,X);
plot(X,Y,[x;p0],[y;fp],'o') 
