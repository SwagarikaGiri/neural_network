function [w,weights,error,out] =compute_periodic(x,w,expt)
a=0.2;%learning function
c = 1; 
t = 0;
m=0;
err=0;
itteration = 2000;
error=zeros(itteration,1);
output=zeros(itteration,4);
weights=zeros(itteration,3);
while  c <= itteration
 
  for i=1:1:4
  
   t = w(1)*x(i,1) + w(2)* x(i,2)+ w(3)*x(i,3);
   p = sin(t) ;
   out(c,i)=p;
   m = p - expt(i);
   err = err+abs(m);
   
   
   delta = m*cos(t);
   w(1) = w(1)-delta*x(i,1);
   w(2) = w(2)-delta*x(i,2);
   w(3) = w(3)-delta*x(i,3);
    
     
  end
  error(c)=err;
  weights(c,1)=w(1);
  weights(c,2)=w(2);
  weights(c,3)=w(3);
  err=0;
  c=c+1;
end
  
end
       
