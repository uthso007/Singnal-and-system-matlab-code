%(i) Sinusoidal signals 
set (gcf,'Position', [100 50 800 600])


%range_of_t = pi/2:0.01:9*pi/2;
range_of_t = 0:0.01:10;
y=cos(range_of_t);
subplot(311)
plot(range_of_t,y,'red');
grid on
legend('cos(t)','Location','northeast')
legend('boxoff')
title('(i) cos(t)', 'color','red')
xlabel({'<---range of t --->';''})
ylabel('cos(t)')

%(ii) x(t) = 3cos(3*pi*t+pi/3)
a = 3;
w = 3*pi;
alpha = pi/3;
T = 2*pi/w;
t = 0:0.01:4*T;
x = 3*cos(3*pi*t + pi/3);
subplot(312)
plot(t, x, 'red')
grid on
legend('3cos(3*\pi*t + \pi/3)','Location','SouthEast')
legend('boxoff')
title('(ii) 3cos(3*\pi*t + \pi/t)', 'color','red')
xlabel({'<---range of t --->';''})
ylabel('cos(t)')


%(iii) Exponential signals
B=2; 
range_of_t=0:0.5:10; 
 
y=exp(range_of_t/2);
subplot(313) 
plot(range_of_t,y,'red') 
grid on
legend('y(t)','Location','SouthEast')
legend('boxoff')
title('(iii) exp(t)','color','r')
xlabel({'<---range of t --->';''})
ylabel('y(t)')