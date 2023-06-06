clc
clear
s1={'wuqiong_Zhao','is','yyds','!'};
s2={'that','is','the','turth'};
s3=strcmp(s1,s2)
size(s1)
disp(s1)
disp(s2)
disp(s3)
[r,c]=size(s2);%size():abtain a Matrix's row and column; 
limt=0.5;
s={0.5,0.5;
    0.5,0.5};
count=0;
while 1
    num=rand(2,2);
    s=s+num;
    if min(s,[],'all')>=limt
        break
    end
    count=count+1;
    disp(num);
end
s;
count;
imagesc(s)

