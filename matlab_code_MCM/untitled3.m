%define varible.
syms t
%define Drought element.
       a1 =        9.4  ;
       b1 =    0.012212  ;
       c1 =      0.7977  ;
       a2 =       6.432  ;
       b2 =     0.00011  ;
       c2 =      0.4719  ;
       a3 =       7.762  ;
       b3 =     0.0052  ;
       c3 =       0.44  ;
       a4 =       1.8  ;
       b4 =      0.0073  ;
       c4 =      3.554  ;
       a5 =       1.526  ;
       b5 =     0.03123  ;
       c5 =      22.212  ;
       a6 =        1.71  ;
       b6 =      0.246  ;
       c6 =      2.055  ;
       a7 =       1.524  ;
       b7 =      0.6201  ;
       c7 =      21.504  ;
       %define t.
       t=1:0.001:600;
       %drought function.
D=a1*sin(b1*t+c1)+a2*sin(b2*t+c2)+a3*sin(b3*t+c3)+a4*sin(b4*t+c4)+a5*sin(b5*t+c5)+a6*sin(b6*t+c6)+a7*sin(b7*t+c7);
F=3.5*D;
%define species1.
Nm1=50;
N01=5;
s1=0.002;
r1=10;
N1=power((1+((power(Nm1,s1)/power(N01,s1))-1)*(exp(-s1*r1*t))),1/s1);
N1=Nm1./N1;
%define species2.
Nm2=298;
N02=100;
s2=0.0008;
r2=10;
N2=power((1+((power(Nm2,s2)/power(N02,s2))-1)*(exp(-s2*r2*t))),1/s2);
N2=Nm2./N2;
%define species3.
Nm3=689;
N03=100;
s3=0.001;
r3=9;
N3=power((1+((power(Nm3,s3)/power(N03,s3))-1)*(exp(-s3*r3*t))),1/s3);
N3=Nm3./N3;
%define species4.
Nm4=1445;
N04=100;
s4=0.0009;
r4=8;
N4=power((1+((power(Nm4,s4)/power(N04,s4))-1)*(exp(-s4*r4*t))),1/s4);
N4=Nm4./N4;
%define mutli species.
a=3;
b=2;
c=1;
d=1;
Y1=a*N1+b*N2+c*N3+d*N4;
%draw graph.
%plot(t,N1,t,N2,'r',t,N3,'g',t,N4,'b',t,Y1);

%take moss.111&arbor.111
Y2=Y1-1.2*exp(0.32*D);

plot(t,Y2,t,Y1);

%take drought into account.444444
Y2=Y1-1.2*exp(0.32*D);
plot(t,Y2,t,Y1);

%fopen("pollution_severe_no_arbor.eps")

%pullotion taken into account.
L1=2*t;
Y3=Y2-L1;
plot(t,Y1,'g',t,Y2);
fopen("1234different_frequnce_faster.eps")



