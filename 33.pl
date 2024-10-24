% //Programa 33.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Calcular la funcion totiente de Euler phi(m)
% //Prolog
% Calcula la función totiente de Euler, que cuenta cuántos números menores que M son coprimos con M.
% https://es.wikipedia.org/wiki/Función_φ_de_Euler
totient(1, 1).
totient(M, Phi) :- M > 1, totient_acc(M, M, 0, Phi).

totient_acc(_, 0, Acc, Acc).
totient_acc(M, K, Acc, Phi) :- K > 0, coprime(M, K), Acc1 is Acc + 1, K1 is K - 1, totient_acc(M, K1, Acc1, Phi).
totient_acc(M, K, Acc, Phi) :- K > 0, \\+ coprime(M, K), K1 is K - 1, totient_acc(M, K1, Acc, Phi).
% using System;
% 
% class Program
% {
%     // Método para calcular el máximo común divisor usando el algoritmo de Euclides.
%     static int GCD(int x, int y)
%     {
%         if (y == 0)
%         {
%             if (x > 0)
%                 return x;
%             else
%                 throw new ArgumentException("El primer número debe ser mayor que 0.");
%         }
%         return GCD(y, x % y);
%     }
% 
%     // Método para verificar si dos números son coprimos.
%     static bool AreCoprime(int x, int y)
%     {
%         return GCD(x, y) == 1; // Retorna verdadero si el MCD es 1.
%     }
% 
%     // Método para calcular la función totiente de Euler.
%     static int Totient(int m)
%     {
%         if (m <= 0)
%             throw new ArgumentException("El número debe ser mayor que 0.");
% 
%         if (m == 1)
%             return 1; // Caso base.
% 
%         return TotientAcc(m, m - 1, 0); // Llamada inicial a la función acumulativa.
%     }
% 
%     // Método acumulativo para calcular la función totiente.
%     static int TotientAcc(int m, int k, int acc)
%     {
%         if (k == 0)
%             return acc; // Cuando K llega a 0, devolver el acumulador.
% 
%         if (AreCoprime(m, k))
%         {
%             return TotientAcc(m, k - 1, acc + 1); // Si son coprimos, incrementar el acumulador.
%         }
%         else
%         {
%             return TotientAcc(m, k - 1, acc); // Si no son coprimos, continuar sin incrementar.
%         }
%     }
% 
%     static void Main()
%     {
%         int m = 9; // Número para calcular la función totiente
%         int result = Totient(m);
% 
%         Console.WriteLine($"La función totiente de Euler φ({m}) es: {result}");
%     }
% }
