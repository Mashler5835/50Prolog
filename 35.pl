% //Programa 35.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Determinar los factores primos de un numero entero positivo (con multiplicidad)
% //Prolog
% Determina los factores primos con su multiplicidad.
prime_factors_mult(N, L) :- prime_factors(N, F), encode(F, L).
%using System;
%using System.Collections.Generic;
%using System.Linq;
%
%class Program
%{
%    // Método principal que inicia la búsqueda de factores primos con multiplicidad.
%    static List<Tuple<int, int>> PrimeFactorsMult(int n)
%    {
%        if (n <= 1)
%            throw new ArgumentException("El número debe ser un entero positivo mayor que 1.");
%
%        List<int> factors = PrimeFactors(n);
%        return Encode(factors);
%    }
%
%    // Método para encontrar los factores primos.
%    static List<int> PrimeFactors(int n)
%    {
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
%    // Método para codificar los factores primos en pares (factor, multiplicidad).
%    static List<Tuple<int, int>> Encode(List<int> factors)
%    {
%        var groupedFactors = factors.GroupBy(x => x).Select(g => new Tuple<int, int>(g.Key, g.Count())).ToList();
%        return groupedFactors;
%    }
%
%    static void Main()
%    {
%        int number = 28; // Número del cual queremos encontrar los factores primos.
%
%        try
%        {
%            var result = PrimeFactorsMult(number);
%            Console.WriteLine($"Los factores primos de {number} con multiplicidad son:");
%            foreach (var factor in result)
%            {
%                Console.WriteLine($"Factor: {factor.Item1}, Multiplicidad: {factor.Item2}");
%            }
%        }
%        catch (ArgumentException ex)
%        {
%            Console.WriteLine(ex.Message);
%        }
%    }
%}
%
