clc
clear variable 
close all

Mi_x    = 131.3
e         = 1.6022*10^-19;
V_t      = 1000;
da       = 2;
phi_o  = 0;
c         = 299792458;
Vn      = 0.05
Xe_c   = 5;
B         = 1.0
q         =1/2
omega_c = q*B/Mi_x % cyclotron frequency
x        = 0
pi      = 3.1416
r        = 4

[Ef,Ef_x,phi,ji,Vx,x,Vy,y] = Plasma_main(Mi_x,e,phi_o,c,x,Vn,omega_c);

% Xenon plasma velocity inside the discharge chamber at a duration of 10 sec,
% Xenon has the most extensive chemistry in Group 18 and exhibits the oxidation states +1/2, +2, +4, +6, and +8 in the compounds it forms.
q1=1/2;
i=1
for q = Xe_c
    [Ef,ji,Vx,x,Vy,y] = Plasma_main(Mi_x,e,phi_o,c,q1(i),Vn,omega_c)
    omega_c (i)= q1(i)*B/Mi_x
    Vx1(i) = q1(i)/q*Vn*sin(omega_c+phi) %velocity
    Vy1(i) = q1(i)/q*Vn*cos(omega_c+phi) %velocity 
    q_1=q;
    q1 =q;
    i = i+1 
 end

q2=2;
i=1;
 for q = Xe_c
    [Ef,ji,Vx,x,Vy,y] = Plasma_main(Mi_x,e,phi_o,c,q2(i),Vn,omega_c)
    omega_c (i)= q2(i)*B/Mi_x
    Vx2(i) = q2(i)/q*Vn*sin(omega_c+phi) %velocity
    Vy2(i) = q2(i)/q*Vn*cos(omega_c+phi) %velocity 
    q_2=q;
    q2 =q;
    i = i+1 
 end
 
q3=4;
i=1;
 for q = Xe_c
    [Ef,ji,Vx,x,Vy,y] = Plasma_main(Mi_x,e,phi_o,c,q3(i),Vn,omega_c)
    omega_c (i)= q3(i)*B/Mi_x
    Vx3(i) = q3(i)/q*Vn*sin(omega_c+phi) %velocity
    Vy3(i) = q3(i)/q*Vn*cos(omega_c+phi) %velocity 
    q_3=q;
    q3 =q;
    i = i+1 
 end

q4=8;
i=1;
 for q = Xe_c
    [Ef,ji,Vx,x,Vy,y] = Plasma_main(Mi_x,e,phi_o,c,q4(i),Vn,omega_c)
    omega_c (i)= q4(i)*B/Mi_x
    Vx4(i) = q4(i)/q*Vn*sin(omega_c+phi) %velocity
    Vy4(i) = q4(i)/q*Vn*cos(omega_c+phi) %velocity 
    q_4=q;
    q4 =q;
    i = i+1 
 end
 
 


