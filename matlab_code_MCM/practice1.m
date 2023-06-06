%%奇偶规则游戏
clear;%清除工作空间的内容
clc;%重置命令行窗口
n = 100;%指定边界长度，即n阶矩阵的行列数,注意，本题中n必须大于5.
Se=zeros(n);%定义一个n阶矩阵，矩阵的所有元素为0.
Se(n/2-2:n/2+2,n/2-2:n/2+2)=1;  %初始化中间的一个5*5的矩阵，初始化值为1.
Ch = imagesc(Se);%imagesc（）：获取Se的矩阵图像，并且将不同的值变为不同的颜色，
%且自动适应大小，即image scaled（）。

axis square;%axis 创建一个轴心正方形
Sd = zeros(n+2);  %边界，获取奇偶游戏的边界
while(true) %死循环
    Sd(2:n+1,2:n+1) = Se;
    sumValue = Sd(1:n,2:n+1)+Sd(3:n+2,2:n+1)+Sd(2:n+1,1:n)+Sd(2:n+1,3:n+2);
    Se = mod(sumValue,2); 
    set(Ch,'cdata',Se);
    pause(0.01)
end
