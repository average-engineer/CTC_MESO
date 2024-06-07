%% Script for analyzing results of CTC_2LinkManipulator
% Ashutosh Mukherjee
close all
clc
%%
data = load('result.mat');
data = data.ans;
qDesired = data.Desired.qd.Data;
qDesired = permute(qDesired,[3,1,2]);
qActual = data.Actual.q.Data;
err = data.Error.Data;
err = permute(err,[3,1,2]);
torque = data.Torque.Data;
torque = permute(torque,[3,1,2]);
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

figure
subplot(2,1,1)
hold on
plot(simTime,err(:,1),'color','r','LineWidth',2,'DisplayName','CTC')
xlabel('Time [s]')
ylabel('Error [rad]')
title('e_1')
legend
grid on

subplot(2,1,2)
hold on
plot(simTime,err(:,2),'color','r','LineWidth',2,'DisplayName','CTC')
xlabel('Time [s]')
ylabel('Error [rad]')
title('e_2')
legend
grid on

figure
subplot(2,1,1)
hold on
plot(simTime,torque(:,1),'color','r','LineWidth',2,'DisplayName','CTC')
xlabel('Time [s]')
ylabel('Torque [Nm]')
title('\tau_1')
legend
grid on

subplot(2,1,2)
hold on
plot(simTime,torque(:,2),'color','r','LineWidth',2,'DisplayName','CTC')
xlabel('Time [s]')
ylabel('Torque [Nm]')
title('\tau_2')
legend
grid on
