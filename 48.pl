%//Programa 48.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%// Arboles binarios de búsqueda
% Construye un árbol binario de búsqueda a partir de una lista de enteros.
% Un árbol binario de búsqueda es un árbol en el cual, para cada nodo, todos los elementos en el subárbol izquierdo son menores y en el subárbol derecho son mayores.
construct([], nil).
construct([X|Xs], T) :- construct(Xs, T1), add(X, T1, T).

% Añade un nodo a un árbol binario de búsqueda.
add(X, nil, t(X, nil, nil)).
add(X, t(Root, L, R), t(Root, NL, R)) :- X < Root, add(X, L, NL).
add(X, t(Root, L, R), t(Root, L, NR)) :- X >= Root, add(X, R, NR).
%using System;
%using System.Collections.Generic;
%
%class BinarySearchTree
%{
%    public int Value { get; set; }
%    public BinarySearchTree Left { get; set; }
%    public BinarySearchTree Right { get; set; }
%
%    // Constructor para crear un nodo del árbol.
%    public BinarySearchTree(int value, BinarySearchTree left = null, BinarySearchTree right = null)
%    {
%        Value = value;
%        Left = left;
%        Right = right;
%    }
%
%    // Método estático para construir un árbol binario de búsqueda a partir de una lista de enteros.
%    public static BinarySearchTree Construct(List<int> values)
%    {
%        BinarySearchTree tree = null;
%        foreach (var value in values)
%        {
%            tree = Add(tree, value); // Añade cada valor a su posición adecuada.
%        }
%        return tree;
%    }
%
%    // Añade un nodo a un árbol binario de búsqueda.
%    private static BinarySearchTree Add(BinarySearchTree tree, int value)
%    {
%        if (tree == null) return new BinarySearchTree(value); // Árbol vacío: crea un nuevo nodo.
%
%        // Inserta en el subárbol izquierdo o derecho según el valor.
%        if (value < tree.Value)
%            tree.Left = Add(tree.Left, value);
%        else
%            tree.Right = Add(tree.Right, value);
%
%        return tree;
%    }
%
%    // Método para imprimir el árbol en orden (in-order traversal).
%    public static void PrintInOrder(BinarySearchTree tree)
%    {
%        if (tree == null) return;
%        
%        PrintInOrder(tree.Left);
%        Console.Write(tree.Value + " ");
%        PrintInOrder(tree.Right);
%    }
%}
%
%class Program
%{
%    static void Main(string[] args)
%    {
%        // Lista de enteros para construir el árbol.
%        var values = new List<int> { 5, 3, 7, 2, 4, 6, 8 };
%
%        // Construcción del árbol binario de búsqueda.
%        var bst = BinarySearchTree.Construct(values);
%
%        // Imprimir el árbol en orden.
%        Console.WriteLine("Árbol binario de búsqueda (en orden):");
%        BinarySearchTree.PrintInOrder(bst);
%    }
%}
%
