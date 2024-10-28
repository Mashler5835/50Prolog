%//Programa 47.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%// Arboles binarios simetricos
% Comprueba si un árbol binario es simétrico.
% Un árbol es simétrico si sus subárboles izquierdo y derecho son espejos entre sí.
symmetric(nil).
symmetric(t(_, L, R)) :- mirror(L, R).

% Verifica si un árbol es el espejo de otro.
mirror(nil, nil).
mirror(t(_, L1, R1), t(_, L2, R2)) :- mirror(L1, R2), mirror(R1, L2).
%using System;
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
%    // Método para verificar si un árbol es simétrico.
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
%        return (t1.Value == t2.Value) &&
%               IsMirror(t1.Left, t2.Right) &&
%               IsMirror(t1.Right, t2.Left);
%    }
%}
%
%class Program
%{
%    static void Main(string[] args)
%    {
%        // Ejemplo: Árbol simétrico.
%        var symmetricTree = new BinaryTree(1,
%            new BinaryTree(2,
%                new BinaryTree(3),
%                new BinaryTree(4)
%            ),
%            new BinaryTree(2,
%                new BinaryTree(4),
%                new BinaryTree(3)
%            )
%        );
%
%        // Ejemplo: Árbol no simétrico.
%        var asymmetricTree = new BinaryTree(1,
%            new BinaryTree(2,
%                null,
%                new BinaryTree(3)
%            ),
%            new BinaryTree(2,
%                null,
%                new BinaryTree(3)
%            )
%        );
%
%        // Verificación de simetría.
%        Console.WriteLine($"¿Es el árbol simétrico? {BinaryTree.IsSymmetric(symmetricTree)}");
%        Console.WriteLine($"¿Es el árbol simétrico? {BinaryTree.IsSymmetric(asymmetricTree)}");
%    }
%}
