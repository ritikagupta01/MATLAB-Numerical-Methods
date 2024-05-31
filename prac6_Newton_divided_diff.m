% PRACTICAL 6
% Newton Divided Difference Method
% RITIKA GUPTA MSCMAT54

x=input('Enter values of x = ');
y=input('Enter corresponding f(x) = ');
p0=input('Enter point of approximation: ');
n=length(x);
D=zeros(n); %Divided difference table
D(:,1)=y; %First column of DD table set as f(x)

for j=2:n
    for i=n:-1:j
        D(i,j) = (D(i,j-1) - D(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
Divided_Difference_Table = [x D]

P=D(n,n);
for k=n-1:-1:1
    P=conv(P,poly(x(k)));   %poly(a) generates polynomial (x-a)
    m=length(P);
    P(m) = P(m) + D(k,k);
end
disp('Coefficients of the interpolated polynomial are:'); P
%conv(u,v) is convolution of u,v (polynomial multiplication)

fprintf('\nf(x) = ');
for i=1:n
    if i==n
        fprintf('(%.4f )',P(i));
    else
        fprintf('(%.4f x^%d)+',P(i),n-i);   % %.2f prints 2 decimal places
    end
end

%approximating polynomials at a point
fp=polyval(P,p0);
fprintf('\n\nf(%f) = %f\n',p0,fp);

%plotting the interpolated polynomial
X=linspace(x(1),x(n),100);
Y=polyval(P,X);
plot(X,Y,[x;p0],[y;fp],'o') 

    