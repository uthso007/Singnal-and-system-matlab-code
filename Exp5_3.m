%Linear and non linear system
set (gcf,'Position', [100 50 800 600])


t =-3:.1:3;
x1 = heaviside(t)- heaviside(t-1);  %x1(t)=u(t)-u(t-1) 
x2 = heaviside(t)-heaviside(t-2);   %x1(t)=u(t)-u(t-2)

a1 = 2; a2 = 3;
z = a1*x1+a2*x2;  % S{a1x1(t) + a2x2(t)} 
y = 2*z;
subplot(2,2,1)
plot(t,y, 'red');
ylim([-1 11])

z1 =2*x1;  
z2 = 2*x2; 
y =a1*z1+a2*z2;   %a1S{x1(t)} + a2S{x2(t)}
subplot(2,2,2)
plot(t,y, 'red');
ylim([1 11]); 

%The signal is linear
%linearity check for  y(t) = x2(t).
t =-3:.1:3;
x1 = heaviside(t)- heaviside(t-1);
x2 = heaviside(t)-heaviside(t-2); 
a1 = 2; a2 = 3;
z = a1*x1+a2*x2; 
y = z.^2;
subplot(2,2,3);
plot(t,y, 'red');
ylim([-1 26]);

z1=x1.^2;
z2=x2.^2;
y=a1*z1+a2*z2;
subplot(2,2,4);
plot(t,y, 'red'); 
ylim([-1 6]);

%not linear
