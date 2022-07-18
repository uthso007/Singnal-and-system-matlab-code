set (gcf,'Position', [100 50 800 600])

% Causal and Non-causal Systems  
t1=-3:.1:0;
x1=zeros(size(t1));
t2=0:.1:1;
x2=ones(size(t2));
t3=1:.1:3;
x3=zeros(size(t3));
t=[t1 t2 t3];
x=[x1 x2 x3];


subplot(3,1,1);
plot(t,x,'red');
title('input signal','color','red')
xlim([-3 3]); 
legend('x(t)')

subplot(3,1,2);
plot(t-1,x,'red');
title('causal signal','color', 'red')
xlim([-3 3]);  
legend('y1(t)')

subplot(3,1,3);
plot(t+1,x,'red');
title('non causal signal','color','red')
xlim([-3 3]); 
legend('y2(t)','Location','NorthWest')
