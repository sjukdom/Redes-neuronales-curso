%{
Practica 3
%}

x = [0 1 2 3 4];         % Entrada
y = [0 2 4 8 16];        % Salida

m = 5;                   % Numero de muestras
a = 0;                   % Parametro a optimizar
J = [];                  % Funcion de costo


for a = 1:0.1:5
    J(end+1) = 1/(2*m).*sum(y-a*x).^2;
end

subplot(1,2,1);
plot(1:0.1:5, J);
title('Funcion de costo J(a)');
xlabel('a');
ylabel('J(a)');
grid on;
subplot(1,2,2);
scatter(x, y, 'r');
hold on;
plot(3*(0:15), 0:15, 'r');
plot(2*(0:15), 0:15, 'k');
plot(1*(0:15), 0:15, 'g');
legend('datos','y=3x','y=2x','y=x');
title('Modelo lineal');
xlabel('x');
ylabel('y(x) = ax');
grid on;