clc
%page22
%问题1程序codel.m
%%argument

m_f=4866;

mu l=1335.535;

eta i=10000;

lambda_i=656.3616; 

k=80000; 

rho=1025;

g=9.8; 

R f=1;

f=6250;

omega=1.4005; 

m_z=2433;

x_0=[0 0 0 0];

tspan=[0:0:2:180];

%%num
[t,x]=ode45(@(t,x)funcl(t,x),tspan,x_0);

%%plot
plot(t,x(:,1),'-',t,x(:,3),'-');
