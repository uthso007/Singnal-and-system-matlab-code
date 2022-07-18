%time invariant
t=-5:.1:10;
x=heaviside(t+2)- heaviside(t-2);
subplot(2,3,1);
plot(t,x, 'red'); 
ylim([-.1 1.1]);

subplot(2,3,2);
plot((1/2)*t,x, 'red');
ylim([-.1 1.1]);

subplot(2,3,3);
plot((1/2)*t+2,x, 'red');
ylim([-.1 1.1]);
legend('y1(t)');
title('Time Invariant System');
%time varient
subplot(2,3,4);
plot(t+2,x, 'red'); 
ylim([-.1 1.1]);

t=-5:.1:10;
x2=heaviside(t)-heaviside(t-4);
subplot(2,3,5);
plot(t,x2, 'red'); ylim([-.1 1.1]);

subplot(2,3,6);
plot((1/2)*t,x2, 'red');
ylim([-.1 1.1]);
legend('y2(t)')
title('Time variant System');
