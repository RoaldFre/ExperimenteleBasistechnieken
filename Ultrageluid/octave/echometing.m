lengte = 0.10;

%n	tijd		dtijd
water = ...
[ 
6,	8.6*0.05e-3,	0.2*0.05e-3;
9,	6.4*0.1e-3,	0.1*0.1e-3;
11,	7.7*0.1e-3,	0.1*0.1e-3;
13,	9.1*0.1e-3,	0.1*0.1e-3
];




snelheid = water(:,1) .* lengte ./ water(:,2);
dsnelheid = water(:,3) ./ water(:,2) .* snelheid;

tabel = [water(:,1), roundsd(snelheid/1000,3), roundsd(dsnelheid/1000,1)]

save "watertabel.txt" tabel




glycerine = ...
[1,	5.4*50e-6,	0.5*50e-6]

snelheidg = glycerine(:,1) .* lengte ./ glycerine(:,2);
dsnelheidg = glycerine(:,3) ./ glycerine(:,2) .* snelheidg;

tabelg = [glycerine(:,1), roundsd(snelheidg/1000,3), roundsd(dsnelheidg/1000,1)]

save "glycerinetabel.txt" tabelg


A1 = 5.6*20;
dA1 = 0.2*20;
A2 = 0.4*5;
dA2 = 0.2*5;

reflectiecoeff = A2 / A1;
dreflectiecoeff = reflectiecoeff * sqrt((dA1/A1)^2 + (dA2/A2)^2);


