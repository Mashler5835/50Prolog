% //Programa 19.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Rotar una lista un numero N de lugares a la izquierda
% //Prolog
% Rota una lista N lugares a la izquierda.
% Utiliza la longitud de la lista para manejar rotaciones mayores que la longitud.
rotate(L, N, R) :- length(L, Len), N1 is N mod Len, split(L, N1, L1, L2), append(L2, L1, R).
%using System;
%using System.Collections.Generic;
%
%class Program
%{
%    // Método principal para rotar la lista N lugares a la izquierda.
%    static List<T> Rotate<T>(List<T> list, int n)
%    {
%        if (list.Count == 0)
%            return list; // Si la lista está vacía, devolver la lista vacía.
%
%        // Calcular la longitud de la lista y ajustar N usando módulo.
%        int length = list.Count;
%        int nAdjusted = n % length;
%
%        // Dividir la lista en dos partes y unirlas en el orden inverso.
%        var (firstPart, secondPart) = Split(list, nAdjusted);
%        secondPart.AddRange(firstPart); // Unir la segunda parte con la primera.
%
%        return secondPart;
%    }
%
%    // Método para dividir la lista.
%    static (List<T> firstPart, List<T> secondPart) Split<T>(List<T> list, int n)
%    {
%        var firstPart = new List<T>();
%        var secondPart = new List<T>();
%
%        // Llenar la primera parte.
%        for (int i = 0; i < n && i < list.Count; i++)
%        {
%            firstPart.Add(list[i]);
%        }
%
%        // Llenar la segunda parte con el resto de la lista.
%        for (int i = n; i < list.Count; i++)
%        {
%            secondPart.Add(list[i]);
%        }
%
%        return (firstPart, secondPart);
%    }
%
%    static void Main()
%    {
%        var input = new List<int> { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
%        int n = 3;  // Número de lugares a rotar
%        var result = Rotate(input, n);
%
%        Console.WriteLine("Lista rotada: " + string.Join(", ", result));
%    }
%}
%
