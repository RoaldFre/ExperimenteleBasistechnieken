freq = 2e6;
omega = 2*pi * freq;
reflectiecoeff = 0.8; %percentage verlies per trip
sigma = 1.25e-6; 	%'breedte' ongeveer 4 sigma. Stel breedte  =  10 pulsen 2MHz 
		% = > ongeveer 10*0.5e-6 / 4
dsigma = 0.4e-6; %increment in sigma per trip     "dispersie"
trips = 8; %aantal trips
factor = 2e-6 / trips;


tmin = -2e-5;
tmax = 2e-5;
tnum = 300;
ts = linspace(tmin,tmax,tnum); %tijdstippen

delaymin = -sigma / 2;
delaymax = +sigma / 2;
delaynum = 51;
delays = linspace(delaymin, delaymax, delaynum); %delays van 1 trip
amps = zeros(1,delaynum); %maximale amplituden van pakket ifv delay


%clf;
%hold on;

for di=1:delaynum
	delay = delays(di);
	ys = zeros(1,tnum); %uitwijking
	for n=0:(trips-1)
		s = sigma + n * dsigma;
		mu = delay * n;
		pakket = factor * sin(omega*(ts+delay)) ...
			.* reflectiecoeff^n ...
			./ s .* exp(-(ts - mu).^2 ./ (2 * s^2));
		ys = ys + pakket;
	end

%	plot(ts,ys+di);

	amps(di) = max(abs(ys));
end

plot(delays,amps);



