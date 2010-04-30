x = linspace(-1,1,100);

% veld in het midden
max = 2/1.25^1.5;

B = 1/max*(1+(1/2+x).^2).^-1.5 + 1/max*(1+(1/2-x).^2).^-1.5;

plot(x,B);
axis([-1 1 0 1.1]);
