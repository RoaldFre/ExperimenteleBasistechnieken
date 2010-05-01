straal;

q1 = 2*V1*R^2./( (4/5)^3 * ( mu*N*I1.*r1 ).^2 );
dauq1 = sqrt( (dV1./V1).^2 + (2*dI1./I1).^2 + (2*dr1./r1).^2 );
dq1 = dauq1 .* q1;

q2 = 2*V2*R^2./( (4/5)^3 * ( mu*N*I2.*r2 ).^2 );
dauq2 = sqrt( (dV2./V2).^2 + (2*dI2./I2).^2 + (2*dr2./r2).^2 );
dq2 = dauq2 .* q2;

q3 = 2*V3*R^2./( (4/5)^3 * ( mu*N*I3.*r3 ).^2 );
dauq3 = sqrt( (dV3./V3).^2 + (2*dI3./I3).^2 + (2*dr3./r3).^2 );
dq3 = dauq3 .* q3;

q4 = 2*V4*R^2./( (4/5)^3 * ( mu*N*I4.*r4 ).^2 );
dauq4 = sqrt( (dV4./V4).^2 + (2*dI4./I4).^2 + (2*dr4./r4).^2 );
dq4 = dauq4 .* q4;

q = [q1;q2;q3;q4];
dq= [dq1; dq2; dq3; dq4];
tabel = [data(:,1:4),data(:,5)*1000,data(:,6)*1000,q*1e-9,dq*1e-9];

tabel = [tabel(:,1) roundsd(tabel(:,2),1) tabel(:,3) roundsd(tabel(:,4),1) tabel(:,5) roundsd(tabel(:,6),1) tabel(:,7) roundsd(tabel(:,8),1) ];

save "data.txt" tabel
