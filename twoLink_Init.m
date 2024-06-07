%% Initialization Script for 2-Link Manipulator
% Ashutosh Mukherjee
clear
close all
clc
format short
%% Switch between nominal and actual 
dynSwitch = 0; % 0: Nominal, 1: Actual
%% Nominal Dynamic Parameters
simNominal = struct();
% Link 1 mass
simNominal.m1 = 3;
% Link 2 mass
simNominal.m2 = 3;
% Link 1 length
simNominal.l1 = 0.5;
% Link 2 length
simNominal.l2 = 0.25;
% Proximal distance of link 1 COM
simNominal.lc1 = 0.4;
% Proximal distance of link 2 COM
simNominal.lc2 = 0.1;
% Inertia of link 1
simNominal.I1 = 0.5;
% Inertia of link 2
simNominal.I2 = 1;
% Acceleration due to gravity
simNominal.g = 9.8;

%% Actual Dynamic Parameters
simActual = struct();
% Link 1 mass
simActual.m1 = 4;
% Link 2 mass
simActual.m2 = 2;
% Link 1 length
simActual.l1 = 0.5;
% Link 2 length
simActual.l2 = 0.25;
% Proximal distance of link 1 COM
simActual.lc1 = 0.25;
% Proximal distance of link 2 COM
simActual.lc2 = 0.15;
% Inertia of link 1
simActual.I1 = 1;
% Inertia of link 2
simActual.I2 = 0.8;
% Acceleration due to gravity
simActual.g = 9.8;
%% Initial Conditions
q1_init = 0.5;
q2_init = 0.5;
q1_dot_init = 0;
q2_dot_init = 0;
%% Controller Gains
Kd = [40,0;0,80];
Kp = [11,0;0,18];