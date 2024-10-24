% //Programa 14.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Duplicar los elementos de una lista
% //Prolog
% //Codifica directamente una lista 
% //Duplica los elementos de una lista.
% //Caso base: la lista vacía se mantiene vacía.
% //dupli([], []).
% //Caso recursivo: duplica el primer elemento y continúa con el resto.
% //dupli([H|T], [H,H|R]) :- dupli(T, R).
% using System;
% using System.Collections.Generic;
% 
% class Program
% {
%     // Método para duplicar los elementos de una lista.
%     static List<T> Dupli<T>(List<T> list)
%     {
%         var result = new List<T>();
% 
%         foreach (var item in list)
%         {
%             result.Add(item);  // Agrega el elemento una vez
%             result.Add(item);  // Agrega el elemento otra vez
%         }
% 
%         return result;
%     }
% 
%     static void Main()
%     {
%         var input = new List<int> { 1, 2, 3, 4 };
%         var duplicated = Dupli(input);
% 
%         Console.WriteLine(string.Join(", ", duplicated));
%     }
% }
% 
