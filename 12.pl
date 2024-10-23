
% //Programa 12.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Codificar directamente una lista Run-Length de una
%using System;
%using System.Collections.Generic;
%
%class Program
%{
%    // Método para codificar directamente usando Run-Length.
%    static List<(int, T)> EncodeDirect<T>(List<T> list)
%    {
%        var result = new List<(int, T)>();
%        int i = 0;
%
%        while (i < list.Count)
%        {
%            T current = list[i];
%            int count = CountConsecutive(list, i, current, out int nextIndex);
%            result.Add((count, current));
%            i = nextIndex;  // Avanza al siguiente grupo
%        }
%
%        return result;
%    }
%
%    // Cuenta cuántos elementos consecutivos son iguales.
%    static int CountConsecutive<T>(List<T> list, int startIndex, T element, out int nextIndex)
%    {
%        int count = 0;
%        int i = startIndex;
%
%        while (i < list.Count && EqualityComparer<T>.Default.Equals(list[i], element))
%        {
%            count++;
%            i++;
%        }
%
%        nextIndex = i;  // Índice donde comienza el siguiente grupo
%        return count;
%    }
%
%    static void Main()
%    {
%        var input = new List<char> { 'a', 'a', 'b', 'b', 'b', 'c', 'a', 'a' };
%        var encodedDirect = EncodeDirect(input);
%
%        foreach (var (count, value) in encodedDirect)
%        {
%            Console.WriteLine($"({count}, {value})");
%        }
%    }
%}
%Codifica directamente una lista usando codificación Run-Length.
%Cuenta cuántos elementos consecutivos son iguales.
%encode_direct([], []).
%encode_direct([X|Xs], [[N,X]|R]) :- count(X, [X|Xs], N, Rest), encode_direct(Rest, R).
%
%Cuenta cuántos elementos consecutivos son iguales.
%count(_, [], 0, []).
%count(X, [X|Xs], N, Rest) :- count(X, Xs, N1, Rest), N is N1 + 1.
%count(X, [Y|Ys], 0, [Y|Ys]) :- X \= Y.
