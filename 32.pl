
% //Programa 32.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Determinar si dos numero positivos son coprimos
% //Prolog
% Dos números son coprimos si su máximo común divisor es 1.
coprime(X, Y) :- gcd(X, Y, 1).
%using System;
%
%class Program
%{
%    // Método para calcular el máximo común divisor usando el algoritmo de Euclides.
%    static int GCD(int x, int y)
%    {
%        if (y == 0)
%        {
%            if (x > 0)
%                return x;
%            else
%                throw new ArgumentException("El primer número debe ser mayor que 0.");
%        }
%        return GCD(y, x % y);
%    }
%
%    // Método para verificar si dos números son coprimos.
%    static bool AreCoprime(int x, int y)
%    {
%        return GCD(x, y) == 1; // Retorna verdadero si el MCD es 1.
%    }
%
%    static void Main()
%    {
%        int a = 14; // Primer número
%        int b = 25; // Segundo número
%
%        bool result = AreCoprime(a, b);
%
%        if (result)
%        {
%            Console.WriteLine($"{a} y {b} son coprimos.");
%        }
%        else
%        {
%            Console.WriteLine($"{a} y {b} no son coprimos.");
%        }
%    }
%}
