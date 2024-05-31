% PRACTICAL 5
% Power method to determine eigenvalue
% RITIKA GUPTA MSCMAT54

clear all;
A=input('Enter matrix A: ');
v=input('Enter the initial vector: ');
tol=input('Enter the eroor tolerance: ');
n=input('Enter maximum number of iterations: ');
v0=v;

for i=1:n
    v=A*v0;
    m=max(abs(v));  
    if m==max(v)
        m=m;
    else
        m=-m;
    end
    v=v/m;
    if abs(v-v0)<tol
        fprintf('\nAfter %d iterations,\n',i-1);
        break
    else
        v0=v; 
    end
end

fprintf('By Power method,\n');
Dominant_Eigenvalue=m
Corresponding_Eigenvector=v