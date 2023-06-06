clc
clear
%define number of iteration.
k=1000;
%define plant community.
n=10000;
plantcom=zeros(n);
%define species.
moss=2;
glassland=3;
shrub=10;
abror=1;
%define growth.
%define Drought-Stricken.
Pdsplignt=0.1;
Pdspmiddle=0.02;
Pdspsevere=0.005;
%get initial varible,glassland is a example.
plantcom=moss;
%interaction of the species rules.
imh = image(cat(3,plantcom,plantcom,plantcom));  
Sd=zeros(n+2);                
for i=1:k
    Sd(2:n+1,2:n+1) = plantcom;
    sumValue = (Sd(1:n,1:n)==0)+(Sd(1:n,2:n+1)==0)+(Sd(1:n,3:n+2)==0)+(Sd(2:n+1,1:n)==0)+(Sd(2:n+1,3:n+2)==0)+(Sd(3:n+2,1:n)==0)+(Sd(3:n+2,2:n+1)==0)+(Sd(3:n+2,3:n+2)==0);
    for p=1:n
        for q=1:n
            if(plantcom(p,q)==2 && ((sumValue(p,q)>0)||rand()<Pmoss))
                %首先要是树，而且需要邻居有火，就会一定概率着火;或者被雷劈了,就会直接着火
                plantcom(p-1,q-1)=1;plantcom(p-1,q)=1;plantcom(p-1,q+1)=1;
                plantcom(p,q-1)=1;plantcom(p,q+1)=1;
                plantcom(p+1,q-1)=1;plantcom(p+1,q)=1;plantcom(p+1,q+1)=1;
            elseif(plantcom(p,q)==0&&rand()>Pdsplight)
                plantcom=2*(rand()<Pmoss);
            end
        end
    end
    set(imh, 'cdata', cat(3,(plantcom==1),(plantcom==2),zeros(n)))
    drawnow  
end
