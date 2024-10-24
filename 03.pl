% //Programa 03.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Encontrar el k-esimo elemento de una lista
% //Prolog
% Encuentra el k-ésimo elemento de una lista.
% El índice K debe ser mayor que 0.
element_at(X, [X|_], 1).
element_at(X, [_|T], K) :- K > 1, K1 is K - 1, element_at(X, T, K1).
%//programa3 
%
%namespace _3pgm;
%
%class Program
%{    
%    static void Main(string[] args)
%    {
%        int numero = 0;
%        string valor = "";
%        List<string> lista = new List<string> {"Paul","Jairo","Oswaldo","Franco","Geras","Boro"};
%        Console.WriteLine("Numero del elemento que busca: ");
%        numero = int.Parse(Console.ReadLine());
%        valor = lista[numero];
%        
%        Console.Write("El elemento es:" + valor);
%    }
%}
