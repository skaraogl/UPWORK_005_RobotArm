function [theta1, theta2,theta1_dot,theta2_dot,theta1_ddot,theta2_ddot] = getCubicVia(t1,t2,theta0,thetaV,thetaG,tf1,tf2)
%GETCUBICVIA Summary of this function goes here
%   Detailed explanation goes here

% theta0: Initial angle
% thetaV: Via point
% thetaG: Goal point

a10 = theta0;
a20 = thetaV;
a11 = 0;

A = [tf1^2 tf1^3 0 0 0;
     0 0 tf2 tf2^2 tf2^3;
     0 0 1 2*tf2 3*tf2^2;
     2*tf1 3*tf1^2 -1 0 0;
     1 3*tf1 0 -1 0];

B = [thetaV-theta0; thetaG-thetaV; 0; 0; 0];

X = linsolve(A,B);

a12 = X(1);
a13 = X(2);
a21 = X(3);
a22 = X(4);
a23 = X(5);

theta1 = a10 + a11.*t1 + a12.*t1.^2 + a13.*t1.^3;
theta2 = a20 + a21.*t2 + a22.*t2.^2 + a23.*t2.^3;

theta1_dot = a11 + 2*a12.*t1 + 3*a13.*t1.^2;
theta2_dot = a21 + 2*a22.*t2 + 3*a23.*t2.^2;

theta1_ddot = 2*a12 + 6*a13.*t1;
theta2_ddot = 2*a22 + 6*a23.*t2;

end

