straal;

width="500";
height="400";
yrule="0.3cm";
ylabel="$r\\,(\\textrm{mm})$";

x1 = 1./I1; dx1 = dI1./I1./I1;
y1 = r1; dy1 = dr1;

clf
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

maakgraph("reeks1","$1/I\\,(A^{-1})$",ylabel,yrule,width,height);

hold off

x2 = 1./I2; dx2 = dI2./I2./I2;
y2 = r2; dy2 = dr2;

clf
hold on

h2 = errorbar( x2, 1000*y2, dx2, dx2, 1000*dy2, 1000*dy2 );
set(h2,"linestyle","none");
set(h2,"marker",".");

[a2,da2,daua2] = linreg(x2,y2,dy2);

testx2 = linspace(0,1.1,100);

plot( testx2, 1000*a2*testx2 );

q2 = 2*V2/(4/5)^3*(R/(mu*N*a2))^2;
dauq2 = sqrt( (dV2./V2)^2 + (2*daua2)^2 );
dq2 = dauq2*q2;

maakgraph("reeks2","$1/I\\,(A^{-1})$",ylabel,yrule,width,height);

hold off


x3 = sqrt(V3); dx3 = dV3./sqrt(V3);
y3 = r3; dy3 = dr3;

clf
hold on

h3 = errorbar( x3, 1000*y3, dx3, dx3, 1000*dy3, 1000*dy3 );
set(h3,"linestyle","none");
set(h3,"marker",".");

[a3,da3,daua3] = linreg(x3,y3,dy3);

testx3 = linspace(0,20,100);

plot( testx3, 1000*a3*testx3 );

q3 = 2/(4/5)^3*(R/(mu*N*I3*a3))^2;
dauq3 = 2*sqrt( dI3/I3^2 + daua3^2 );
dq3 = dauq3*q3;

maakgraph("reeks3","$\\sqrt{V}\\,(V^{1/2})$",ylabel,yrule,width,height);

hold off

x4 = sqrt(V4); dx4 = dV4./sqrt(V4);
y4 = r4; dy4 = dr4;

clf
hold on

h4 = errorbar( x4, 1000*y4, dx4, dx4, 1000*dy4, 1000*dy4 );
set(h4,"linestyle","none");
set(h4,"marker",".");

[a4,da4,daua4] = linreg(x4,y4,dy4);

testx4 = linspace(0,20,100);

plot( testx4, 1000*a4*testx4 );

q4 = 2/(4/5)^3*(R/(mu*N*I4*a4))^2;
dauq4 = 2*sqrt( dI4/I4^2 + daua4^2 );
dq4 = dauq4*q4;

maakgraph("reeks4","$\\sqrt{V}\\,(V^{1/2})$",ylabel,yrule,width,height);

hold off
