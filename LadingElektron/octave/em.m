straal;

x1 = 1./I1; dx1 = dI1./I1;
y1 = r1; dy1 = dr1;

hold on

h1 = errorbar( x1, 1000*y1, dx1, dx1, 1000*dy1, 1000*dy1 );
set(h1,"linestyle","none");
set(h1,"marker",".");

[a1,da1,daua1] = linreg(x1,y1,dy1);

testx1 = linspace(0,1.1,100);

plot( testx1, 1000*a1*testx1 );

q1 = 2*V1/(4/5)^3*(R/(mu*N*a1))^2;
dauq1 = sqrt( (dV1./V1)^2 + (2*daua1)^2 );
dq1 = dauq1*q1;

maakgraph("reeks1","$1/I\\,(A^{-1})$","$r\\,(mm)$", "0.3cm","400","300");

hold off


