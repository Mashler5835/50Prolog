%//Programa 49.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%//Aplicar el paradigma de generar y probar para construir todos los arboles binarios
%//simetricos y completamente equilibrados con un numero dado de nodos
% Genera todos los árboles binarios simétricos y completamente equilibrados con N nodos.
% Utiliza el paradigma de generar y probar para encontrar todos los árboles que cumplen ambas propiedades.
sym_cbal_trees(N, Ts) :- findall(T, (cbal_tree(N, T), symmetric(T)), Ts).
%using System;
%using System.Collections.Generic;
%
%class BinaryTree
%{
%    public int Value { get; set; }
%    public BinaryTree Left { get; set; }
%    public BinaryTree Right { get; set; }
%
%    // Constructor para crear un nodo del árbol.
%    public BinaryTree(int value, BinaryTree left = null, BinaryTree right = null)
%    {
%        Value = value;
%        Left = left;
%        Right = right;
%    }
%
%    // Genera todos los árboles binarios completamente equilibrados con N nodos.
%    public static List<BinaryTree> GenerateBalancedTrees(int n)
%    {
%        var trees = new List<BinaryTree>();
%        if (n == 0)
%        {
%            trees.Add(null); // El árbol vacío es una opción.
%            return trees;
%        }
%
%        // Solo se puede generar un árbol completamente equilibrado con un número impar de nodos.
%        if (n % 2 == 1)
%        {
%            for (int leftNodes = 0; leftNodes < n; leftNodes++)
%            {
%                int rightNodes = n - 1 - leftNodes; // Restar 1 por el nodo raíz.
%
%                var leftTrees = GenerateBalancedTrees(leftNodes);
%                var rightTrees = GenerateBalancedTrees(rightNodes);
%
%                // Combina los árboles generados a la izquierda y a la derecha.
%                foreach (var leftTree in leftTrees)
%                {
%                    foreach (var rightTree in rightTrees)
%                    {
%                        trees.Add(new BinaryTree(1, leftTree, rightTree));
%                    }
%                }
%            }
%        }
%
%        return trees;
%    }
%
%    // Verifica si un árbol es simétrico.
%    public static bool IsSymmetric(BinaryTree tree)
%    {
%        if (tree == null) return true; // Un árbol vacío es simétrico.
%        return IsMirror(tree.Left, tree.Right); // Verifica si los subárboles son espejos.
%    }
%
%    // Verifica si dos subárboles son espejos entre sí.
%    private static bool IsMirror(BinaryTree t1, BinaryTree t2)
%    {
%        if (t1 == null && t2 == null) return true; // Ambos subárboles son nulos.
%        if (t1 == null || t2 == null) return false; // Uno es nulo y el otro no.
%
%        // Comprueba si los valores coinciden y si los subárboles son espejos.
%        return IsMirror(t1.Left, t2.Right) && IsMirror(t1.Right, t2.Left);
%    }
%
%    // Genera todos los árboles binarios simétricos y equilibrados con N nodos.
%    public static List<BinaryTree> GenerateSymmetricBalancedTrees(int n)
%    {
%        var allBalancedTrees = GenerateBalancedTrees(n);
%        var symmetricTrees = new List<BinaryTree>();
%
%        foreach (var tree in allBalancedTrees)
%        {
%            if (IsSymmetric(tree))
%            {
%                symmetricTrees.Add(tree);
%            }
%        }
%
%        return symmetricTrees;
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
%        Console.Write("Introduce el número de nodos (debe ser impar): ");
%        if (int.TryParse(Console.ReadLine(), out int n) && n >= 0 && n % 2 == 1)
%        {
%            var symmetricTrees = BinaryTree.GenerateSymmetricBalancedTrees(n);
%
%            Console.WriteLine($"\nÁrboles binarios simétricos y equilibrados con {n} nodos:");
%            foreach (var tree in symmetricTrees)
%            {
%                BinaryTree.PrintPreOrder(tree);
%                Console.WriteLine();
%            }
%        }
%        else
%        {
%            Console.WriteLine("Por favor, introduce un número impar entero no negativo.");
%        }
%    }
%}
%
