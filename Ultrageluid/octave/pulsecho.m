freq = 0.5e6; % 1/4 van onze frequentie
omega = 2*pi * freq;
reflectiecoeff = 0.7; %percentage verlies per trip
sigma = 1.05e-6; 	%'breedte' ongeveer 4 sigma. Stel breedte  =  10 pulsen 2MHz 
			% = > ongeveer 10*0.5e-6 / 4
dsigma = 0.3e-6; %increment in sigma per trip     "dispersie"
trips = 6; %aantal trips
factor = 1.5e-6 / trips;

tmin = -4e-5;
tmax = 4e-5;
tnum = 1500; % groot = nodig voor nauwkeurigheid
ts = linspace(tmin,tmax,tnum); %tijdstippen

clf;
hold on;





delay = 1/14300;



ys = zeros(1,tnum); %uitwijking
for n=0:(trips-1)
	s = sigma + n * dsigma;
	mu = delay * n; %"totale" delay
	pakket = factor * sin(omega*(ts+mu)) ... %or sin for boobies
		.* reflectiecoeff^n ...
		./ s .* exp(-(ts).^2 ./ (2 * s^2));
	plot(1e6*(ts+mu),4.5*pakket);

end

axis([1e6*[-15*sigma,0.00038],[-1,1]]);

naam='puls-echo';
xlab='t ($\mu$s)';
ylab='';
ylabrule='0.3cm';
width='800';
height='500';
maakgraph(naam,xlab,ylab,ylabrule,width,height);

hold off;
