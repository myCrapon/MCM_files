syms t
Nm=1000;
N0=5;
s=0.01;
r=0.1;
t=1:1:8000;
N1=power((1+((power(Nm,s)/power(N0,s))-1)*(exp(-s*r*t))),1/s);
N=zeros(8000,1);
for i=1:1:8000
    N(i)=Nm/N1(i);
end
plot(t,N)