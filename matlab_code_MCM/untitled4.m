clc
clear
%define number of iteration.
k=1000;
%define plant community.
m=10000;
n=10000;
plantcom=zeros(m,n);
%define species.
glassland=2;
wood=3;
tree=10;
wheat=1;
%define Drought-Stricken.
Pdsplignt=0.1;
Pdspmiddle=0.02;
Pdspsevere=0.005;
%get initial varible,glassland is a example.
plantcom(n/2-2:n/2+2)=glassland;
%interaction of the species rules.
UL = [n,1:n-1]; DR = [2:n,1];      % 定义上左，下右邻居
veg=zeros(n,n)+2;                    % 初始化表示森林的矩阵
imh = image(cat(3,veg,veg,veg));   % 可视化表示森林的矩阵
Sd = zeros(n+2);                 %边界
% veg = 空地为0 着火为1 树木为2
for i=1:k
    Sd(2:n+1,2:n+1) = veg;
    sumValue = (Sd(1:n,2:n+1)==1)+(Sd(2:n+1,1:n)==1)+(Sd(2:n+1,3:n+2)==1)+(Sd(3:n+2,2:n+1)==1);
    for p=1:n
        for q=1:n
            if(veg(p,q)==2 && ((sumValue(p,q)>0 && rand()<P2)||rand()<Plight))
                %首先要是树，而且需要邻居有火，就会一定概率着火;或者被雷劈了,就会直接着火
                veg(p,q)=1;
            elseif(veg(p,q)==1&&rand()<Pground)
                %如果是火且满足概率，则变为空地
                veg(p,q) = 0;
            elseif(veg(p,q)==0&&sumValue(p,q)==0&&rand()<Pgrowth)
                %如果是空地，且周围没有火，那么以一定概率长成树
                veg(p,q) = 2;
            end
        end
    end
    set(imh, 'cdata', cat(3,(veg==1),(veg==2),zeros(n)))
    drawnow  
end
