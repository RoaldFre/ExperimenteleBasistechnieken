R = 0.15;
N = 130;
mu = 4*pi*10^-7;
qtheo = 1.75882017e11;

%V	dV	I	dI	r				dr
data1 = [
175	3	3.00	0.05	(17.15-13.60)/200		0.0002
175	3	2.50	0.04	(17.55-13.05)/200		0.0002
175	3	2.45	0.04	(17.60-13.05)/200		0.0002
175	3	2.00	0.03	(18.10-12.60)/200		0.0002
175	3	1.85	0.03	(18.40-12.25)/200		0.0002
175	3	1.50	0.03	(18.85-11.70)/200		0.0002
175	3	1.00	0.03	(20.90- 9.50)/200		0.0002
];

V1 = 175;
dV1= 3;
I1 = data1(:,3);
dI1= data1(:,4);
r1 = data1(:,5);
dr1= data1(:,6);

data2 = [
250	4	1.10	0.03	(21.40- 9.15)/200		0.0002
250	4	1.30	0.03	(20.55-10.05)/200		0.0002
250	4	1.50	0.03	(19.70-10.85)/200		0.0002
250	4	1.70	0.03	(18.90-11.35)/200		0.0002
250	4	1.90	0.03	(18.50-11.50)/200		0.0002
250	4	2.10	0.03	(18.20-11.75)/200		0.0002
250	4	2.30	0.03	(17.85-12.10)/200		0.0002
250	4	2.50	0.04	(17.50-12.55)/200		0.0002
250	4	2.75	0.04	(17.30-13.65)/200		0.0002
250	4	3.00	0.05	(17.05-13.20)/200		0.0006
];

V2 = 250;
dV2= 4;
I2 = data2(:,3);
dI2= data2(:,4);
r2 = data2(:,5);
dr2= data2(:,6);

data3 = [
265	4	1.75	0.03	(19.10-11.35)/200		0.0002
225	3	1.75	0.03	(18.65-11.45)/200		0.0002
200	3	1.75	0.03	(18.55-11.90)/200		0.0002
175	3	1.75	0.03	(18.20-11.95)/200		0.0002
150	3	1.75	0.03	(18.20-12.20)/200		0.0002
125	3	1.75	0.03	(17.80-12.40)/200		0.0002
100	3	1.75	0.03	(17.60-12.80)/200		0.0002
];

V3 = data3(:,1);
dV3= data3(:,2);
I3 = 1.75;
dI3= 0.03;
r3 = data3(:,5);
dr3= data3(:,6);



data4 = [
245	4	1.10	0.03	(21.10- 9.00)/200		0.0002
225	3	1.10	0.03	(20.90- 9.25)/200		0.0002
200	3	1.10	0.03	(20.65- 9.60)/200		0.0002
175	3	1.10	0.03	(20.20-10.00)/200		0.0002
150	3	1.10	0.03	(19.80-10.35)/200		0.0002
125	3	1.10	0.03	(19.30-10.90)/200		0.0002
100	3	1.10	0.03	(18.80-11.30)/200		0.0002
];

V4 = data4(:,1);
dV4= data4(:,2);
I4 = 1.1;
dI4= 0.03;
r4 = data4(:,5);
dr4= data4(:,6);


%q1 = 2*V1*R^2./( (4/5)^3 * ( mu*N*I1.*r1 ).^2 );
%dauq1 = sqrt( (dV1./V1).^2 + (2*dI1./I1).^2 + (2*dr1./r1).^2 );
%dq1 = dauq1 .* q1;
%
%q2 = 2*V2*R^2./( (4/5)^3 * ( mu*N*I2.*r2 ).^2 );
%dauq2 = sqrt( (dV2./V2).^2 + (2*dI2./I2).^2 + (2*dr2./r2).^2 );
%dq2 = dauq2 .* q2;
%
%q3 = 2*V3*R^2./( (4/5)^3 * ( mu*N*I3.*r3 ).^2 );
%dauq3 = sqrt( (dV3./V3).^2 + (2*dI3./I3).^2 + (2*dr3./r3).^2 );
%dq3 = dauq3 .* q3;
%
q4 = 2*V4*R^2./( (4/5)^3 * ( mu*N*I4.*r4 ).^2 );
dauq4 = sqrt( (dV4./V4).^2 + (2*dI4./I4).^2 + (2*dr4./r4).^2 );
dq4 = dauq4 .* q4;

%q = [q1;q2;q3;q4];
%dq= [dq1; dq2; dq3; dq4];

data = [data1;data2;data3;data4];
