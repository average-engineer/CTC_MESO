%% Script for analyzing results of CTC_2LinkManipulator
% Ashutosh Mukherjee
clearvars
close all
clc
%%
data = load('result.mat');
data = data.ans;
qDesired = data.Desired.qd.Data;
qDesired = permute(qDesired,[3,1,2]);
qActual = data.Actual.q.Data;
simTime = data.Actual.q.Time;
%% Plotting
figure
subplot(2,1,1)
hold on
plot(simTime,qDesired(:,1),'--','color','k','LineWidth',2,'DisplayName','Desired')
plot(simTime,qActual(:,1),'color','r','LineWidth',2,'DisplayName','Actual')
xlabel('Time [s]')
ylabel('Angle [rad]')
title('q_1')
legend
grid on

subplot(2,1,2)
hold on
plot(simTime,qDesired(:,2),'--','color','k','LineWidth',2,'DisplayName','Desired')
plot(simTime,qActual(:,2),'color','r','LineWidth',2,'DisplayName','Actual')
xlabel('Time [s]')
ylabel('Angle [rad]')
title('q_2')
legend
grid on
