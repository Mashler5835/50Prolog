%//Programa 41.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%//Tabla de verdad para expresiones logicas
% Genera una tabla de verdad para una expresión lógica en dos variables.
% A y B son las variables lógicas y Expr es la expresión lógica que se evalúa.
table(A, B, Expr) :- write(A), write(' '), write(B), write(' '), call(Expr), nl, fail.
table(_, _, _).
%using System;
%
%class TruthTable
%{
%    // Método principal para generar la tabla de verdad.
%    public static void Table(Func<bool, bool, bool> expression)
%    {
%        Console.WriteLine("A B Result");
%        // Prueba todas las combinaciones de A y B (true / false).
%        for (bool A = false; A <= true; A = !A)  // Alterna entre false y true.
%        {
%            for (bool B = false; B <= true; B = !B)
%            {
%                bool result = expression(A, B);  // Evalúa la expresión lógica.
%                Console.WriteLine($"{A} {B} {result}");
%            }
%        }
%    }
%
%    // Método Main: aquí se define la expresión lógica y se llama a Table.
%    static void Main(string[] args)
%    {
%        // Ejemplo: A AND (NOT B)
%        Table((A, B) => A && !B);
%
%        Console.WriteLine("\nOtra expresión: A OR B");
%        // Otra expresión: A OR B
%        Table((A, B) => A || B);
%    }
%}
