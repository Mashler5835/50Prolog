% //Programa 15.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Duplicar los elementos de una lista un numero dado de veces
% //Prolog
% Duplica los elementos de una lista un número dado de veces.
% Caso base: la lista vacía se mantiene vacía.
dupli([], _, []).
% Caso recursivo: duplica el primer elemento N veces y continúa con el resto.
dupli([H|T], N, R) :- duplicate(H, N, D), dupli(T, N, R1), append(D, R1, R).

% Crea una lista con N repeticiones del elemento X.
duplicate(_, 0, []).
duplicate(X, N, [X|R]) :- N > 0, N1 is N - 1, duplicate(X, N1, R).
%using System;
%using System.Collections.Generic;
%
%class Program
%{
%    // Método para duplicar cada elemento de la lista N veces.
%    static List<T> Dupli<T>(List<T> list, int n)
%    {
%        var result = new List<T>();
%
%        foreach (var item in list)
%        {
%            var duplicated = Duplicate(item, n);  // Duplicar el elemento N veces
%            result.AddRange(duplicated);          // Añadir los duplicados al resultado
%        }
%
%        return result;
%    }
%
%    // Método para crear una lista con N repeticiones del elemento dado.
%    static List<T> Duplicate<T>(T element, int n)
%    {
%        var result = new List<T>();
%        for (int i = 0; i < n; i++)
%        {
%            result.Add(element);  // Añadir el elemento N veces
%        }
%        return result;
%    }
%
%    static void Main()
%    {
%        var input = new List<int> { 1, 2, 3 };
%        int n = 3;  // Número de veces que cada elemento será duplicado
%        var duplicated = Dupli(input, n);
%
%        Console.WriteLine(string.Join(", ", duplicated));
%    }
%}
%
