%//Programa 42.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%//Tabla de verdad para expresiones logicas (Operadores)
% Genera una tabla de verdad para una expresión lógica en dos variables.
% A y B son las variables lógicas y Expr es la expresión lógica que se evalúa.
table(A, B, Expr) :- write(A), write(' '), write(B), write(' '), call(Expr), nl, fail.
table(_, _, _).
%using System;
%
%class TruthTable
%{
%    // Método que genera la tabla de verdad para una expresión lógica.
%    public static void Table(Func<bool, bool, bool> expr)
%    {
%        Console.WriteLine("A  B  Result");
%
%        // Itera sobre todas las combinaciones posibles de A y B (false/true).
%        for (int a = 0; a <= 1; a++)  // A puede ser 0 (false) o 1 (true).
%        {
%            for (int b = 0; b <= 1; b++)  // B puede ser 0 (false) o 1 (true).
%            {
%                bool A = a == 1;  // Convierte el entero a booleano.
%                bool B = b == 1;
%                bool result = expr(A, B);  // Evalúa la expresión lógica.
%
%                // Imprime los resultados en formato tabular.
%                Console.WriteLine($"{A, -3}{B, -3}{result}");
%            }
%        }
%    }
%
%    static void Main(string[] args)
%    {
%        // Ejemplo: A AND B
%        Console.WriteLine("Expresión: A AND B");
%        Table((A, B) => A && B);
%
%        Console.WriteLine("\nExpresión: A OR NOT B");
%        // Otra expresión: A OR NOT B
%        Table((A, B) => A || !B);
%    }
%}
