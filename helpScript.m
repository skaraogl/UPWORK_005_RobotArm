% syms thetaV thetaG theta0 tf1 tf2

thetaV = theta1;
thetaG = theta2;
tf1 = t1;
tf2 = t2-t1;

A = [tf1^2 tf1^3 0 0 0;
     0 0 tf2 tf2^2 tf2^3;
     0 0 1 2*tf2 3*tf2^2;
     2*tf1 3*tf1^2 -1 0 0;
     1 3*tf1 0 -1 0];

B = [thetaV-theta0; thetaG-thetaV; 0; 0; 0];

X = linsolve(A,B)