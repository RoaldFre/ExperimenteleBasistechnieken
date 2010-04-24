function maakgraph(naam,xlab,ylab,ylabrule,width,height);
	destdir='afbeeldingen'; 

	xlabel(xlab);
	ylabel(['\rule{0pt}{',ylabrule,'}',ylab]);

	system(['mkdir ',destdir,' &>/dev/null']);
	print([destdir,'/',naam,'.tex'],'-depslatex',['-S',width,',',height]);
	system(['cd ',destdir,'; epstopdf ',naam,'.eps; rm ',naam,'.eps']);
endfunction

