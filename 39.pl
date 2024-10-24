% //Programa 39.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Conjetura de Goldbach
% //Prolog
% Encuentra dos números primos que sumen un número par dado según la conjetura de Goldbach.
% https://es.wikipedia.org/wiki/Conjetura_de_Goldbach
goldbach(N, [P1, P2]) :- N > 2, N mod 2 =:= 0, prime_list(2, N, Primes), member(P1, Primes), P2 is N - P1, is_prime(P2).
%using System;
%using System.Collections.Generic;
%
%class Program
%{
%    static void Main()
%    {
%        int number = 28; // Número par dado para la conjetura de Goldbach
%        var result = Goldbach(number);
%
%        if (result != null)
%        {
%            Console.WriteLine($"Los números primos que suman {number} son: {result[0]} y {result[1]}");
%        }
%        else
%        {
%            Console.WriteLine($"No se encontraron números primos que sumen {number}.");
%        }
%    }
%
%    // Método para encontrar dos números primos que sumen un número par dado.
%    static int[] Goldbach(int n)
%    {
%        if (n <= 2 || n % 2 != 0)
%            throw new ArgumentException("El número debe ser un entero par mayor que 2.");
%
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
