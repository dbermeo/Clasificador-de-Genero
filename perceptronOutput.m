function fs = perceptronOutput(X, w)
   Xaum = [ones(size(X,1), 1), X]; 
   s = Xaum * w;

   s(s>0)=1;
   s(s<=0)=-1;
   yhat=s;
   fs=yhat;
end
