% PRACTICAL 3(b)
% LU Decomposition 
% Crout's Method
% RITIKA GUPTA MSCMAT54

clear all;
a=input('Enter coefficient matrix: ');
b=input('Enter column vector: ');
n=length(b);
l=zeros(n);
u=eye(n);
z=zeros(n,1);
x=zeros(n,1);

for i=1:n
    for j=1:n
        if i>=j
            l(i,j)=a(i,j)-l(i,1:j-1)*u(1:j-1,j);
        else
            u(i,j)=(a(i,j)-l(i,1:j-1)*u(1:j-1,j))/l(i,i);
        end
    end
end

%forward substitution for LZ=B
for i=1:n
    z(i)=( b(i) - l(i,1:i-1)*z(1:i-1) )/l(i,i);
end

%backward substitution for UX=Z
for i=n:-1:1
    x(i)=( z(i) - u(i,i+1:n)*x(i+1:n) )/u(i,i);
end

A=a
disp("Using Crout's method for LU Decomposition:");
L=l
U=u
X=x