%//Programa 46.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%// Contruir arboles binarios completamente equilibrados
% Construye un árbol binario completamente equilibrado con N nodos.
% Un árbol completamente equilibrado tiene subárboles cuya diferencia de tamaño es como máximo 1.
cbal_tree(0, nil).
cbal_tree(N, t('x', L, R)) :- N > 0, N1 is N - 1, divide(N1, N2, N3), cbal_tree(N2, L), cbal_tree(N3, R).

% Divide el número de nodos entre los dos subárboles.
divide(N, N1, N2) :- N1 is N // 2, N2 is N - N1.
%using System;
%using System.Collections.Generic;
%
%class BinaryTree
%{
%    public char Value { get; set; }
%    public BinaryTree Left { get; set; }
%    public BinaryTree Right { get; set; }
%
%    // Constructor para crear un nodo del árbol.
%    public BinaryTree(char value, BinaryTree left = null, BinaryTree right = null)
%    {
%        Value = value;
%        Left = left;
%        Right = right;
%    }
%
%    // Método que construye un árbol binario completamente equilibrado con N nodos.
%    public static BinaryTree BuildBalancedTree(int n)
%    {
%        if (n == 0) return null; // Árbol vacío.
%        
%        int n1, n2;
%        Divide(n - 1, out n1, out n2); // Divide el número de nodos entre los dos subárboles.
%
%        // Construye el nodo raíz con sus subárboles izquierdo y derecho.
%        return new BinaryTree('x', BuildBalancedTree(n1), BuildBalancedTree(n2));
%    }
%
%    // Divide el número de nodos entre los dos subárboles de manera equilibrada.
%    private static void Divide(int n, out int n1, out int n2)
%    {
%        n1 = n / 2;
%        n2 = n - n1;
%    }
%
%    // Método para imprimir el árbol en preorden.
%    public static void PrintPreOrder(BinaryTree tree)
%    {
%        if (tree == null) return;
%        
%        Console.Write(tree.Value + " ");
%        PrintPreOrder(tree.Left);
%        PrintPreOrder(tree.Right);
%    }
%}
%
%class Program
%{
%    static void Main(string[] args)
%    {
%        Console.Write("Introduce el número de nodos: ");
%        if (int.TryParse(Console.ReadLine(), out int n) && n >= 0)
%        {
%            // Construye un árbol binario completamente equilibrado.
%            var tree = BinaryTree.BuildBalancedTree(n);
%
%            Console.WriteLine($"\nÁrbol binario equilibrado con {n} nodos (preorden):");
%            BinaryTree.PrintPreOrder(tree);
%        }
%        else
%        {
%            Console.WriteLine("Por favor, introduce un número entero no negativo.");
%        }
%    }
%}
%
