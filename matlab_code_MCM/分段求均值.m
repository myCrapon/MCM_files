clc
clear
x_500= randi([-3,3],1,50000)*0.5;
anum = 1000;%anum 个数进行一次均值处理
for i=1:1:floor(length(x_500)/anum)
    num = anum;
    temp = 0; 
    while(num~=0)
       temp = x_500((i-1)*anum+num)+temp;
       num = num-1;
    end
        codeRecord(i) = temp/anum;
  
end
figure(1)
plot(codeRecord,'b-*','linewidth',1.0);
ylim([-5 5])
