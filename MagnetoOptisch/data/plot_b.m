f1 = load('i1272/F1000');
f2 = load('i1272/F2500');
f3 = load('i1272/F4800');

hold on

plot(f1(:,1)/1000,f1(:,4)*50,'k','linewidth',2);
plot(f1(:,1)/1000,f1(:,3)   ,'r','linewidth',1.5);
plot(f2(:,1)/1000,f2(:,3)   ,'m','linewidth',1.5);
plot(f3(:,1)/1000,f3(:,3)   ,'c','linewidth',1.5);


hold off

axis([0 80 0 50]);

ylabel('B (T)');
xlabel('t (ms)');

print('plot_b.tex','-depslatex','-S500,400');
system('./makegraph.sh plot_b ../pics/plots/plot_b');
