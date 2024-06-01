function [T01,T02,T03,T04,T05] = getKinematicsNo1(a1,a2,a3,d1,d5,theta1,theta2,theta3,theta4)
%GETKINEMATICSNO1 Summary of this function goes here
%   Detailed explanation goes here

A1 = [cos(theta1) 0 -sin(theta1) -a1*cos(theta1);
      sin(theta1) 0 cos(theta1) -a1*sin(theta1);
      0 -1 0 d1;
      0 0 0 1];

A2 = [cos(theta2) -sin(theta2) 0 -a2*cos(theta2);
      sin(theta2) cos(theta2) 0 -a2*sin(theta2);
      0 0 1 0;
      0 0 0 1];

A3 = [cos(theta3) -sin(theta3) 0 -a3*cos(theta3);
      sin(theta3) cos(theta3) 0 -a3*sin(theta3);
      0 0 1 0;
      0 0 0 1];

A4 = [cos(theta4) 0 -sin(theta4) 0;
      sin(theta4) 0 cos(theta4) 0;
      0 -1 0 0;
      0 0 0 1];

A5 = [1 0 0 0;
      0 1 0 0;
      0 0 1 d5
      0 0 0 1];

% Determine Transformation matrix from joint 1 to 1
T01 = A1;

% Determine Transformation matrix from joint 1 to 2
T02 = A1*A2;

% Determine Transformation matrix from joint 1 to 3
T03 = A1*A2*A3;

% Determine Transformation matrix from joint 1 to 4
T04 = A1*A2*A3*A4;

% Determine Transformation matrix from joint 1 to 5
T05 = A1*A2*A3*A4*A5;

end

