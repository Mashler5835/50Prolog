%//Programa 01.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%// Encontar el ultimo elemento de una lista
% Encuentra el último elemento de una lista.
% La lista debe tener al menos un elemento.
my_last(X, [X]).
my_last(X, [_|T]) :- my_last(X, T).
%using System;
%using System.Collections.Generic;
%
%class Program
%{
%    // Método para encontrar el último elemento de una lista.
%    public static T MyLast<T>(List<T> list)
%    {
%        if (list == null || list.Count == 0)
%        {
%            throw new ArgumentException("La lista debe tener al menos un elemento.");
%        }
%        return list[list.Count - 1]; // Devuelve el último elemento.
%    }
%
%    static void Main(string[] args)
%    {
%        // Ejemplo de uso
%        var myList = new List<int> { 1, 2, 3, 4, 5 };
%
%        try
%        {
%            int lastElement = MyLast(myList);
%            Console.WriteLine($"El último elemento de la lista es: {lastElement}");
%        }
%        catch (ArgumentException ex)
%        {
%            Console.WriteLine(ex.Message);
%        }
%    }
%}
