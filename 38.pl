% //Programa 38.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Lista de números primos en un rango
% //Prolog
% Genera una lista de números primos en un rango dado.
prime_list(Low, High, Primes) :- findall(P, (between(Low, High, P), is_prime(P)), Primes).
%using System;
%using System.Collections.Generic;
%
%class Program
%{
%    // Método principal que genera una lista de números primos en un rango dado.
%    static void Main()
%    {
%        int low = 10; // Límite inferior
%        int high = 50; // Límite superior
%        List<int> primes = PrimeList(low, high);
%
%        Console.WriteLine($"Números primos entre {low} y {high}: {string.Join(", ", primes)}");
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
%
