% //Programa 29.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Ordenr una lista de listas egun la frecuencia de la longitud de las sublistas
% //Prolog
% Ordena una lista de listas de acuerdo con la frecuencia de la longitud de las sublistas.
length_frequency(L, F) :- map_list_to_pairs(length, L, P), msort(P, SP), encode(SP, F).
%//Programa29
%
%Ordenar una lista de listas según la frecuencia de la longitud de las sublistas.
%
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
%        // Ordenar la lista de listas por la frecuencia de la longitud de las sublistas
%        List<List<int>> resultado = OrdenarPorFrecuenciaDeLongitud(listas);
%
%        // Mostrar el resultado
%        foreach (var sublista in resultado)
%        {
%            Console.WriteLine("[" + string.Join(", ", sublista) + "]");
%        }
%    }
%
%    static List<List<int>> OrdenarPorFrecuenciaDeLongitud(List<List<int>> listas)
%    {
%        // Crear un diccionario para contar las frecuencias de las longitudes
%        var frecuenciaLongitud = listas
%            .GroupBy(sublista => sublista.Count)
%            .ToDictionary(grupo => grupo.Key, grupo => grupo.Count());
%
%        // Ordenar las listas de acuerdo a la frecuencia de su longitud
%        return listas
%            .OrderBy(sublista => frecuenciaLongitud[sublista.Count])
%            .ThenBy(sublista => sublista.Count) // En caso de empate, ordenar por la longitud
%            .ToList();
%    }
%}
