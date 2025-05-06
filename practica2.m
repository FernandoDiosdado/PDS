clc;
clear all;
close all;

u = @(n) n >= 0;
n = -10:10;
%stem(n,u(n),"filled");

x = @(n) n.*(u(n+5)-u(n-6));
n = -12:12;
%stem(n, x(n), "filled", "LineWidth", 2); % variar valores
%stem(n, x(n+5), "filled", "LineWidth", 2);
%stem(n, x(n-5), "filled", "LineWidth", 2);
%stem(n, x(-n+5), "filled", "LineWidth", 2);
%stem(n, x(-n-5), "filled", "LineWidth", 2);

x1 = @(n) (6-abs(n)).*(u(n+5)-u(n-6));
%stem(n, x1(n), "filled", "LineWidth", 2);

x2 = @(n) (u(n+5)-u(n-1))-1.*(u(n-1)-u(n-6));
%stem(n, x2(n), "filled", "LineWidth", 2);

n = -16:16;
%stem(n, x1(mod(n-6, 11)-5), "filled", "LineWidth", 2)
n = -12:12;
%stem(n, x2(2*n), "filled", "LineWidth", 2);
%stem(n, x1(1-n)+x2(n+1), "filled", "LineWidth", 2);
%stem(n, x1(n-1).*x2(n+1), "filled", "LineWidth", 2);

three = @(n) (3-abs(n-3)).*(u(n)-u(n-7))
%stem(n, three(n), "filled", "LineWidth", 2);

f_par = @(n) (three(n) + three(-n)) / 2;
%stem(n, f_par(n), "filled", "LineWidth", 2);

f_impar = @(n) (three(n) - three(-n)) / 2;
%stem(n, f_impar(n), "filled", "LineWidth", 2);

n = -18:18;
f_4 = @(n) (cos(2*pi*n/11));
%stem(n, f_4(n/2), "filled", "LineWidth", 2);
%stem(n, f_4(2*n), "filled", "LineWidth", 2);

n = -2:12;
f_5 = @(n) (cos(2*pi*n/10));
%stem(n, f_5(n), "filled", "LineWidth", 2);

y1 = @(n) ((f_5(n).*(-1).^(n)).*(u(n)-u(n-11)));
%stem(n, y1(n), "filled", "LineWidth", 2);
y2 = @(n) (cos((2*pi*n/5)+f_5(n)).*(u(n)-u(n-11)));
%stem(n, y2(n), "filled", "LineWidth", 2);
grid on;