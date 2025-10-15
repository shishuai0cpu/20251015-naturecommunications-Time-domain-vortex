
clc;clear all;
close all
%基本参数
c=3.0e8;
mu=4.0*pi*1.0e-7;                                  
epsilon=1.0/(c*c*mu);
z0=sqrt(mu/epsilon);
count1=0;
q1=0.03;
f0=1e-7;
count1=count1+1;
disp(count1)
count2=0;
q2=20*q1;
l=1;
count2=count2+1;


% 使用的xyz位置
xmin=0;
xmax=0.75;
ymin=0;
ymax=0;

zmin=0.4;
zmax=zmin;

xaccuracy=0.01000000000001;
yaccuracy=0.01000000000001;
zaccuracy=0.01000000000001;

x=xmin:xaccuracy:xmax;
y=ymin:yaccuracy:ymax;
z=zmin:zaccuracy:zmax;


t=z/c-20*q1/c:0.02*q1/c:z/c+20*q1/c;
tt=t;


[y,t]=meshgrid(y,t);

ex=real(((mu./epsilon).^(1./2).*((2.*f0.*exp(l.*atan2(y, x).*1i).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l).*(2.*z + q2.*1i - q1.*1i))./(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^3 + (f0.*exp(l.*atan2(y, x).*1i).*abs(l).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2) + (2.*c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2))./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^3) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*(abs(l) - 1).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 2).*(abs(x).^2 + abs(y).^2))./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^4) - (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*(2.*z + q2.*1i - q1.*1i).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2)).*1i)./c);
ey=real(-((mu./epsilon).^(1./2).*((2.*f0.*exp(l.*atan2(y, x).*1i).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l).*(2.*z + q2.*1i - q1.*1i))./(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^3 + (f0.*exp(l.*atan2(y, x).*1i).*abs(l).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2) + (2.*c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2))./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^3) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*(abs(l) - 1).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 2).*(abs(x).^2 + abs(y).^2))./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^4) - (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*(2.*z + q2.*1i - q1.*1i).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2)))./c);
ez=real(-((((4.*f0.*exp(l.*atan2(y, x).*1i).*abs(x).*sign(x).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l))./(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^3 + (f0.*l.*exp(l.*atan2(y, x).*1i).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l).*(imag(x) + real(y)).*1i)./(((imag(x) + real(y)).^2 + (imag(y) - real(x)).^2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2) - (f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(x).*sign(x).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1))./((abs(x).^2 + abs(y).^2).^(1./2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i)) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(x).*sign(x).*(abs(l) - 1).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 2).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^3) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(x).*sign(x).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*1i)./((abs(x).^2 + abs(y).^2).^(1./2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^2) - (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(x).*sign(x).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*2i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2) + (c.*f0.*l.*exp(l.*atan2(y, x).*1i).*abs(l).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*(imag(x) + real(y)))./(((imag(x) + real(y)).^2 + (imag(y) - real(x)).^2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^2)).*1i)./c - ((4.*f0.*exp(l.*atan2(y, x).*1i).*abs(y).*sign(y).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l))./(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^3 + (f0.*l.*exp(l.*atan2(y, x).*1i).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*(imag(y) - real(x)).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^abs(l).*1i)./(((imag(x) + real(y)).^2 + (imag(y) - real(x)).^2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2) - (f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(y).*sign(y).*(c.*(- q2 + z.*1i + c.*t.*1i).*1i - c.*(q1 + z.*1i - c.*t.*1i).*1i).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1))./((abs(x).^2 + abs(y).^2).^(1./2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i)) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(y).*sign(y).*(abs(l) - 1).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 2).*1i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^3) + (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(y).*sign(y).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*1i)./((abs(x).^2 + abs(y).^2).^(1./2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^2) - (c.*f0.*exp(l.*atan2(y, x).*1i).*abs(l).*abs(y).*sign(y).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2).*2i)./((abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).^2.*(q1 + z.*1i - c.*t.*1i).^2) + (c.*f0.*l.*exp(l.*atan2(y, x).*1i).*abs(l).*(imag(y) - real(x)).*((abs(x).^2 + abs(y).^2).^(1./2)./(q1 + z.*1i - c.*t.*1i)).^(abs(l) - 1).*(abs(x).^2 + abs(y).^2).^(1./2))./(((imag(x) + real(y)).^2 + (imag(y) - real(x)).^2).*(abs(x).^2 + abs(y).^2 - (- q2 + z.*1i + c.*t.*1i).*(q1 + z.*1i - c.*t.*1i)).*(q1 + z.*1i - c.*t.*1i).^2))./c).*(mu./epsilon).^(1./2));

w=0.5:0.1:12;
w=w*1e9;
for i=1:length(w)
fff(i,:)=exp(-1i*2*pi*w(i)*tt);
end

fex=fff*ex;
fey=fff*ey;
fez=fff*ez;

fex=rot90(flip(fex,2));
fey=rot90(flip(fey,2));
fez=rot90(flip(fez,2));

cccc=0.01:0.01:0.75;

%%


figure
s1=surf(w,0.01:0.01:0.75,abs(fex));
s1.EdgeColor='none';
cccc=0.01:0.01:0.75;
[~,I]=max(abs(fex),[],1);
hold on
hold on
colormap(mymaphot)
view(2)
xlim([1.5*1e9,8.2*1e9])

 xticks([2e9,4e9,6e9,8e9])
yticks([0.02,0.2,0.4,0.6])
set(gca,'Xticklabels',{'2','4','6','8'},'fontname','times new roman','fontsize',40)
set(gca,'Yticklabels',{'0','0.2','0.4','0.6'},'fontname','times new roman','fontsize',40)

daspect([0.7*1e9 0.1,1])

xlim([1.5*1e9,8.2*1e9])
ylim([0.02,0.75])

