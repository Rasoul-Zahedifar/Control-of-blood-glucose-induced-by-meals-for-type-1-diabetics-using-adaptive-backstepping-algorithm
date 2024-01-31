function output1=control_law4adaptive(in)
global k1 k2 k3 A1 A2 A3 B1 B2 B3 Ginfinity G0 landa
t=in(1);
x1=in(2);
x2=in(3);
x3=in(4);
Dhat=in(5);
G0=in(6);

t=t/60;
D1=0;D2=0;D3=0;

nn=5;


if t>=(2*1440/24)
    tt1=t-(2*1440/24);
    D1=A1*exp(-B1*tt1)-A1*exp(-nn*B1*tt1);

end

if t>=(8*1440/24)
    tt2=t-(8*1440/24);
    D2=A2*exp(-B2*tt2)-A2*exp(-nn*B2*tt2);

end

if t>=(14*1440/24)
    tt3=t-(14*1440/24);
    D3=A3*exp(-B3*tt3)-A3*exp(-nn*B3*tt3);

end

D=50*(D1+D2+D3);

Gb=90; Ib=7; n=0.2814;
p1=0; p2=0.0142;
p3=1.54*10^(-5);
taw=100;

x1des=Ginfinity+(G0-Ginfinity)*exp(-t/taw);
x1des_dot=-(1/taw)*(G0-Ginfinity)*exp(-t/taw);
x1des_ddot=(1/taw)*(1/taw)*(G0-Ginfinity)*exp(-t/taw);
x1des_dddot=-(1/taw)*(1/taw)*(1/taw)*(G0-Ginfinity)*exp(-t/taw);



x1_dot=-p1*x1+p1*Gb-x1*x2+D;
x11_dot=-p1*x1+p1*Gb-x1*x2+Dhat;

x2_dot=-p2*x2+p3*(x3-Ib);

Dhat_ddot=landa*(x11_dot-x1des_dot);
Dhat_dot=landa*(x1-x1des);

x1_ddot=-p1*x11_dot-x11_dot*x2-x1*x2_dot+Dhat_dot;

x2des=(1/x1)*(-x1des_dot+k1*(x1-x1des)-p1*(x1-Gb)+Dhat);


x2des_dot=(-1/x1^2)*(-x1des_dot+k1*(x1-x1des)-p1*(x1-Gb)+Dhat)+(1/x1)*(-x1des_ddot+k1*(x11_dot-x1des_dot)-p1*(x11_dot)+Dhat_dot);
x2des_ddot=(1/(2*x1^(3/2)))*(-x1des_dot+k1*(x1-x1des)-p1*(x1-Gb)+Dhat)+(-1/x1^2)*(-x1des_ddot+k1*(x11_dot-x1des_dot)-p1*(x11_dot)+Dhat_dot)+(-1/x1^2)*(-x1des_ddot+k1*(x11_dot-x1des_dot)-p1*(x11_dot)+Dhat_dot)+(1/x1)*(-x1des_dddot+k1*(x1_ddot-x1des_ddot)-p1*x1_ddot+Dhat_ddot);


x3des=Ib+(1/p3)*(p2*x2+x2des_dot-k2*(x2-x2des));
x3des_dot=(1/p3)*(p2*x2_dot+x2des_ddot-k2*(x2_dot-x2des_dot));

u=n*(x3-Ib)+x3des_dot-k3*(x3-x3des);

x3_dot=-n*x3+n*Ib+u;

output1=[x1_dot;x2_dot;x3_dot;Dhat_dot];

