%//Programa 44.pl
%//Nombre: Bejarano Duque Antoine 21211918
%//Fecha:23-Oct-2024
%// Codigo Huffman
% Genera un árbol de Huffman dado un conjunto de frecuencias.
% https://es.wikipedia.org/wiki/Codificación_Huffman
% El algoritmo de Huffman se utiliza para la compresión de datos, construyendo un árbol binario óptimo para la codificación.
huffman(Fs, Hs) :- length(Fs, Len), Len > 1, sort(2, @=<, Fs, Sorted), huffman_tree(Sorted, Hs).

% Caso base para construir el árbol de Huffman.
huffman_tree([fr(X, _) | []], hc(X, '0')).
huffman_tree([fr(_, _) | [fr(_, _) | _]], _).
%using System;
%using System.Collections.Generic;
%using System.Linq;
%
%class HuffmanNode : IComparable<HuffmanNode>
%{
%    public char Symbol { get; set; }
%    public int Frequency { get; set; }
%    public HuffmanNode Left { get; set; }
%    public HuffmanNode Right { get; set; }
%
%    // Implementación de la comparación por frecuencia para ordenar los nodos.
%    public int CompareTo(HuffmanNode other) => Frequency.CompareTo(other.Frequency);
%
%    // Comprueba si el nodo es una hoja.
%    public bool IsLeaf() => Left == null && Right == null;
%}
%
%class HuffmanTree
%{
%    // Construye el árbol de Huffman a partir de las frecuencias de los símbolos.
%    public static HuffmanNode Build(Dictionary<char, int> frequencies)
%    {
%        var priorityQueue = new List<HuffmanNode>();
%
%        // Crea un nodo para cada símbolo y lo agrega a la cola de prioridad.
%        foreach (var symbol in frequencies)
%        {
%            priorityQueue.Add(new HuffmanNode { Symbol = symbol.Key, Frequency = symbol.Value });
%        }
%
%        // Ordena la lista inicialmente.
%        priorityQueue = priorityQueue.OrderBy(node => node.Frequency).ToList();
%
%        // Construcción del árbol de Huffman.
%        while (priorityQueue.Count > 1)
%        {
%            // Toma los dos nodos de menor frecuencia.
%            var left = priorityQueue[0];
%            var right = priorityQueue[1];
%            priorityQueue.RemoveRange(0, 2);
%
%            // Crea un nuevo nodo combinando los dos nodos de menor frecuencia.
%            var newNode = new HuffmanNode
%            {
%                Frequency = left.Frequency + right.Frequency,
%                Left = left,
%                Right = right
%            };
%
%            // Agrega el nuevo nodo a la lista y la vuelve a ordenar.
%            priorityQueue.Add(newNode);
%            priorityQueue = priorityQueue.OrderBy(node => node.Frequency).ToList();
%        }
%
%        // Devuelve la raíz del árbol de Huffman.
%        return priorityQueue.First();
%    }
%
%    // Genera los códigos de Huffman a partir del árbol.
%    public static Dictionary<char, string> GenerateCodes(HuffmanNode root)
%    {
%        var codes = new Dictionary<char, string>();
%        GenerateCodesRecursive(root, "", codes);
%        return codes;
%    }
%
%    // Método recursivo para generar los códigos.
%    private static void GenerateCodesRecursive(HuffmanNode node, string prefix, Dictionary<char, string> codes)
%    {
%        if (node.IsLeaf())
%        {
%            codes[node.Symbol] = prefix;
%        }
%        else
%        {
%            GenerateCodesRecursive(node.Left, prefix + "0", codes);
%            GenerateCodesRecursive(node.Right, prefix + "1", codes);
%        }
%    }
%}
%
%class Program
%{
%    static void Main(string[] args)
%    {
%        // Ejemplo de frecuencias de los símbolos.
%        var frequencies = new Dictionary<char, int>
%        {
%            { 'a', 5 },
%            { 'b', 9 },
%            { 'c', 12 },
%            { 'd', 13 },
%            { 'e', 16 },
%            { 'f', 45 }
%        };
%
%        // Construcción del árbol de Huffman.
%        var root = HuffmanTree.Build(frequencies);
%
%        // Generación de los códigos de Huffman.
%        var huffmanCodes = HuffmanTree.GenerateCodes(root);
%
%        // Mostrar los códigos generados.
%        Console.WriteLine("Códigos de Huffman:");
%        foreach (var code in huffmanCodes)
%        {
%            Console.WriteLine($"{code.Key}: {code.Value}");
%        }
%    }
%}
