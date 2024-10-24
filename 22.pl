% //Programa 22.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Crear una lista con todos los enteros dentro de una rango dado
% //Prolog
% Crea una lista con todos los enteros dentro de un rango dado.
% Caso base: cuando el inicio y el final son iguales.
range(I, I, [I]).
% Caso recursivo: agrega el inicio a la lista y continúa con el siguiente número.
range(I, K, [I|R]) :- I < K, I1 is I + 1, range(I1, K, R).
%//programa22
%//Crear una lista con todos los enteros dentro de un rango dado
%class Program
%{
%    static void Enlist( int start, int finish){
%    List<int> lista = new List<int>();
%    lista.AddRange(Enumerable.Range(start,finish+1-start));
%    }
%    static void Main(string[] args){
%        Program.Enlist(4,10);
%    }
%}
%
