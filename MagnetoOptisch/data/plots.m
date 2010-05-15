spec1 = load('i1272/S0');
spec2 = load('i1339/S0');
spec3 = load('i1345/S0');

max1 = max(spec1(:,3));
max2 = max(spec2(:,3));
max3 = max(spec3(:,3));

hold on

%plot( spec1(:,1), spec1(:,3), 'r' );
%plot( spec2(:,1), spec2(:,3), 'm' );
h = plot( spec3(:,1), spec3(:,3), 'm', 'linewidth', 1.9 );

xlabel('Golflengte (nm)');
ylabel('Intensiteit');

print('IzonderB.tex', '-depslatex', '-S380,260');
system('./makegraph.sh IzonderB ../pics/plots/IzonderB');

hold off
