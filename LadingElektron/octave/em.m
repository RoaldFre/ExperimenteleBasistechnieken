straal;

x1 = 1./I1; dx1 = dI1./I1;
y1 = r1; dy1 = dr1;

hold on

h1 = errorbar( x1, y1, dx1, dx1, dy1, dy1 );
set(h1,"linestyle","none");
set(h1,"marker",".");

[a1,da1,daua1] = linreg(x1,y1,dy1);

testx1 = linspace(0,1.1,100);

plot( testx1, a1*testx1 );

q1 = 2*V1/(4/5)^3*(R/(mu*N*a1))^2;
dauq1 = sqrt( (dV1./V1)^2 + (2*daua1)^2 );
dq1 = dauq1*q1;

hold off

%h2 = errorbar(r2,1./I2,dr2,dr2,dI2./I2./I2,dI2./I2./I2);
%set(h2,"linestyle","none");
%set(h2,"marker",".");

%[a2,da2,daua2] = linreg(r2,1./I2,dI2./I2./I2);

%q2 = 2*V2/(4/5)^3*(R*a2/(mu*N))^2;
%dauq2 = sqrt( (dV2./V2)^2 + 4 *daua2^2 );
