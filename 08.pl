
% //Programa 08.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Eliminar duplicados consecutivos de los elementos de una lista
% //Prolog
% Elimina duplicados consecutivos de una lista.
% Caso base: una lista vacía se mantiene vacía.
compress([], []).
% Si queda un solo elemento, no hay duplicados.
compress([X], [X]).
% Caso recursivo: si el primer y segundo elemento son iguales, ignora el primero.
compress([X,X|T], R) :- compress([X|T], R).
% Si el primer y segundo elemento son distintos, conserva el primero.
compress([X,Y|T], [X|R]) :- X \= Y, compress([Y|T], R).
%//programa8
%
%//Eliminar los duplicados consecutivos de una lista
%
%class Program
%{
%    static void Eliminar(List<int> lista){
%        for(int contador = 0; contador< lista.Count - 2; contador++){
%            if(lista[contador] == lista[contador+1]){
%                lista.RemoveAt(contador);
%            }
%        }
%    }
%    static void Main(string[] args)
%    {
%        List<int> lista =  new List<int> {1,1,2,3,4,5,5,6,7};
%        Program.Eliminar(lista);
%    }
%}
