freq = 2e6;
omega = 2*pi * freq;
reflectiecoeff = 0.8; %percentage verlies per trip
sigma = 1.25e-6; 	%'breedte' ongeveer 4 sigma. Stel breedte  =  10 pulsen 2MHz 
		% = > ongeveer 10*0.5e-6 / 4
dsigma = 0.4e-6; %increment in sigma per trip     "dispersie"
trips = 4; %aantal trips
factor = 2e-6 / trips;


tmin = -2e-5;
tmax = 2e-5;
tnum = 500;



ts = linspace(tmin,tmax,tnum); %tijdstippen


ys = zeros(1,tnum); %uitwijking


delay = 0;

clf;
hold on;
for n=0:(trips-1)
	sigma = sigma + n * dsigma;
	mu = delay * n;
	pakket = sin(omega*ts) ...
			.* reflectiecoeff^n ...
			.* factor/sigma .* exp(-(ts - mu).^2 ./ (2 * sigma^2));
	plot(ts,pakket+n);
	ys = ys + pakket;
end





