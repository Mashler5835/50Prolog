
% //Programa 40.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Lista de composiciones de goldbach para un rango de numeros
% //Prolog
% Encuentra las composiciones de Goldbach para todos los números pares dentro de un rango.
goldbach_list(Low, High, L) :- findall([N, P1, P2], (between(Low, High, N), N mod 2 =:= 0, goldbach(N, [P1, P2])), L).
%using System;
%using System.Collections.Generic;
%
%class Program
%{
%    static void Main()
%    {
%        int low = 4;  // Límite inferior
%        int high = 20; // Límite superior
%        var goldbachCompositions = GoldbachList(low, high);
%
%        Console.WriteLine($"Composiciones de Goldbach para números pares entre {low} y {high}:");
%        foreach (var composition in goldbachCompositions)
%        {
%            Console.WriteLine($"{composition[0]} = {composition[1]} + {composition[2]}");
%        }
%    }
%
%    // Método para encontrar las composiciones de Goldbach para todos los números pares en un rango.
%    static List<int[]> GoldbachList(int low, int high)
%    {
%        List<int[]> compositions = new List<int[]>();
%
%        for (int n = low; n <= high; n++)
%        {
%            if (n % 2 == 0 && n > 2) // Solo números pares mayores que 2
%            {
%                var pair = Goldbach(n);
%                if (pair != null)
%                {
%                    compositions.Add(new int[] { n, pair[0], pair[1] }); // Agrega la composición.
%                }
%            }
%        }
%
%        return compositions; // Devuelve la lista de composiciones.
%    }
%
%    // Método para encontrar dos números primos que sumen un número par dado.
%    static int[] Goldbach(int n)
%    {
%        List<int> primes = PrimeList(2, n); // Obtiene la lista de números primos hasta n.
%
%        foreach (int p1 in primes)
%        {
%            int p2 = n - p1; // Calcula el segundo número primo.
%            if (IsPrime(p2)) // Verifica si p2 es primo.
%            {
%                return new int[] { p1, p2 }; // Retorna los dos números primos.
%            }
%        }
%
%        return null; // Si no se encuentra ninguna pareja, retorna null.
%    }
%
%    // Método para generar la lista de números primos en un rango.
%    static List<int> PrimeList(int low, int high)
%    {
%        List<int> primes = new List<int>();
%        for (int i = low; i <= high; i++)
%        {
%            if (IsPrime(i)) // Verifica si el número es primo.
%            {
%                primes.Add(i); // Agrega el número primo a la lista.
%            }
%        }
%        return primes; // Devuelve la lista de números primos.
%    }
%
%    // Método para verificar si un número es primo.
%    static bool IsPrime(int n)
%    {
%        if (n < 2) return false; // Los números menores que 2 no son primos.
%        for (int i = 2; i <= Math.Sqrt(n); i++)
%        {
%            if (n % i == 0) return false; // Si n es divisible por i, no es primo.
%        }
%        return true; // Si no se encontró un divisor, n es primo.
%    }
%}
%
