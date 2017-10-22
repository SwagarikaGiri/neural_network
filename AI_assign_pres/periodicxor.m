 xor=[0 0 1; 0 1 -1; 1 0 -1; -1 -1 1];
 w = randi([-5 5],1,3);
 expt=[0;1;1;0];
 [fweightxor,irr_weigths,error,output]=compute_periodic(xor,w,expt);