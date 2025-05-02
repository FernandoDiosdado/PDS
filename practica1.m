clc;
clear all;
close all;

u = @(t) t >= 0;
%t = -2 : 0.25 : 2;
%plot(t, u(t));

delta = @(n) n==0;

tren_pulsos = @(n, k) (mod(n, k) == 0);

% Ejercicio 1
%a.
n = 0 : 10;
x1 = 5*cos(pi*n/2);
figure 1;
stem(n, x1,'filled','LineWidth', 2);
axis([-1 11 -6 6]);
grid on;
disp('Tabular de E1 a):');
disp([n; x1]);

%b.
x2 = 5*cos(pi*n/5);
figure 2;
stem(n, x2,'filled','LineWidth', 2);
axis([-1 11 -6 6]);
grid on;
disp('Tabular de E1 b):');
disp([n; x2]);

% Ejercicio 2
%a.
n = -5 : 5;
x3 = (1-abs(0.25*n)).*(u(0.25*n+1)-u(0.25*n-1));
figure 3;
stem(n, x3,'filled','LineWidth', 2);
axis([-6 6 0 1.2]);
grid on;
disp('Tabular de E2 a):');
disp([n; x3]);

%b.
x4 = (1-abs(0.5*n)).*(u(0.5*n+1)-u(0.5*n-1));
figure 4;
stem(n, x4,'filled','LineWidth', 2);
axis([-6 6 0 1.2]);
grid on;
disp('Tabular de E2 b):');
disp([n; x4]);

% Ejercicio 3
%c.
n = -2:10;
x5 = 4*exp(-0.1875*n).*u(0.25*n);
figure 5;
stem(n, x5,'filled','LineWidth', 2);
axis([-3 11 0 5]);
grid on;
disp('Tabular de E3 c):');
disp([n; x5]);

%d.
x6 = 4*exp(-0.375*n).*u(0.5*n);
figure 6;
stem(n, x6,'filled','LineWidth', 2);
axis([-3 11 0 5]);
grid on;
disp('Tabular de E3 d):');
disp([n; x6]);

% Ejercicio 4
%a.
n = -5:5;
x7 = 5*delta(n);
figure 7;
stem(n, x7,'filled','LineWidth', 2);
axis([-6 6 0 6]);
grid on;
disp('Tabular de E4 a):');
disp([n; x7]);

%b.
x8 = delta(n+2);
figure 8;
stem(n, x8,'filled','LineWidth', 2);
axis([-6 6 0 1.2]);
grid on;
disp('Tabular de E4 b):');
disp([n; x8]);

% Ejercicio 5
%a.
n = -5:5;
x9 = tren_pulsos(n, 2);
figure 9;
stem(n, x9,'filled','LineWidth', 2);
axis([-6 6 0 1.2]);
grid on;
disp('Tabular de E5 a):');
disp([n; x9]);

%b.
x10 = tren_pulsos(n, 4);
figure 10;
stem(n, x10,'filled','LineWidth', 2);
axis([-6 6 0 1.2]);
grid on;
disp('Tabular de E5 b):');
disp([n; x10]);

% Ejercicio 6
%a.
x11 = 5*u(n);
figure 11;
stem(n, x11,'filled','LineWidth', 2);
axis([-6 6 0 6]);
grid on;
disp('Tabular de E6 a):');
disp([n; x11]);

%b.
x12 = u(n+2);
figure 12;
stem(n, x12,'filled','LineWidth', 2);
axis([-6 6 0 1.2]);
grid on;
disp('Tabular de E6 b):');
disp([n; x12]);

% Ejercicio 7
%a.
n = 0:10;
x13 = (0.75).^n;
figure 13;
stem(n, x13,'filled','LineWidth', 2);
axis([-1 11 0 1.2]);
grid on;
disp('Tabular de E7 a):');
disp([n; x13]);

%b.
n = 0:10;
x14 = (-0.75).^n;
figure 14;
stem(n, x14,'filled','LineWidth', 2);
axis([-1 11 -1.2 1.2]);
grid on;
disp('Tabular de E7 b):');
disp([n; x14]);

% Ejercicio 8
%a.
n = 0:8;
x15 = 5*sin(pi*n/4);
figure 15;
stem(n, x15,'filled','LineWidth', 2);
axis([-1 9 -6 6]);
grid on;
disp('Tabular de E8 a):');
disp([n; x15]);

%b.
x16 = 5*cos(pi*n/4);
figure 16;
stem(n, x16,'filled','LineWidth', 2);
axis([-1 9 -6 6]);
grid on;
disp('Tabular de E8 b):');
disp([n; x16]);
