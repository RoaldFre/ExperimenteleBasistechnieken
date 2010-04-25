freq = 2e6;
omega = 2*pi * freq;
reflectiecoeff = 0.7; %percentage verlies per trip
sigma = 1.25e-6; 	%'breedte' ongeveer 4 sigma. Stel breedte  =  10 pulsen 2MHz 
		% = > ongeveer 10*0.5e-6 / 4
dsigma = 0.0e-6; %increment in sigma per trip     "dispersie"
trips = 6; %aantal trips
factor = 1.5e-6 / trips;

tmin = -2e-5;
tmax = 2e-5;
tnum = 1500; % groot = nodig voor nauwkeurigheid
ts = linspace(tmin,tmax,tnum); %tijdstippen

clf;
hold on;

delay = -sigma * 0.4;
ys = zeros(1,tnum); %uitwijking
for n=0:(trips-1)
	s = sigma + n * dsigma;
	mu = delay * n; %"totale" delay
	pakket = factor * sin(omega*(ts+mu)) ... %or sin for boobies
		.* reflectiecoeff^n ...
		./ s .* exp(-(ts - mu).^2 ./ (2 * s^2));
	ys = ys + pakket;

	plot(ts,2.5*pakket + n + 1);

end

plot(ts,1.5*ys - 0.5);
axis([-2e-5,1.0e-5,-1.5,6.5]);
set (gca, 'ytick',[-0.5,1,2,3,4,5,6]);
set (gca, 'yticklabel',{'totaal','1','2','3','4','5','6'});

naam='comboPakket-nodisp';
xlab='delay (s)';
ylab='';
ylabrule='0.3cm';
width='700';
height='700';
%maakgraph(naam,xlab,ylab,ylabrule,width,height);












freq = 2e6;
omega = 2*pi * freq;
reflectiecoeff = 0.7; %percentage verlies per trip
sigma = 1.25e-6; 	%'breedte' ongeveer 4 sigma. Stel breedte  =  10 pulsen 2MHz 
		% = > ongeveer 10*0.5e-6 / 4
dsigma = 0.3e-6; %increment in sigma per trip     "dispersie"
trips = 20; %aantal trips
factor = 2e-6 / trips;


tmin = -2e-5;
tmax = 2e-5;
tnum = 1500; % groot = nodig voor nauwkeurigheid
ts = linspace(tmin,tmax,tnum); %tijdstippen

delaymin = -sigma * 0.50;
delaymax = +sigma * 0.50;
delaynum = 11;
delays = linspace(delaymin, delaymax, delaynum); %delays van 1 trip
amps = zeros(1,delaynum); %maximale amplituden van pakket ifv delay


clf;
hold on;

for di=1:delaynum
	delay = delays(di);
	ys = zeros(1,tnum); %uitwijking
	for n=0:(trips-1)
		s = sigma + n * dsigma;
		mu = delay * n; %"totale" delay
		pakket = factor * sin(omega*(ts+mu)) ... %or sin for boobies
			.* reflectiecoeff^n ...
			./ s .* exp(-(ts - mu).^2 ./ (2 * s^2));
		ys = ys + pakket;
	end

	plot(ts,2.5*ys + di - (delaynum+1)/2);

	amps(di) = max(abs(ys));
end

axis([-1.0e-5,1.0e-5,-5.5,5.5]);

set (gca, 'ytick',-5:5);
naam='delayinterferenties-nodisp';
xlab='delay (s)';
ylab='';
ylabrule='0.3cm';
width='700';
height='700';
%maakgraph(naam,xlab,ylab,ylabrule,width,height);








freq = 2e6;
omega = 2*pi * freq;
reflectiecoeff = 0.7; %percentage verlies per trip
sigma = 1.25e-6; 	%'breedte' ongeveer 4 sigma. Stel breedte  =  10 pulsen 2MHz 
		% = > ongeveer 10*0.5e-6 / 4
dsigma = 0.3e-6; %increment in sigma per trip     "dispersie"
trips = 20; %aantal trips
factor = 2e-6 / trips;


tmin = -2e-5;
tmax = 2e-5;
tnum = 1500; % groot = nodig voor nauwkeurigheid
ts = linspace(tmin,tmax,tnum); %tijdstippen

delaymin = -sigma * 3.50;
delaymax = +sigma * 3.50;
delaynum = 901;
delays = linspace(delaymin, delaymax, delaynum); %delays van 1 trip
amps = zeros(1,delaynum); %maximale amplituden van pakket ifv delay


clf;
hold on;

for di=1:delaynum
	delay = delays(di);
	ys = zeros(1,tnum); %uitwijking
	for n=0:(trips-1)
		s = sigma + n * dsigma;
		mu = delay * n; %"totale" delay
		pakket = factor * sin(omega*(ts+mu)) ... %or sin for boobies
			.* reflectiecoeff^n ...
			./ s .* exp(-(ts - mu).^2 ./ (2 * s^2));
		ys = ys + pakket;
	end
	amps(di) = max(abs(ys));
end

plot(delays,amps/max(amps));

axis([-4e-6,4.0e-6,0.0,1]);

naam='delayamp-nodisp';
xlab='delay (s)';
ylab='relatieve amplitude';
ylabrule='0.3cm';
width='700';
height='500';
%maakgraph(naam,xlab,ylab,ylabrule,width,height);


hold off;
