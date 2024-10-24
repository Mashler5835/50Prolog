using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    // Método principal que compara los dos métodos para calcular la función totiente.
    static void CompareTotient(int n)
    {
        if (n <= 1)
            throw new ArgumentException("El número debe ser un entero positivo mayor que 1.");

        int phiBasic = TotientBasic(n);
        int phiImproved = TotientImproved(n);

        Console.WriteLine($"Phi (método básico): {phiBasic}");
        Console.WriteLine($"Phi (método mejorado): {phiImproved}");
    }

    // Método básico para calcular la función totiente.
    static int TotientBasic(int n)
    {
        int count = 0;
        for (int i = 1; i < n; i++)
        {
            if (Gcd(n, i) == 1) // Verifica si i es coprimo con n.
            {
                count++;
            }
        }
        return count;
    }

    // Método para calcular el máximo común divisor usando el algoritmo de Euclides.
    static int Gcd(int x, int y)
    {
        while (y != 0)
        {
            int temp = y;
            y = x % y;
            x = temp;
        }
        return x;
    }

    // Método mejorado para calcular la función totiente utilizando factores primos con multiplicidad.
    static int TotientImproved(int n)
    {
        var factorsWithMultiplicity = PrimeFactorsMult(n);
        return TotientPhi(factorsWithMultiplicity);
    }

    // Método para encontrar los factores primos con multiplicidad.
    static List<Tuple<int, int>> PrimeFactorsMult(int n)
    {
        List<int> factors = PrimeFactors(n);
        return Encode(factors);
    }

    // Método para encontrar los factores primos.
    static List<int> PrimeFactors(int n)
    {
        List<int> factors = new List<int>();
        PrimeFactors(n, 2, factors);
        return factors;
    }

    // Método recursivo para encontrar los factores primos.
    static void PrimeFactors(int n, int factor, List<int> factors)
    {
        if (n == 1)
            return; // Caso base: si n es 1, no hay más factores.

        if (n % factor == 0)
        {
            factors.Add(factor); // Si el factor divide n, agrégalo a la lista.
            PrimeFactors(n / factor, factor, factors); // Divide n por el factor y continúa.
        }
        else
        {
            // Si el factor actual no divide n, encuentra el siguiente factor.
            if (factor * factor <= n)
            {
                NextFactor(ref factor); // Encuentra el siguiente factor.
                PrimeFactors(n, factor, factors); // Continúa buscando factores.
            }
        }
    }

    // Método para encontrar el siguiente factor.
    static void NextFactor(ref int current)
    {
        if (current == 2)
            current = 3; // Después de 2, el siguiente factor primo es 3.
        else
            current += 2; // Aumenta de 2 en 2 para encontrar los siguientes números impares.
    }

    // Método para codificar los factores primos en pares (factor, multiplicidad).
    static List<Tuple<int, int>> Encode(List<int> factors)
    {
        var groupedFactors = factors.GroupBy(x => x).Select(g => new Tuple<int, int>(g.Key, g.Count())).ToList();
        return groupedFactors;
    }

    // Método para calcular la función totiente usando los factores primos con multiplicidad.
    static int TotientPhi(List<Tuple<int, int>> factors)
    {
        int phi = 1;
        foreach (var factor in factors)
        {
            int p = factor.Item1; // Factor primo
            int m = factor.Item2; // Multiplicidad
            phi *= (p - 1) * (int)Math.Pow(p, m - 1); // Aplicar la fórmula de totiente
        }
        return phi;
    }

    static void Main()
    {
        int number = 28; // Número a comparar.

        try
        {
            CompareTotient(number);
        }
        catch (ArgumentException ex)
        {
            Console.WriteLine(ex.Message);
        }
    }
}
