a3 = (theta1 - theta0 + THETA12_ddot(1)*t1 - THETA12_ddot(1)/2*t1^2)/...
    (3*t1 - 3*t1^2 + t1^3);

a2 = (THETA12_ddot(1) - 6*a3)/2;

a1 = -THETA12_ddot(1) + 3*a3;