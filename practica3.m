clc;
clear all;
close all;

u = @(n) n >= 0;
n = -10:10;
stem(n,u(n),"filled");

x1 = @(n) ((4-abs(n)).*(u(n+3)-u(n-4)));
stem(n, x1(n), "filled", "LineWidth", 2);

h = @(n) (u(n+3)-u(n-4));
stem(n, h(n), "filled", "LineWidth", 2);

cv1 = conv(x1(n),h(n))
n = -20:20;
stem(n, cv1, "filled", "LineWidth", 2);

n = -11:9;
%cv2 = convmtx(x1(n),h(n));

x1_ex = x1(mod(n-3, 7)-3);
stem(n+1, x1_ex, "filled", "LineWidth", 2);

h2 = @(n) n.*(u(n+3)-u(n-4));
%stem(n+1, h2(n), "filled", "LineWidth", 2);
h_ex = h2(mod(n-3, 7)-3);
stem(n+1, h_ex, "filled", "LineWidth", 2);

%cv3 = cconv(x1_ex,h_ex)
grid on;