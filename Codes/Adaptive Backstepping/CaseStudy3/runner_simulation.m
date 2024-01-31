% This case study 3 is to control blood glucose in the absence of controller
% for a while. after some time controller comes to the picture
clear 
clc
close all

global k1 k2 k3 A1 A2 A3 B1 B2 B3 Ginfinity G0 landa


% k1=0.4; k2=0.45; k3=2.75;     %for control_law 4 adaptive
% landa=0.005;
k1=0.45; k2=0.45; k3=1.5;
% k1=0.4; k2=0.4; k3=2.9;        %for control_law 4 adaptive
landa=0.007;

Ginfinity=100; G0=132;



A1=0.4; B1=0.01;
A2=0.6; B2=0.01;
A3=0.5; B3=0.01;


sim('Sim4adaptive')
close all
Simoutput1=ans;


% k1=8*k1; k2=k2/30; k3=10*k3;       %for control_law 4 

sim('Sim4')
close all
Simoutput2=ans;

lw=2;fs=13;

figure(1);hold on;
y=linspace(0,500);
x=linspace(0,90000);

h1=patch([0,90000,90000,0],[70,70,130,130],[132 186 91]./190,'EdgeColor',[132 186 91]./190,'LineWidth',0.0001);

h2=patch([0,90000,90000,0],[130,130,180,180],[144 103 167]./170,'EdgeColor',[144 103 167]./170,'LineWidth',0.0001);

h3=patch([0,90000,90000,0],[180,180,300,300],[128 133 133]./140,'EdgeColor',[128 133 133]./140,'LineWidth',0.0001);

h4=patch([0,90000,90000,0],[0,0,70,70],[128 133 133]./140,'EdgeColor',[128 133 133]./140,'LineWidth',0.0001);

p1=plot(Simoutput2.t,Simoutput2.x1,'-.','color',[0 0 1],'LineWidth',lw);

p2=plot(Simoutput1.t,Simoutput1.x1,'color',	[1 0 0],'LineWidth',lw);

lgnd1=legend('Safe Zone','Warning Zone','Dangerous Zone','','Backstepping','Adaptive Backstepping','NorthWest');set(lgnd1,'color','w','EdgeColor','k','FontSize',8);

xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Blood Glucose Level';'G (mg/dl)'},'FontSize',fs,'FontName','cambria');

hold off;

figure(2);hold on;
h5=patch([0,90000,90000,0],[-20,-20,100,100],[128 133 133]./140,'EdgeColor',[128 133 133]./140,'LineWidth',0.0001);
plot(Simoutput2.t,Simoutput2.u,'-.','color',[204 37 41]./255,'LineWidth',lw);
plot(Simoutput1.t,Simoutput1.u,'--','color',[57 106 177]./255,'LineWidth',lw);
lgnd=legend('','Backstepping','Adaptive Backstepping');set(lgnd,'color','w','EdgeColor','k');
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Insulin Injection Rate';'u (\muU/ml/min)'},'FontSize',fs,'FontName','cambria');
hold off;

figure(3);hold on;
h9=patch([0,90000,90000,0],[-10,-10,20,20],[128 133 133]./140,'EdgeColor',[128 133 133]./140,'LineWidth',0.0001);
plot(Simoutput1.t,Simoutput1.D,'-.','color',[204 37 41]./255,'LineWidth',lw);
plot(Simoutput1.t,Simoutput1.Dhat,'--','color',	[57 106 177]./255,'LineWidth',lw);
lgnd=legend('','$\it D$','$$\hat{D}$$','Interpreter','Latex');set(lgnd,'color','w','EdgeColor','k','FontSize',fs+1,'FontName','cambria');
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Disturbance Estimation of Food Intake';'(mg/dl/min)'},'FontSize',fs,'FontName','cambria');
hold off;

