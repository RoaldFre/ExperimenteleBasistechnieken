load "S0"
load "S1000"
load "S2500"
load "S4800"

hold on

plot(S0(:,1),S0(:,3),'r');
plot(S1000(:,1),S1000(:,3),'m');
plot(S2500(:,1),S2500(:,3),'g');
plot(S4800(:,1),S4800(:,3),'b');

hold off
