clear all;
input=[1 1 1 1 1;1 0 1 0 1;1 0 0 0 0;1 1 0 0 0; 1 0 0 1 0 ];
output=[1;1;1;0;0];
bias = [-1 -1 -1];
coeff = 0.7;
% Number of learning iterations
iterations = 10000;
% Calculate weights randomly using seed.
rand('state',sum(100*clock));
weightsh = -1 +2.*rand(2,6);%these are the weights for hidden layer
weightso=-1+2.*rand(1,3);%these are the weights for output neuron and bias
numIn=5;%as 5 training set are there hence 5
for i = 1:iterations%it will run upto the number of itteration
   out = zeros(5,1);%a 5 row 1 column matrix for the output
     for j = 1:numIn
         H1 = bias(1,1)*weightsh(1,1)+ input(j,1)*weightsh(1,2)+ input(j,2)*weightsh(1,3)+...
             input(j,3)*weightsh(1,4)+input(j,4)*weightsh(1,5)+input(j,5)*weightsh(1,6);
           x2(1)=1/(1+exp(-H1));
            H2 = bias(1,2)*weightsh(2,1) + input(j,1)*weightsh(2,2)+ input(j,2)*weightsh(2,3)+...
                  input(j,3)*weightsh(2,4)+input(j,4)*weightsh(2,5)+input(j,5)*weightsh(2,6);
           x2(2)=1/(1+exp(-H2));
            x3_1 = bias(1,3)*weightso(1,1) + x2(1)*weightso(1,2) + x2(2)*weightso(1,3);
      %out(j) = sigma(x3_1);
       out(j)=1/(1+exp(-x3_1));
         % Adjust delta values of weights
      % For output layer:
      % delta(wi) = xi*delta,
      % delta = (1-actual output)*(desired output - actual output) 
      delta3_1 = out(j)*(1-out(j))*(output(j)-out(j));
      delta2_1 = x2(1)*(1-x2(1))*weightso(1,2)*delta3_1;
      delta2_2 = x2(2)*(1-x2(2))*weightso(1,3)*delta3_1;
       % Bias cases
            weightsh(1,1) = weightsh(1,1) + coeff*bias(1,1)*delta2_1;
            weightsh(1,2)=weightsh(1,2)+coeff*input(j,1)*delta2_1;
            weightsh(1,3)=weightsh(1,3)+coeff*input(j,2)*delta2_1;
            weightsh(1,4)=weightsh(1,4)+coeff*input(j,3)*delta2_1;
            weightsh(1,5)=weightsh(1,5)+coeff*input(j,4)*delta2_1;
            weightsh(1,6)=weightsh(1,6)+coeff*input(j,5)*delta2_1;
            
            weightsh(2,1) = weightsh(2,1) + coeff*bias(1,2)*delta2_2;
            weightsh(2,2)=weightsh(2,2)+coeff*input(j,1)*delta2_2;
            weightsh(2,3)=weightsh(2,3)+coeff*input(j,2)*delta2_1;
            weightsh(2,4)=weightsh(2,4)+coeff*input(j,3)*delta2_1;
            weightsh(2,5)=weightsh(2,5)+coeff*input(j,4)*delta2_1;
            weightsh(2,6)=weightsh(2,6)+coeff*input(j,5)*delta2_1;
            %for the hidden layer the propogation of error
             weightso(1,1) = weightso(1,1) + coeff*bias(1,3)*delta3_1;
             weightso(1,2)= weightso(1,2) + coeff*x2(1)*delta3_1;
             weightso(1,3)= weightso(1,3) + coeff*x2(2)*delta3_1;
            
           

     end
end
