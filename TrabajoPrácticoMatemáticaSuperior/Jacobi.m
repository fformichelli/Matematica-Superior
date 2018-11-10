%% MÉTODO JACOBI ---- Marcos Ortiz - Fernando Formichelli

% Para una correcta ejecución del script, leer previamente
% el UserManual provisto por los integrantes del grupo.

%% Matriz de coeficientes

A=[5 -2 3 0;-3 9 1 -2;2 -1 -7 1]   

%% Matriz de términos independientes

b=[-1 2 3]'  

%% Matriz de incógnitas

x=[2 2 2 ]'  































































n=size(x,1);
normVal=Inf; 

%% Control si la matriz A es dominante diagonalmente
for i = 1:n
    j = 1:n;
    j(i) = [];
    B = abs(A(i,j)); 
    Check(i) = abs(A(i,i)) - sum(B); % Control si el valor de la diagonal es mayor al restante combinado
    if Check(i) > 0
        fprintf('La matriz es estrictamente dominante diagonalmente \n')
    end
end

%% 
%Tolerancia del método de Jacobi
tol=1e-5; itr=0;
while normVal>tol
    xold=x;
    
    for i=1:n
        sigma=0;
        
        for j=1:n
            
            if j~=i
                sigma=sigma+A(i,j)*x(j);
            end
            
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    itr=itr+1;
    normVal=abs(xold-x);
end
%%
fprintf('La solución del sistema es : \n%f\n%f\n%f\n%f en %d iteraciones',x,itr);