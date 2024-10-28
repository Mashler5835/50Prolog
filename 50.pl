%//Programa 50.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%// Construir arboles binarios en altura
% Construye un árbol binario equilibrado en altura con una altura dada.
% Un árbol equilibrado en altura tiene subárboles cuya diferencia de altura es como máximo 1.
hbal_tree(0, nil).
hbal_tree(H, t('x', L, R)) :- H > 0, H1 is H - 1, H2 is H1 - 1, hbal_tree(H1, L), hbal_tree(H2, R).
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
%    // Construye un árbol binario equilibrado en altura con una altura dada.
%    public static BinaryTree CreateHeightBalancedTree(int height)
%    {
%        if (height < 0) return null; // Altura negativa no es válida.
%        return CreateTree(height);
%    }
%
%    // Método recursivo para construir el árbol equilibrado en altura.
%    private static BinaryTree CreateTree(int h)
%    {
%        if (h == 0) return null; // Caso base: un árbol vacío.
%
%        // Crea el nodo actual y construye sus subárboles.
%        var leftSubtreeHeight = h - 1;
%        var rightSubtreeHeight = h - 1; // Empezamos igual
%
%        if (h > 1)
%        {
%            rightSubtreeHeight = h - 2; // Aseguramos que la diferencia de altura no sea mayor a 1.
%        }
%
%        return new BinaryTree('x', CreateTree(leftSubtreeHeight), CreateTree(rightSubtreeHeight));
%    }
%
%    // Método para imprimir los árboles en preorden.
%    public static void PrintPreOrder(BinaryTree tree)
%    {
%        if (tree == null)
%        {
%            Console.Write("nil ");
%            return;
%        }
%        Console.Write($"{tree.Value} ");
%        PrintPreOrder(tree.Left);
%        PrintPreOrder(tree.Right);
%    }
%}
%
%class Program
%{
%    static void Main(string[] args)
%    {
%        Console.Write("Introduce la altura del árbol: ");
%        if (int.TryParse(Console.ReadLine(), out int height) && height >= 0)
%        {
%            var balancedTree = BinaryTree.CreateHeightBalancedTree(height);
%
%            Console.WriteLine($"\nÁrbol binario equilibrado en altura con {height} niveles:");
%            BinaryTree.PrintPreOrder(balancedTree);
%            Console.WriteLine();
%        }
%        else
%        {
%            Console.WriteLine("Por favor, introduce un número entero no negativo.");
%        }
%    }
%}
