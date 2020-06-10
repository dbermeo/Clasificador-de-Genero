function r = perceptronLearning(X,y,Error_meta,w_ini)

%vector de peso alaeatorio


yhat = perceptronOutput(X, w_ini);

error = computeMCE(y,yhat);
m=size(X,1);

w = w_ini;
w_values=w_ini';
contador=0;
%fprintf ('el error inicial es %d  \n',error)

while error > Error_meta
    contador=contador+1;
    %fprintf ('Entrando al while por %d  \n',contador);
    for i=1:m
       %fprintf ('Analizando el ejemplo numero %d  \n',i);
       x_iT=X(i,:);
       x_iaumT = [1,x_iT];
       S=x_iaumT*w;
       
       if S>0
           yhat_i = 1;
       else
           yhat_i = -1;
       end

       if yhat_i ~= y(i)
            w = w + y(i) * x_iaumT';
            w_values=[w_values;w'];
            
       end
    end
 y_hat = perceptronOutput(X, w);
 error = computeMCE(y,y_hat);
 
end
%fprintf ('el error es %d  \n',error)
%r=w_values;
r=y_hat;



end
