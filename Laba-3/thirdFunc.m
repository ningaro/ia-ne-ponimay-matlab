%ex. 1
x = -3:0.0001:3;
y1 = exp(x);
y2 = x.^2;
y3 = x;
plot(x, y1, '-r', x, y3, '-b', x, y2, '-g');
legend('y = e^x', 'y = x', 'y = x^2');
axis square;
grid on;
str = input('Input anything to close exercise 1');
clf;

%ex. 2
x = 0; x1 = 0; x2 = -10:0.000001:0; x3 = 0:0.000001:10;
y = 0; y1 = 0; y2 = 0; y3 = 0;
for i = 1:11 %11 because x<=0
x(i)= -11+i;
end
for i = 1:11
x1(i) = -1+i;
end
y = 3 .* sin(x)-cos(x).^2; y2 = 3 .* sin(x2)-cos(x2).^2;
y1 = (3.*(1+x1.^2).^1/2)./(log(x1 + 5)); y3 = (3.*(1+x3.^2).^1/2)./(log(x3 + 5));
plot(x2, y2, '-g', x3, y3, '-g', x, y, '-sm', x1, y1, '-sm');
legend('Matlab vector func','','For i to n func','');
axis square;
grid on;
xlim([-5, 5]);
xlabel('X axis');
ylabel('Y axis');