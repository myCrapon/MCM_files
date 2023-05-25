%问题1程序funcl.m

function dxdt=funcl(t,x)

m f=4866; 

mu l=1335.535;

eta_i=10000;

lambda_i=656.3616;

k=80000; 

rho=1025;

g=9.8;

R f=1;

f=6250;

omega=1.4005;

m_z=2433;

dxdt=zeros(4,1);

%page23
dxdt(1)=x(2);

(2)=(f*cos(

dxdi(2)=(f*cos(omega "t) - eta_i*(x(2)- x(4))*sqrt(abs(x(2) -x(4)))-lambda_i*x(2)-k*( x(1)-x(3))-tho"g*pi*R_f2

(1mm+」m)/((1)x dxdt(3)=x(4);

dxdt(4)=(-eta_i"(x(4)-x(2))*sqrt(abs(x(2)-x(4))-k*(x(3) dxd(4)

x(4)))-k*(x(3)-x(1)))/m_z 20

end
