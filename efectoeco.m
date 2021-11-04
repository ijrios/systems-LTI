%===============================================================================
% SISTEMAS LTI Y CONVOLUCION - EFECTO ECO 
%===============================================================================
clear all;
close all;
clc
disp("BIEVENIDOS AL PROGRAMA");
duracion=input('Ingrese la duracion de la grabacion que desea; entre 3 y 5 segundos: ');
Fs=input('Ingrese la frecuenci a la la que desea grabar el audio: ');
ts = 1/Fs;
disp('presione una tecla para empezar a grabar...');
pause;
%Fs=44100; %Frecuencia de muestreo.
%Creacion del objeto de grabacion
ObjetoAudio=audiorecorder(Fs,16,1);
%Grabacion del sonido
recordblocking(ObjetoAudio,duracion); 
audio=getaudiodata(ObjetoAudio, 'single');
%Graba y guarda la señal
audiowrite('audiograbado.wav',audio,Fs); 

disp('Grabaci?n terminada. El archivo ha sido guardado como "audiograbado.wav"...');

%Ingresamos el audio a analizar 
archivo=input('Escriba el nombre del archivo de audio que desea analizar: ','s');
[audio,Fs]=audioread(archivo);
audio=audio/max(max(abs(audio)));
audio=audio(:,1)';
% Se construye el vector tiempo para el audio original
t=0:ts:duracion-ts;
% Se piden las amplitudes de cada impulso
alfa1 = input('ingrese la amplitud del primer parametro: '); 
alfa2 = input('ingrese la amplitud del primer parametro: '); 
alfa3 = input('ingrese la amplitud del primer parametro: '); 
% Se piden los valores de los retardos 
tao1 = input('ingrese el valor de t1: '); 
tao2 = input('ingrese el valor de t2: ');
tao3 = input('ingrese el valor de t3: '); 
% Se relacionan los retardos con el tiempo de muestreo
n1 = round(tao1/ts);
n2 = round(tao2/ts);
n3 = round(tao3/ts);
%Construimos el vector n
n = 0:n3;
%Funcion de transferencia del sistema
h = alfa1*impulso(n-n1)+ alfa2*impulso(n-n2)+ alfa3*impulso(n-n3);
% Se aplica la convulucion
y = conv(audio,h);
%Se construye el vector tiempo para graficar el audio con el eco
t2=0:ts:ts*length(y)-ts;
%Se construye el vector tiempo para graficar la funcion de transferencia
t3=0:ts:ts*length(h)-ts;
% Graficamos las señales
figure(1);
subplot(3,1,1);
plot(t,audio);
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
plot(t3,h);
grid on;
xlabel('Tiempo[s]'); 
ylabel('Amplitud [v]');
title('FUNCION DE TRANSFERENCIA');
% ================ Audio recuperado =======================================
disp('Presione una tecla para escuchar el audio...');
pause;
sound(y,Fs);
%==========================================================================












