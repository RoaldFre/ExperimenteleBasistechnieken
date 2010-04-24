freq=2e6;
omega=2*pi*freq;

clf; hold on;

tsinus = linspace(-3,3,300)/freq;
sinus = 0.48 * sin(omega*tsinus);
plot(1e6*[[-50,-3]/freq,tsinus,[3,50]/freq],[[0,0],sinus,[0,0]]);



sincperiod = 11 / freq;
sincomega = 2*pi/sincperiod;

xs = linspace(-4*sincperiod, 4*sincperiod, 900);
demp = exp(-abs(xs / sincperiod * 1.3).^3);
ys = 0.35 * demp .* sin(omega*xs) .* sin(sincomega*xs) ./ (sincomega*xs);


plot(1e6*xs,1+ys)


sincperiod = 17 / freq;
sincomega = 2*pi/sincperiod;

xs = linspace(-3*sincperiod, 3*sincperiod, 1500);
demp = exp(-abs(xs / sincperiod * 0.7).^3);
ys = 0.20 * demp .* sin(omega*xs) .* sin(sincomega*xs) ./ (sincomega*xs);


plot(1e6*xs,2+ys)

axis([1e6*[-1.0e-5,1.0e-5],[-0.8,2.5]]);
set (gca, 'ytick',0:2);

naam='dispersie';
xlab='$t$ ($\mu$s)';
ylab='';
ylabrule='0.3cm';
width='700';
height='500';
maakgraph(naam,xlab,ylab,ylabrule,width,height);




hold off;
