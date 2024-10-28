%//Programa 43.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%// Codigo Gray
% Genera el código Gray de N bits.
% https://es.wikipedia.org/wiki/Código_Gray
% La secuencia de código Gray es una secuencia binaria en la que dos valores consecutivos difieren en solo un bit.
gray(1, ['0', '1']).
gray(N, C) :- N > 1, N1 is N - 1, gray(N1, C1), maplist(atom_concat('0'), C1, C0), reverse(C1, C1R), maplist(atom_concat('1'), C1R, C1G), append(C0, C1G, C).
%using System;
%using System.Collections.Generic;
%using System.Linq;
%
%class GrayCodeGenerator
%{
%    // Método principal para generar el código Gray de N bits.
%    public static List<string> GenerateGrayCode(int n)
%    {
%        if (n <= 0) throw new ArgumentException("El número de bits debe ser mayor que 0.");
%
%        // Caso base: Gray code de 1 bit.
%        if (n == 1) 
%            return new List<string> { "0", "1" };
%
%        // Llamada recursiva para generar el código Gray de N-1 bits.
%        var previousGray = GenerateGrayCode(n - 1);
%
%        // Agrega '0' a los elementos originales.
%        var prefix0 = previousGray.Select(code => "0" + code).ToList();
%
%        // Agrega '1' a los elementos invertidos.
%        var prefix1 = previousGray.AsEnumerable().Reverse().Select(code => "1" + code).ToList();
%
%        // Combina ambas listas.
%        prefix0.AddRange(prefix1);
%
%        return prefix0;
%    }
%
%    static void Main(string[] args)
%    {
%        // Prueba con 3 bits.
%        Console.WriteLine("Código Gray de 3 bits:");
%        var gray3 = GenerateGrayCode(3);
%        gray3.ForEach(Console.WriteLine);
%
%        // Prueba con 4 bits.
%        Console.WriteLine("\nCódigo Gray de 4 bits:");
%        var gray4 = GenerateGrayCode(4);
%        gray4.ForEach(Console.WriteLine);
%    }
%}
