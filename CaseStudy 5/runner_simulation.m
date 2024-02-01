clear 
clc
close all

global k1 k2 k3 A1 A2 A3 B1 B2 B3 Ginfinity landa



k1=0.43; k2=0.46; k3=0.62;    
   
landa=0.001;

Ginfinity=100; 



A1=0.4; B1=0.01;
A2=0.6; B2=0.01;
A3=0.5; B3=0.01;


sim('Sim4adaptive')
close all
Simoutput1=ans;

sim('without_treatment')
close all
Simoutput2=ans;

lw=2;fs=13;

figure(1);hold on;
y=linspace(0,700);
x=linspace(0,90000);

h1=patch([0,90000,90000,0],[70,70,130,130],[132 186 91]./190,'EdgeColor',[132 186 91]./190,'LineWidth',0.0001);
h2=patch([0,90000,90000,0],[130,130,180,180],[144 103 167]./170,'EdgeColor',[144 103 167]./170,'LineWidth',0.0001);
h3=patch([0,90000,90000,0],[180,180,700,700],[128 133 133]./140,'EdgeColor',[128 133 133]./140,'LineWidth',0.0001);
h4=patch([0,90000,90000,0],[0,0,70,70],[128 133 133]./140,'EdgeColor',[128 133 133]./140,'LineWidth',0.0001);

plot(Simoutput1.t,Simoutput1.x11,'k','LineWidth',lw);
plot(Simoutput1.t,Simoutput1.x21,'m','LineWidth',lw);
plot(Simoutput1.t,Simoutput1.x31,'c','LineWidth',lw);
plot(Simoutput1.t,Simoutput1.x41,'g','LineWidth',lw);
plot(Simoutput1.t,Simoutput1.x51,'y','LineWidth',lw);
plot(Simoutput1.t,Simoutput1.x61,'r','LineWidth',lw);
plot(Simoutput2.t,Simoutput2.x11,'k:','LineWidth',lw);
plot(Simoutput2.t,Simoutput2.x21,'m:','LineWidth',lw);
plot(Simoutput2.t,Simoutput2.x31,'c:','LineWidth',lw);
plot(Simoutput2.t,Simoutput2.x41,'g:','LineWidth',lw);
plot(Simoutput2.t,Simoutput2.x51,'y:','LineWidth',lw);
plot(Simoutput2.t,Simoutput2.x61,'r:','LineWidth',lw);

lgnd=legend('Safe Zone','Warning Zone','Dangerous Zone','','','','','','','Adaptive Backstepping','','','','','','untreated','Location','NorthWest');set(lgnd,'color','w','EdgeColor','k','FontSize',9);
xlabel('t (s)','FontSize',fs,'FontName','cambria');ylabel({'Blood Glucose Level';'G (mg/dl)'},'FontSize',fs,'FontName','cambria');
