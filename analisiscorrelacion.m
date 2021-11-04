%===============================================================================
% Correlación y autocorrelación: Aplicaciones
%===============================================================================
clear all;
close all;
clc
disp("BIEVENIDOS AL PROGRAMA");
%Ingresamos el primer audio a analizar 
[audio,Fs]=audioread('violin.wav');
audio=audio/max(max(abs(audio)));
audio=audio(:,1)';
x = audio;
ts = 1/Fs;
% Se construye el vector tiempo para el primer audio 
t = 0:ts:ts*length(x)-ts;
%Ingresamos el segundo audio a analizar 
[audio1,Fs1]=audioread('violineco.wav');
audio1=audio1/max(max(abs(audio1)));
audio1=audio1(:,1)';
y = audio1;
ts2 = 1/Fs1;
% Se construye el vector tiempo para el segundo audio 
t2 = 0:ts:ts*length(y)-ts;
%Realizamos la correlación 
[co,pos] = correlacionpos(y,1,x,1);
b = co(pos:end);
% Se construye el vector tiempo para la correlacion 
t3 = 0:ts:ts*length(b)-ts;
% maxi = max(co);
% tao1 = (p-pos)*ts; 
c = ones(1,length(b));
for i = 1:length(b)
    c(:, :, i) = b;
end
[maxi,p] = maxk(b,1);
tao1 = p*ts;



% c = b(max(b):end);
% [maxi2,p2] = maxk(c,length(c));
% p3 = find(c==max(c))*ts;
% d = c(max(c):end);
% p4 = find(d==max(d))*ts;



figure(1);
subplot(3,1,1);
plot(t,x);
grid on;
xlabel('Tiempo [s]'); 
ylabel('Amplitud [v]');
title('SEÑAL AUDIO ORIGINAL');
subplot(3,1,2);
plot(t2,y);
grid on;
xlabel('Tiempo[s]'); 
ylabel('Amplitud [v]');
title('SEÑAL AUDIO CON ECO');
subplot(3,1,3);
plot(t3,b);
grid on;
xlabel('Tiempo[s]'); 
ylabel('Amplitud [v]');
title('CORRELACION DE LAS DOS SEÑALES');








