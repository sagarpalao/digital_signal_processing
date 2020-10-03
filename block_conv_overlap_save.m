clc;
clear all;
x = [1 -1 2 -2 3 -3 4 -4]
h = [-1 1 0]
n1 = length(x);
n2 = length(h);
N = n1+n2-1;
h1 = [h zeros(1,N-n1)];
n3 = length(h1);
y = zeros(1,N);
x1 = [zeros(1,n3-n2) x zeros(1,n3)];
H = fft(h1);
for i = 1:n2:N
y1 = x1(i:i+(2*(n3-n2)));
y2 = fft(y1);
y3 = y2.*H;
y4 = round(ifft(y3));
y(i:(i+n3-n2)) = y4(n2:n3);
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
m=0:N-1;
title('Input Sequence h(n)');
xlabel('Time --->');
ylabel('Amplitude --->');
subplot(3,1,3);
disp('Block Convolution Using Overlap Save Method = ');
disp(y(1:N));
plot2d3(m,y(1:N));
title('Block Convolution Using Overlap Save Method');
xlabel('Time --->');
ylabel('Amplitude --->');
