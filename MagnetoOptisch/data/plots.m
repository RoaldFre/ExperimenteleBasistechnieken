% Geschikt in stijgende volgorde van de golflengte
%i1272
%i1345
%i1339

naam = 'samples';

subplot(3,1,1);
sample = 'i1272';
plot_sample

subplot(3,1,2);
sample = 'i1345';
plot_sample

subplot(3,1,3);
sample = 'i1339';
plot_sample
xlabel('$\lambda$ (nm)');


print([naam,'.tex'], '-depslatex', '-S400,800');
system(['./makegraph.sh ',naam,' ../pics/plots/',naam]);


