% //Programa 23.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Extraer un numero dado de elementos seleccionados aleatoriamente de una lista
% //Prolog
% Extrae un número dado de elementos aleatorios de una lista.
% Utiliza un generador de números aleatorios y elimina los elementos seleccionados.
rnd_select(_, 0, []).
rnd_select(L, N, [X|R]) :- length(L, Len), random(1, Len, I), element_at(X, L, I), delete(L, X, L1), N1 is N - 1, rnd_select(L1, N1, R).
%//Programa 23
%class Program
%{   
%    //Extraer  un numero dado de elementos seleccionados aleatorioamente de una lista;
%    static void Borrar( List<int> lista, int cantidad){
%        int contador = 1;
%        while(contador <= cantidad){
%            Random eliminado = new Random();
%            lista.RemoveAt(eliminado.Next(0,lista.Count));
%            contador++;
%        }
%    }
%
%    static void Main(string[] args)
%    {
%        List<int> lista = new List<int> {1,2,3,4,5,6,7,8,9,10};
%        Program.Borrar(lista,5);
%    }
%}
