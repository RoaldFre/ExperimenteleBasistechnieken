function [a,da,daua] = linreg(x,dx,y,dy)
	w = 1./dy.^2;
	n = length(y);
	
	a = sum(w.*x.*y)./sum(w.*x.*x);

	da = sqrt( (sum(w.*x.*x)*sum(w.*y.*y) - (sum(w.*x.*y))^2)/( (n-1)*sum(w.*x.*x)^2 ));

	daua = da/a;
endfunction
