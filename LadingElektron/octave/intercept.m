straal;

x = r4;
y = sqrt(V4);

par = polyfit(x,y,1);

b = par(1);
a = par(2);

n = length(x);

R = corrcoef(x,y);

db = b*sqrt(1/(n-2)*(1/R^2-1));
da = db*sqrt(1/n*sum(x.^2));

a
da
