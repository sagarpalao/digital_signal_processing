// Continous signal
figure (1);
a = 1;
f = 1;
fs = 50;
n = 0 : fs - 1;
x = a * sin ( 2 * %pi * ( f / fs ) * n );
xlabel ("time index");
ylabel ("amplitude");
title ('Continous time signal');
plot ( n , x );

// Sampling Signal
figure (2);
xlabel ("time index");
ylabel ("amplitude");
title ('Sample signal');
plot2d3 ( n , x );

//Reconstruction signal
figure(3);
p = 1;
for k = 2 : 5 : 17
  fs = k;
  n = 0 : fs - 1;
  x = a * sin ( 2 * %pi * ( f / fs ) * n );
  subplot ( 1 , 4 , p);
  plot ( n , x );
  plot2d3 ( n , x );
  p = p + 1;
end

bps = 8;
sps = 50;
br = bps * sps;
disp ( br );
