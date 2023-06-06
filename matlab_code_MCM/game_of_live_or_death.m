%Game of Live or Death
clc;
clear;
n=500;
LoD=zeros(n);%Define a Live or Death n*n matrix.
Eg=zeros(n+2);%Define edge conditions matrix.
LoD(56:n,56:n)=rand<0.7;%Initialize some of the middle elements.
lod=imagesc(LoD);%Draw the matrix's graph.
while 1
    Eg(2:n+1,2:n+1)=LoD;
    SumValue=Eg(1:n,1:n)+Eg(1:n,2:n+1)+Eg(1:n,3:n+2)+Eg(2:n+1,1:n)+Eg(2:n+1,3:n+2)+Eg(3:n+2,1:n)+Eg(3:n+2,2:n+1)+Eg(3:n+2,3:n+2);
    %Sumvalue is an intermediate variable,meanly to be used to do
    %determination
    for i=1:n
        for j=1:n
            if (SumValue(i,j)==3||(SumValue(i,j)==2&&LoD(i,j)==1))
                LoD(i,j)=1;
            else
                LoD(i,j)=0;
            end
        end
    end
    set(lod,'cdata',LoD);
pause(0.02);
end