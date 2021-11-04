function salida=impulso(Vectorn)

%Vectorn es el vector dela variable independiente n
salida=zeros(1,length(Vectorn));
for k=1:length(Vectorn)
    if Vectorn(k)==0
        salida(k)=1;
    else
        salida(k)=0;
    end
end