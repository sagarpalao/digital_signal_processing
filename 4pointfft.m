clc;
x=[1 2 3 4];
N=length(x);
X=zeros(x);w=[1 1 1 1;1 -%i -1 %i;1 -1 1 -1;1 %i -1 -%i];
for k=0:N-1
for n=0:N-1
X(k+1)=X(k+1)+x(n+1)*w(k+1,n+1);
end;
end;
m = 0:N-1;
subplot(2,1,1);
plot2d3(m,abs(X));
disp(abs(X));
title('magnitude spectrum');
subplot(2,1,2);
plot2d3(m,atan(imag(X),real(X)));
disp(atan(imag(X),real(X)));
title('phase spectrum');
