
function [E_acc,E_sc,phi,ji,Vx,x,Vy,y]= Plasma_main(Mi_x,e,phi_o,c,x,Vn,omega_c)

% %%This stage compute the electric field and ion current desnsity where mass of ion of xenon, Permittivity in vacuum [F/m], charge of electron has been given input as a 
   %function of electric field and ion current density;

% Ef               Electric Field                                                                  [ev]
%  ji               Ion Current Density                                                       [not_yet]
% Mi_x          mass of Ion of Xenon                                                    [given_cons [u]]
% e                Electron Charge                                                             [given_constant]
% miu_o        magnetic cons.                  
% eps_o        Permittivity in vacuum [F/m]                                        [given_constant]
% V_t            Total Voltage                                                                  [given initially (ref.1) but I am gonna change it]
% da             Gap between screen and accelerator grids [mm]       [2 mm (ref.1)]
% phi_o        Grid system transparency to neutral atoms
% phi            Potential
% c                light speed  [m/s^1]
% alpha        Thrust correction factor 


V_t       = 1000;
da        = 2;
miu_o  = 4*pi*10^-7;
t           = 10;
B          = 1.0;
q_initial = 1/2;

eps_o  = 1/miu_o*c^2
ji          = 4/9*eps_o*sqrt(2*e/Mi_x*V_t^3/2/da^2)
phi       = phi_o - (3/2*(ji/eps_o)^1/2*(Mi_x/2*e)^1/4)^4/3
E_acc   = (4*ji/eps_o)^1/2*(Mi_x*(phi_o-phi)/2*e)^1/4

%%% when the space charge limit called x is 0 there also be a
% change in electric field and potential

Ef_x   = -V_t *(x/da)^4/3;
phi_x =  4/3*V_t/da*(x/da)^1/3;

%%% To get the electric filed of sceen grid we will have to find the sigma
r =2;
E_sc =  (e/4*pi*r^2)/eps_o;

% TbA = 8/9*eps_o*(Vt/da)^2;

%%% calculate the ion velocity in the discharge chamber using the following
% equations.
% We assume the electric field initially = 0 then integrate the Lorentz equation
%                                           dv 
%  Lorentz Force=FL = mi----- = q [E+V*B]
%                                           dt 
% two times to get the position vector and the velocity of the ion in 2
% % dimension


Vx = q_initial/q_initial*Vn*sin(omega_c+phi)               %velocity 
x   = Vn/omega_c*cos(omega_c*t+phi)                        %position
Vy = q_initial/q_initial*Vn*cos(omega_c+phi)              %velocity 
y   = Vn/omega_c*sin(omega_c*t+phi)                         %position

%%% Now we will find out the rate factor which we denore with sigma sign
% for that we will pull up a function

end









