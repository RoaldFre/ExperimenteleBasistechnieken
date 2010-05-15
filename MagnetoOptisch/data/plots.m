sample = 'i1272';

spec1 = load([sample, '/S0']);
spec2 = load([sample, '/S1000']);
spec3 = load([sample, '/S2500']);
spec4 = load([sample, '/S4800']);

max1 = max(spec1(:,3));
max2 = max(spec2(:,3));
max3 = max(spec3(:,3));
max4 = max(spec4(:,3));

hold on

plot( spec1(:,1), spec1(:,3), 'r' );
plot( spec2(:,1), spec2(:,3), 'y' );
plot( spec3(:,1), spec3(:,3), 'g' );
plot( spec4(:,1), spec4(:,3), 'b' );

hold off

xlabel('Golflengte (nm)');
ylabel('Intensiteit');
