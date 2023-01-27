function Resultados=trapeciocompuesto(a,b,f,n)
% esta funcion calcula la integral de una funcion simbolica en un intervalo
% de a,b usando el metodo del trapecio, la respuesta es una matriz de nx3
% donde la primer columna es la iteracion, la segunda el valor obtenido y
% la tercera el error obtenido 

%Cálculo
i=1;
valm=zeros(n+1,1);
ErrorVect=zeros(n+1,1);
h=(b-a)/n;
m=0;
while i<= n
    ant=trapeciosimple(a+(i-1)*h,a+(i-1)*h+h,f);
    m=m+ant(2);
    valm(i+1)=m;
    if n>=1
        Error=abs(valm(i+1)-valm(i));
        ErrorVect(i+1,1)=Error;
    end
    i=i+1;
end

contador=0:n;
Resultados=[transpose(contador),valm,ErrorVect];
Resultados=Resultados(1:n+1,:);
end