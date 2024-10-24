% //Programa 36.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Calcular la funcoin totiente de Euler phi(m) mejorada
% //Prolog
% Calcula la función totiente usando los factores primos con multiplicidad para mejorar la eficiencia.
% https://es.wikipedia.org/wiki/Función_φ_de_Euler
totient_improved(N, Phi) :- prime_factors_mult(N, F), totient_phi(F, Phi).

totient_phi([], 1).
totient_phi([[P, M]|T], Phi) :- totient_phi(T, Phi1), Phi is Phi1 * (P - 1) * P ** (M - 1).
%using System;
%using System.Collections.Generic;
%using System.Linq;
%
%class Program
%{
%    // Método principal que calcula la función totiente utilizando factores primos con multiplicidad.
%    static int TotientImproved(int n)
%    {
%        if (n <= 1)
%            throw new ArgumentException("El número debe ser un entero positivo mayor que 1.");
%
%        var factorsWithMultiplicity = PrimeFactorsMult(n);
%        return TotientPhi(factorsWithMultiplicity);
%    }
%
%    // Método para encontrar los factores primos con multiplicidad.
%    static List<Tuple<int, int>> PrimeFactorsMult(int n)
%    {
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
%    // Método para calcular la función totiente usando los factores primos con multiplicidad.
%    static int TotientPhi(List<Tuple<int, int>> factors)
%    {
%        int phi = 1;
%        foreach (var factor in factors)
%        {
%            int p = factor.Item1; // Factor primo
%            int m = factor.Item2; // Multiplicidad
%            phi *= (p - 1) * (int)Math.Pow(p, m - 1); // Aplicar la fórmula de totiente
%        }
%        return phi;
%    }
%
%    static void Main()
%    {
%        int number = 28; // Número del cual queremos calcular la función totiente.
%
%        try
%        {
%            int result = TotientImproved(number);
%            Console.WriteLine($"La función totiente de {number} es: {result}");
%        }
%        catch (ArgumentException ex)
%        {
%            Console.WriteLine(ex.Message);
%        }
%    }
%}
%
