clc;
clear all;
close all;

u = @(n) n >= 0;
n = -10:10;
%stem(n,u(n),"filled");

x = @(n) n.*(u(n+5)-u(n-6));
n = -12:12;
%stem(n, x(-n-1), "filled", "LineWidth", 2); % variar valores
grid on;

x1 = @(n) (6-abs(n)).*(u(n+5)-u(n-6));
stem(n, x1(n), "filled", "LineWidth", 2);

x2 = @(n) (u(n+5)-u(n-1))-1.*(u(n-1)-u(n-6));
stem(n, x2(n), "filled", "LineWidth", 2);

three_a = @(n) (3-abs(n-3)).*(u(n)-u(n-7))
%stem(n, three_a(n), "filled", "LineWidth", 2);

f_par = @(n) (three_a(n) + three_a(-n)) / 2;
%stem(n, f_par(n), "filled", "LineWidth", 2);

f_impar = @(n) (three_a(n) - three_a(-n)) / 2;
%stem(n, f_impar(n), "filled", "LineWidth", 2);