clc
clear
x0 = [1;1;1;1;1;1;1;1;1;1;1];
xdata=dlmread('xdata.txt');
ydata=dlmread('ydata.txt');
[xe,resnorm] = lsqcurvefit(@relaxation,x0,xdata,ydata);
T1=10^(-1);T2=10^(0);T3=10^(1);T4=10^(2);T5=10^(3);T6=10^(4);T7=10^(5);T8=10^(6);T9=10^(7);T10=10^8;
j=xe(1)*xe(1)+xe(2)*xe(2).*exp(-xdata/T1)+xe(3)*xe(3).*exp(-xdata/T2)+xe(4)*xe(4).*exp(-xdata/T3)+xe(5)*xe(5).*exp(-xdata/T4)+xe(6)*xe(6).*exp(-xdata/T5)+xe(7)*xe(7).*exp(-xdata/T6)+xe(8)*xe(8).*exp(-xdata/T7)+xe(9)*xe(9).*exp(-xdata/T8)+xe(10)*xe(10).*exp(-xdata/T9)+xe(11)*xe(11).*exp(-xdata/T10);
subplot(2,1,1);
subplot(2,1,1);
plot(xdata,j,'r+')
hold
plot(xdata,ydata,'b*')
legend('Fitted Curve','RSA Data');
subplot(2,1,2)
semilogx(xdata,j,'r+')
hold
semilogx(xdata,ydata,'b*')
legend('Fitted Curve','RSA Data');

f=[T1;T2;T3;T4;T5;T6;T7;T8;T9;T10];