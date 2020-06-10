function y3=computeMCE(y,yhat)
%y=1
%yhat=1
compared = y - yhat;
%
missed = compared( compared ~= 0);
%numero de errores / total de elementos 
y3 = length(missed) / length(compared);
end