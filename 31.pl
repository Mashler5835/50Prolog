% //Programa 31.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Determinar el maximo comun divisor de dos numeros positivos
% //Prolog
% Calcula el máximo común divisor usando el algoritmo de Euclides.
gcd(X, 0, X) :- X > 0.
gcd(X, Y, G) :- Y > 0, R is X mod Y, gcd(Y, R, G).
%using System;
%
%class Program
%{
%    // Método para calcular el máximo común divisor usando el algoritmo de Euclides.
%    static int GCD(int x, int y)
%    {
%        // Caso base: Si y es 0, el MCD es x.
%        if (y == 0)
%        {
%            if (x > 0)
%                return x; // Solo devuelve x si es mayor que 0.
%            else
%                throw new ArgumentException("El primer número debe ser mayor que 0.");
%        }
%
%        // Llamada recursiva: calcular el MCD.
%        return GCD(y, x % y);
%    }
%
%    static void Main()
%    {
%        int a = 48; // Primer número
%        int b = 18; // Segundo número
%
%        try
%        {
%            int result = GCD(a, b);
%            Console.WriteLine($"El MCD de {a} y {b} es: {result}");
%        }
%        catch (ArgumentException ex)
%        {
%            Console.WriteLine(ex.Message);
%        }
%    }
%}
