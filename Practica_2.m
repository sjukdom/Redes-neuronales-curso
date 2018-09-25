%{
    Practica 2
    Ramirez Nuñez Daniel
%}

% Implementar la funcion:
% z = x + y, donde:
% x = N(0,1)
% y = N(15,8)

x = rand(1,200000);
y = 8.*randn(1, 200000) + 15;
z = x + y;

% Implementar la funcion:
% z = xy, donde:
% x = N(0,2)
% y = N(10, 6)

x1 = 2.*randn(1, 200000);
y1 = 6.*randn(1, 200000) + 10;
z1 = x1.*y1;

% Histogramas
figure(1)
hist(z, 100); 
title('z = x + y');
grid on;

figure(2)
hist(z1, 100);
grid on;
title('z = xy')