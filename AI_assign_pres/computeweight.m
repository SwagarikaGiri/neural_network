function [w] =computeweight(x,w)

c = 1;
t = 0;
j=1;

while  c ~= 0
 j=j+1;
  for i=1:1:4
  
   t = w(1)*x(i,1) + w(2)* x(i,2)+ w(3)*x(i,3);
   

    if (t>0 && i<4)
     continue;
    

    elseif (t<=0)
     
      w(1)=w(1)+x(i,1);
      w(2)=w(2)+x(i,2);
      w(3)= w(3)+x(i,3);
      break;
        
     else
       c=0;
       break;
     end

  end
end
       

j











end
