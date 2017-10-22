 or = [0 0 1; 0 1 -1; 1 0 -1; 1 1 -1];%here -1 is used as bais 
 and =[0 0 1; 0 -1 1; -1 0 1; 1 1 -1];
 nand =[0 0 -1; 0 1 -1; 1 0 -1; -1 -1 1];
 nor=[0 0 -1; 0 -1 1; -1 0 1; -1 -1 1];
 xor=[0 0 1; 0 1 -1; 1 0 -1; -1 -1 1];
 w = randi([-5 5],1,3);

 weightor=computeweight(or,w);
  w = randi([-5 5],1,3);
 weightand=computeweight(and,w);
  w = randi([-5 5],1,3);
  
 weightnand=computeweight(and,w);
  w = randi([-5 5],1,3);
 weightnor=computeweight(nor,w);
 %w = randi([-5 5],1,3);
 %weightxor=computeweight(xor,w);