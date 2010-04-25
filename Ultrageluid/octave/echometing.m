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


