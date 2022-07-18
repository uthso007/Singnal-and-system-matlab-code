%Static (Memoryless) and Dynamic (with Memory) Systems 
set (gcf,'Position', [100 50 800 600])

t1 = -3:.1:0;
x1 =zeros(size(t1));
t2 = 0:.1:1;
x2 = ones(size(t2));
t3 = 1:.1:3;
x3 = zeros(size(t3));
t = [t1 t2 t3];
x = [x1 x2 x3];
subplot(2,1,1);
plot(t,x,'red');
title('static system','color','red')
ylim([-0.1 1.1]);
legend('x(t)')

subplot(2,1,2);
plot(t,3*x,'red');
title('dynamic system','color','red')
ylim([-0.1 3.1]);
legend('y(t)')