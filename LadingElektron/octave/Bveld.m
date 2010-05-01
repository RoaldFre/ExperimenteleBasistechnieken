x = linspace(-1,1,100);

% veld in het midden
max = 2/1.25^1.5;

B = 1/max*(1+(1/2+x).^2).^-1.5 + 1/max*(1+(1/2-x).^2).^-1.5;

hold on;
plot(x,B);
x= 0.5;plot(ones(30)*x,linspace(0,1.1,30),"o","markersize",1.9);
x=-0.5;plot(ones(30)*x,linspace(0,1.1,30),"o","markersize",1.9);
axis([-1 1 0 1.1]);
hold off;

maakgraph("Bveld", "x/R","B/B(0)", "0.3cm", "700", "500");
