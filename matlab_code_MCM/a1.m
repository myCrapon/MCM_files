clc
moisture=table2array(matlab22);
fn1=zeros(120,1);
for i=1:1:120
    k=find(moisture(:,2)>=(10.6+0.2*i)&moisture(:,2)<(10.8+0.2*i));
    fn1(i)=size(k,1);
end
sum22=0;
mygraph=zeros(120,2);
for i=1:1:120
    mygraph(i,2)=fn1(i);
    mygraph(i,1)=10.6+0.2*i;
end
disp(mygraph)
plot(mygraph(:,1),mygraph(:,2))
