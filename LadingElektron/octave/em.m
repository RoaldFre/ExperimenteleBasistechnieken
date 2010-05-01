straal;

h1 = errorbar(1./I1,r1,dI1./I1./I1,dI1./I1./I1,dr1,dr1);
set(h1,"linestyle","none");
set(h1,"marker",".");

[a1,da1,daua1] = linreg(1./I1,r1,dr1);

q1 = 2*V1/(4/5)^3*(R/(mu*N*a1))^2;
dauq1 = sqrt( (dV1./V1)^2 + 4 *daua1^2 );

%h2 = errorbar(r2,1./I2,dr2,dr2,dI2./I2./I2,dI2./I2./I2);
%set(h2,"linestyle","none");
%set(h2,"marker",".");
%
%[a2,da2,daua2] = linreg(r2,1./I2,dI2./I2./I2);
%
%q2 = 2*V2/(4/5)^3*(R*a2/(mu*N))^2;
%dauq2 = sqrt( (dV2./V2)^2 + 4 *daua2^2 );
