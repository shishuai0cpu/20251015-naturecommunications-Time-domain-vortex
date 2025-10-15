clear
close all


clc;clear all;
%基本参数
c=3.0e8;
mu=4.0*pi*1.0e-7;                                  
epsilon=1.0/(c*c*mu);
z0=sqrt(mu/epsilon);
q1=0.03;
f0=1e-7;
q2=20*q1;
l=1;


% 使用的xyz位置
xmin=-0.5;
xmax=0.5;
ymin=-0.5;
ymax=0.5;
zmin=0.4;
zmax=zmin;

xaccuracy=0.01000000000001;
yaccuracy=0.01000000000001;
zaccuracy=0.01000000000001;

x=xmin:xaccuracy:xmax;
y=ymin:yaccuracy:ymax;
z=zmin:zaccuracy:zmax;


t=z/c-20*q1/c:0.1*q1/c:z/c+20*q1/c;
tt=t;


[x,t,y]=meshgrid(x,t,y);

ex=real(((mu./epsilon).^(1./2).*((2.*f0.*exp(l.*atan2(y, x).*1i).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l).*(2.*z + q2.*1i - q1.*1i))./(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^3 + (f0.*exp(l.*atan2(y, x).*1i).*abs(l).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2) + (2.*c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2))./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^3) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*(abs(l) - 1).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 2).*(abs(x).^2 + abs(y).^2))./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^4) - (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*(2.*z + q2.*1i - q1.*1i).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2)).*1i)./c);
ey=real(-((mu./epsilon).^(1./2).*((2.*f0.*exp(l.*atan2(y, x).*1i).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l).*(2.*z + q2.*1i - q1.*1i))./(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^3 + (f0.*exp(l.*atan2(y, x).*1i).*abs(l).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2) + (2.*c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2))./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^3) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*(abs(l) - 1).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 2).*(abs(x).^2 + abs(y).^2))./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^4) - (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*(2.*z + q2.*1i - q1.*1i).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2)))./c);
ez=real(-((((4.*f0.*exp(l.*atan2(y, x).*1i).*abs(x).*sign(x).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l))./(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^3 + (f0.*l.*exp(l.*atan2(y, x).*1i).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l).*(imag(x) + real(y)).*1i)./(((imag(x) + real(y)).^2 + (imag(y) - real(x)).^2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2) - (f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(x).*sign(x).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1))./((abs(x).^2 + abs(y).^2).^(1./2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i)) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(x).*sign(x).*(abs(l) - 1).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 2).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^3) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(x).*sign(x).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*1i)./((abs(x).^2 + abs(y).^2).^(1./2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^2) - (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(x).*sign(x).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*2i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2) + (c.*f0.*l.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*(imag(x) + real(y)))./(((imag(x) + real(y)).^2 + (imag(y) - real(x)).^2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^2)).*1i)./c - ((4.*f0.*exp(l.*atan2(y, x).*1i).*abs(y).*sign(y).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l))./(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^3 + (f0.*l.*exp(l.*atan2(y, x).*1i).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*(imag(y) - real(x)).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l).*1i)./(((imag(x) + real(y)).^2 + (imag(y) - real(x)).^2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2) - (f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(y).*sign(y).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1))./((abs(x).^2 + abs(y).^2).^(1./2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i)) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(y).*sign(y).*(abs(l) - 1).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 2).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^3) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(y).*sign(y).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*1i)./((abs(x).^2 + abs(y).^2).^(1./2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^2) - (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(y).*sign(y).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*2i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2) + (c.*f0.*l.*exp(l.*atan2(y, x).*1i).*abs(l).*(imag(y) - real(x)).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2))./(((imag(x) + real(y)).^2 + (imag(y) - real(x)).^2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^2))./c).*(mu./epsilon).^(1./2));



t2=squeeze(tt)*1e9;
shiyuxinghao_ex2=ex;
shiyuxinghao_ey2=ey;
shiyuxinghao_ez2=ez;


draw_isosurface(1,shiyuxinghao_ex2,-t2,0.3,-0.5,0.5,100)
xlim([-0.5,0.5])
ylim([-0.5,0.5])
zlim([-2.8,-0.7])

draw_isosurface(2,shiyuxinghao_ey2,-t2,0.3,-0.5,0.5,100)
xlim([-0.5,0.5])
ylim([-0.5,0.5])
zlim([-2.8,-0.7])

draw_isosurface(3,shiyuxinghao_ez2,-t2,0.3,-0.5,0.5,100)
xlim([-0.5,0.5])
ylim([-0.5,0.5])
zlim([-2.8,-0.7])


for figu=1:3
figure(figu)

xticks([-0.5,0,0.5])
yticks([-0.5,0,0.5])
zticks([-2,-1])
set(gca,'Zticklabels',{'2','1'},'fontname','times new roman','fontsize',40)
set(gca,'Xticklabels',{'-0.5','0','0.5'},'fontname','times new roman','fontsize',40)
set(gca,'Yticklabels',{'-0.5','0','0.5'},'fontname','times new roman','fontsize',40)



   l1 = light;
l1.Style = 'infinite';
l1.Position = [0.5 -0.5 -20];

    l1 = light;
l1.Style = 'infinite';
l1.Position = [-0.5 0.5 -20];

view(44.0290,49.8294)
xlim([-0.5,0.5])
zlim([-2.8,-0.7])
ylim([-0.5,0.5])

end


%%
function draw_isosurface(figurei,aaaa,ti,shuzhi,amin,amax,ashuliang)
aaaa=permute(aaaa,[2 3 1]);
figure(figurei)
f=real(aaaa)/max(max(max(real(aaaa))));
[z,x,y]=meshgrid(linspace(amin,amax,ashuliang),linspace(amin,amax,ashuliang),ti);
p1 = patch(isosurface(z,x,y,f,-shuzhi));
isonormals(z,x,y,real(aaaa),p1)
p1.FaceColor = 'blue';
p1.EdgeColor = 'none';
view(3)
camlight 
camproj perspective
lighting gouraud
% alpha(.5)
box on
hold on


figure(figurei)
f=real(aaaa)/max(max(max(real(aaaa))));
[z,x,y]=meshgrid(linspace(amin,amax,ashuliang),linspace(amin,amax,ashuliang),ti);
p1 = patch(isosurface(z,x,y,f,shuzhi));
isonormals(z,x,y,real(aaaa),p1)
p1.FaceColor = 'red';
p1.EdgeColor = 'none';
view(3)
camlight 
camproj perspective
lighting gouraud
% alpha(.5)
box on
hold on

end
