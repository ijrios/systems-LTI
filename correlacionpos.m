function [salida,sal]=correlacionpos(senalA,refa,senalB,refb)
salida=conv(senalA,fliplr(senalB));
sal = refa + length(senalB) - refb;