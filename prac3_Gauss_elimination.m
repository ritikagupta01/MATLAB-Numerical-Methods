% PRACTICAL 3(a)
% Gauss Elimination Method
% RITIKA GUPTA MSCMAT54

clear all;
a=input('Enter coefficient matrix: ');
b=input('Enter column vector: ');
aug=[a b];
Augmented_form=aug;
n=length(b);

%reducing to echelon form
for j=1:n-1
    for i=j+1:n
        if aug(j,j)==0  %partial pivoting
            t=aug(j,:);aug(j,:)=aug(i,:);
            aug(i,:)=t;
        else
            m=aug(i,j)/aug(j,j);
            aug(i,:)=aug(i,:)-m*aug(j,:);
        end
    end
end

x=zeros(n,1);

%backward substitution
for i=n:-1:1
    x(i)=( aug(i,n+1) - aug(i,i+1:n)*x(i+1:n) )/aug(i,i);
end

Augmented_form
Echelon_form=aug
disp('By Gauss Elimination method, '); x