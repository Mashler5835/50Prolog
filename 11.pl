% using System;
% using System.Collections.Generic;
% //Programa 11.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
$ // Modificar codificacion Run-Length de una lista
% class Program
% {
%     // Método para agrupar elementos consecutivos iguales.
%     static List<List<T>> Pack<T>(List<T> list)
%     {
%         var result = new List<List<T>>();
%         if (list.Count == 0) return result;
% 
%         var currentGroup = new List<T> { list[0] };
% 
%         for (int i = 1; i < list.Count; i++)
%         {
%             if (EqualityComparer<T>.Default.Equals(list[i], currentGroup[^1]))
%             {
%                 currentGroup.Add(list[i]);  // Agrega al grupo actual
%             }
%             else
%             {
%                 result.Add(currentGroup);  // Guarda el grupo anterior
%                 currentGroup = new List<T> { list[i] };  // Inicia un nuevo grupo
%             }
%         }
% 
%         result.Add(currentGroup);  // Agrega el último grupo
%         return result;
%     }
% 
%     // Método para aplicar la codificación Run-Length básica.
%     static List<(int, T)> Encode<T>(List<T> list)
%     {
%         var packed = Pack(list);
%         var result = new List<(int, T)>();
% 
%         foreach (var group in packed)
%         {
%             result.Add((group.Count, group[0]));
%         }
% 
%         return result;
%     }
% 
%     // Método para modificar la codificación Run-Length.
%     static List<object> EncodeModified<T>(List<T> list)
%     {
%         var encoded = Encode(list);
%         var result = new List<object>();
% 
%         foreach (var (count, value) in encoded)
%         {
%             if (count == 1)
%             {
%                 result.Add(value);  // Sin empaquetar si solo aparece una vez
%             }
%             else
%             {
%                 result.Add((count, value));  // Mantén el formato (N, X)
%             }
%         }
% 
%         return result;
%     }
% 
%     static void Main()
%     {
%         var input = new List<char> { 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd' };
%         var encodedModified = EncodeModified(input);
% 
%         foreach (var item in encodedModified)
%         {
%             Console.WriteLine(item);
%         }
%     }
% }
encode_modified(L, R) :- encode(L, Enc), modify(Enc, R).

% Caso base: lista vacía.
modify([], []).
% Si hay solo un elemento, agrégalo directamente.
modify([[1,X]|T]
, [X|R]) :- modify(T, R).
% Si hay más de un elemento, mantén el formato (N, X).
modify([[N,X]|T], [[N,X]|R]) :- N > 1, modify(T, R).
