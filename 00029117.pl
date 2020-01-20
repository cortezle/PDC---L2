%Luis Eduardo Cortez Murillo
%00029117

factorial(0,1).


factorial(X,N):-
    is(Y,-(X,1)),
    factorial(Y,Res),
    is(N,*(X,Res)).


calcular_e(Contador,Acumulador):-
    <(Contador,1000),
    factorial(Contador,R),
    is(NuevoAcumulador,+(/(1,R),Acumulador)),
    is(NuevoContador,+(Contador,1)),
    calcular_e(NuevoContador,NuevoAcumulador),
    write(NuevoAcumulador),!.














