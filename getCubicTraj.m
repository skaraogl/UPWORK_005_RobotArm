function [theta,theta_dot,theta_ddot,a2] = getCubicTraj(t,t1,theta0,theta1)
%GETCUBICTRAJ Summary of this function goes here
%   Detailed explanation goes here

a0 = theta0;
a2 = 3/(t1^2)*(theta1 - theta0);
a3 = -2/(t1^3)*(theta1 - theta0);

theta = a0 + a2.*(t.^2) + a3.*(t.^3);
theta_dot = 2.*a2.*(t) + 3.*a3.*(t.^2);
theta_ddot = 2.*a2 + 6.*a3.*(t);

end

