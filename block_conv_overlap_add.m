clc;
clear all;
x = [1 -1 2 -2 3 -3 4 -4]
h = [-1 1]
n1 = length(x);
n2 = length(h);
N = n1+n2-1;
y = zeros(1,N);
h1 = [h zeros(1,n2-1)];
n3 = length(h1);
y = zeros(1,N+n3-n2);
H = fft(h1);
for i = 1:n2:n1
if i<=(n1+n2-1)
x1 = [x(i:i+n3-n2) zeros(1,n3-n2)];
else
x1 = [x(i:n1) zeros(1,n3-n2)];
end
x2 = fft(x1);
x3 = x2.*H;
x4 = round(ifft(x3));
if (i==1)
    y(1:n3) = x4(1:n3);
else
y(i:i+n3-1) = y(i:i+n3-1)+x4(1:n3);
end
end

m=0:n1-1;
subplot(3,1,1);
plot2d3(m,x(1:n1));
m=0:n2-1;
title('Input Sequence x(n)');
xlabel('Time --->');
ylabel('Amplitude --->');
subplot(3,1,2);
plot2d3(m,h(1:n2));
m=0:N-1
title('Input Sequence h(n)');
xlabel('Time --->');
ylabel('Amplitude --->');
subplot(3,1,3);
disp('Block Convolution Using Overlap Add Method = ');
disp(y(1:N));
plot2d3(m,y(1:N));
title('Block Convolution Using Overlap Add Method');
xlabel('Time --->');
ylabel('Amplitude --->');
