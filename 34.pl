
% //Programa 34.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Determinar los factores primos de un numero entero positivo
% //Prolog
% Encuentra los factores primos de un número entero positivo.
prime_factors(N, L) :- N > 1, prime_factors(N, 2, L).

prime_factors(1, _, []).
prime_factors(N, F, [F|L]) :- N > 1, 0 is N mod F, N1 is N // F, prime_factors(N1, F, L).
prime_factors(N, F, L) :- N > 1, F * F < N, next_factor(F, F1), prime_factors(N, F1, L).

next_factor(2, 3).
next_factor(F, F1) :- F > 2, F1 is F + 2.

% Encuentra los factores primos de un número entero positivo.
prime_factors(N, L) :- N > 1, prime_factors(N, 2, L).

prime_factors(1, _, []).
prime_factors(N, F, [F|L]) :- N > 1, 0 is N mod F, N1 is N // F, prime_factors(N1, F, L).
prime_factors(N, F, L) :- N > 1, F * F < N, next_factor(F, F1), prime_factors(N, F1, L).

next_factor(2, 3).
next_factor(F, F1) :- F > 2, F1 is F + 2.
%using System;
%using System.Collections.Generic;
%
%class Program
%{
%    // Método principal que inicia la búsqueda de factores primos.
%    static List<int> PrimeFactors(int n)
%    {
%        if (n <= 1)
%            throw new ArgumentException("El número debe ser un entero positivo mayor que 1.");
%
%        List<int> factors = new List<int>();
%        PrimeFactors(n, 2, factors);
%        return factors;
%    }
%
%    // Método recursivo para encontrar los factores primos.
%    static void PrimeFactors(int n, int factor, List<int> factors)
%    {
%        if (n == 1)
%            return; // Caso base: si n es 1, no hay más factores.
%
%        if (n % factor == 0)
%        {
%            factors.Add(factor); // Si el factor divide n, agrégalo a la lista.
%            PrimeFactors(n / factor, factor, factors); // Divide n por el factor y continúa.
%        }
%        else
%        {
%            // Si el factor actual no divide n, encuentra el siguiente factor.
%            if (factor * factor <= n)
%            {
%                NextFactor(ref factor); // Encuentra el siguiente factor.
%                PrimeFactors(n, factor, factors); // Continúa buscando factores.
%            }
%        }
%    }
%
%    // Método para encontrar el siguiente factor.
%    static void NextFactor(ref int current)
%    {
%        if (current == 2)
%            current = 3; // Después de 2, el siguiente factor primo es 3.
%        else
%            current += 2; // Aumenta de 2 en 2 para encontrar los siguientes números impares.
%    }
%
%    static void Main()
%    {
%        int number = 28; // Número del cual queremos encontrar los factores primos.
%
%        try
%        {
%            List<int> result = PrimeFactors(number);
%            Console.WriteLine($"Los factores primos de {number} son: {string.Join(", ", result)}");
%        }
%        catch (ArgumentException ex)
%        {
%            Console.WriteLine(ex.Message);
%        }
%    }
%}
