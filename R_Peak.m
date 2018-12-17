clc;
clear all;
close all;
R = textread('C:\Users\imman\Desktop\Matlab workshop\R-peak detection\arithmyia.txt');
t = 1:length(R);
rr = R((1:end),1);
figure,
plot(t,rr);
rp = 0.0001;
rs = 5;
%%  Band pass filtering
n = cheb1ord((10/360),33.3/360,rp,rs);
Wp = [10/360 33.3/360];
