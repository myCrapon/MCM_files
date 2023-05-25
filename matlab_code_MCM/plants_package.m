% function ep_1
% options=odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-5]);
% [T,Y]=ode45(@rigid,[0 12],[0 0 1],options);
% plot(T,Y(:,1),'-',T,Y(:,2),'-.',T,Y(:,3),'.')
% 
% function dy=rigid(t,y)
% dy=zeros(3,1);
% dy(1)=y(2)*y(3);
% dy(2)=-y(1)*y(3);
% dy(3)=-0.51 *y(1) *y(2);

function ep1_1
options = odeset('RelTol',1e-4,'AbsTol',[1e-4 1e-4 1e-5]);
[T,Y] = ode45(@rigid,[0 12],[0 1 1],options);
plot(T,Y(:,1),'-',T,Y(:,2),'-.',T,Y(:,3),'.')

function dy = rigid(t,y)
dy = zeros(3,1);    
dy(1) = y(2) * y(3);
dy(2) = -y(1) * y(3);
dy(3) = -0.51 * y(1) * y(2);
