%//Programa 45.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%// Comprobar si un termino dado representa un arbol binario
% Verifica si un término dado representa un árbol binario.
% Un árbol binario está compuesto por un nodo raíz y dos subárboles.
istree(nil).
istree(t(_, L, R)) :- istree(L), istree(R).
%using System;
%
%class BinaryTree
%{
%    public object Value { get; set; }
%    public BinaryTree Left { get; set; }
%    public BinaryTree Right { get; set; }
%
%    // Constructor para crear un nodo del árbol.
%    public BinaryTree(object value, BinaryTree left = null, BinaryTree right = null)
%    {
%        Value = value;
%        Left = left;
%        Right = right;
%    }
%
%    // Método estático que verifica si una estructura es un árbol binario válido.
%    public static bool IsBinaryTree(BinaryTree tree)
%    {
%        // Un árbol vacío (null) es válido.
%        if (tree == null) return true;
%
%        // Recursivamente verifica que los subárboles izquierdo y derecho también sean válidos.
%        return IsBinaryTree(tree.Left) && IsBinaryTree(tree.Right);
%    }
%}
%
%class Program
%{
%    static void Main(string[] args)
%    {
%        // Ejemplo: Creación de un árbol binario.
%        var tree = new BinaryTree(1,
%            new BinaryTree(2,
%                new BinaryTree(4),
%                new BinaryTree(5)
%            ),
%            new BinaryTree(3)
%        );
%
%        // Verificar si es un árbol binario válido.
%        bool isValid = BinaryTree.IsBinaryTree(tree);
%        Console.WriteLine($"¿Es un árbol binario válido? {isValid}");
%
%        // Ejemplo: Árbol nulo.
%        BinaryTree nullTree = null;
%        Console.WriteLine($"¿Es un árbol binario válido? {BinaryTree.IsBinaryTree(nullTree)}");
%    }
%}
