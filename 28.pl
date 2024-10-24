% //Programa 28.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Ordenar una lista de listas e acuerdo con la longitud de las sublistas
% //Prolog
% Ordena una lista de listas de acuerdo con
%//Programa28
%
%Ordenar una lista de listas de acuerdo con la longitud de las sublistas.
%class Program
%{
%    static void Main()
%    {
%        List<List<int>> listas = new List<List<int>>
%        {
%            new List<int> { 1, 2, 3 },
%            new List<int> { 4, 5 },
%            new List<int> { 6 },
%            new List<int> { 7, 8, 9, 10 },
%            new List<int> { 11, 12 },
%            new List<int> { 13, 14, 15 }
%        };
%
%        // Ordenar la lista de listas por la longitud de las sublistas
%        List<List<int>> resultado = OrdenarPorLongitud(listas);
%
%        // Mostrar el resultado
%        foreach (var sublista in resultado)
%        {
%            Console.WriteLine("[" + string.Join(", ", sublista) + "]");
%        }
%    }
%
%    static List<List<int>> OrdenarPorLongitud(List<List<int>> listas)
%    {
%        // Ordenar las sublistas de acuerdo a su longitud
%        return listas.OrderBy(sublista => sublista.Count).ToList();
%    }
%}
