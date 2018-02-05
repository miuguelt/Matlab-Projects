%Crear matriz dispersa
n = 5;
D = sparse(1:n,1:n,-2*ones(1,n),n,n)
E = sparse(2:n,1:n-1,ones(1,n-1),n,n)
S = E+D+E'

%segunda opcion

n=5;
V = ones(n-1,1);
A = 2*eye(n)-diag(V,-1)-diag(V,1)
a = sparse(A)
full(a) %Contrario a sparse

%Preguntar si una matriz es dipersa
issparse(A)
issparse(a) %Grafica puntos dispersos
spy(A)
[i,j,V] = find(A)
sparse(i,j,V)
clock %medir tiempo
cputime %medir el tiempo