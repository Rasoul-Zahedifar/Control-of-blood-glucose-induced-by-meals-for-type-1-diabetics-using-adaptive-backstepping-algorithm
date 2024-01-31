clear 
clc
close all

global A1 A2 A3 B1 B2 B3 Ginfinity G0 h landa


Ginfinity=100; G0=200;

h=0.1;
landa=100;
A1=3; B1=0.03;
A2=5; B2=0.01;
A3=4; B3=0.01;

sim('Sim2MPCadaptive')
close all
Simoutput1=ans;

h=0.5*h;

% sim('Sim1MPC')
% close all
% Simoutput2=ans;


lw=2;fs=13;

figure(1)
% axis equal;
% plot(Simoutput2.t,Simoutput2.x1,'k','LineWidth',lw);
% hold on
plot(Simoutput1.t,Simoutput1.x1,'k--','LineWidth',lw);
% lgnd=legend('MPC','Adaptive MPC');set(lgnd,'color','none','EdgeColor','none');
% xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Blood Glucose Level';'G (mg/dl)'},'FontSize',fs,'FontName','cambria');
% 
figure(2)
% axis equal;
% plot(Simoutput2.t,Simoutput2.u,'k','LineWidth',lw);
% hold on
plot(Simoutput1.t,Simoutput1.u,'k--','LineWidth',lw);
% lgnd=legend('MPC','Adaptive MPC');set(lgnd,'color','none','EdgeColor','none');
% xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Insulin Injection Rate';'u (\muU\timesmin/ml)'},'FontSize',fs,'FontName','cambria');
% 
figure(3)
% axis equal;
plot(Simoutput1.t,Simoutput1.D,'k','LineWidth',lw);
hold on
plot(Simoutput1.t,Simoutput1.Dhat,'k--','LineWidth',lw);
% lgnd=legend('$\it D$','$$\hat{D}$$','Interpreter','Latex');set(lgnd,'color','none','EdgeColor','none');
% xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel('Noise Estimation of Food Intake ','FontSize',fs,'FontName','cambria');


