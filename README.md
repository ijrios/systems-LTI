# Sistemas LTI, convolución y aplicaciones.
•	Se requiere un script que reciba los parámetros  α1, α2, α3, τ1, τ2 y τ3 de un sistema que genera tres “ecos” para una señal a la entrada de este. Si la señal a la entrada es x(n), la señal a la salida será y(n)=α1s(n-N1)+α2s(n-N2)+α3s(n-N2) donde cada Ni está asociado a uno de los τ1 mediante el periodo de muestreo. La señal x(n) es una señal de audio capturada a través del micrófono: escoja una duración moderada para dicha señal y pruebe con diferentes valores de los parámetros de h(n) para obtener un resultado útil para el análisis.

# Correlación y autocorrelación: Aplicaciones.
•	Se requiere un script que reciba la señal y(n) que corresponde a x(n) afectada por multitrayecto, y entregue los valores de N1, N2, N3 y N4, k1, k2, k3 y k4 correspondientes a los retardos de las cuatro componentes de multitrayecto recibidas y sus atenuaciones sufridas. ¿Qué observa y concluye? ¿Cómo estimó estos parámetros? Explique. ¿Cómo son N1, N2, N3 y N4 expresados en tiempo (τ1, τ2, τ3, τ4)? ¿Cómo sería el diagrama en bloques de la respuesta del recinto? ¿Se podría estimar la distancia entre el violín (fuente) y las paredes del recinto? Explique.

# Conclusiones

•	Mientras mayor sea la amplitud de cada impulso generado, mayor será el efecto eco, se escuchará con mayor potencia el sonido.

•	Los valores de cada retardo deben estar por dentro del rango del tiempo de la señal, si los retardos están por fuera del rango, la señal generará más ecos, ya que la señal se desplaza mucho con respecto a la señal original.
