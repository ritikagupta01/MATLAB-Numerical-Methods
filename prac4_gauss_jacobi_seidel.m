% PRACTICAL 4
% GAUSS JACOBI, GAUSS SEIDEL METHOD
% RITIKA GUPTA MSCMAT54

clear all;
a=input('Enter coefficient matrix: ');
b=input('Enter column vector: ');
num=input('Enter number of iterations to perform: ');
n=length(b);
x=zeros(n,1);
p=input('Enter initial approximation of X: ');
p0=p;

Augmented_form = [a b]

%Gauss Jacobi
disp('BY GAUSS JACOBI METHOD');
for j=1:num
    for i=1:n
        x(i)=b(i)/a(i,i)- (a(i,[1:i-1,i+1:n])*p([1:i-1,i+1:n]))/a(i,i);
    end
    fprintf('%dth iteration:',j); x'
    p=x;
end

%Gauss Seidel
clear x,p;
p=p0;x=zeros(n,1); 
disp('BY GAUSS SEIDEL METHOD');
for j=1:num
    for i=1:n
        x(i)=b(i)/a(i,i)- (a(i,[1:i-1,i+1:n])*p([1:i-1,i+1:n]))/a(i,i);
        p(i)=x(i);
    end
    fprintf('%dth iteration:',j); x'
end


