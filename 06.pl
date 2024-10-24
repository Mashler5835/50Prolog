% //Programa 06.pl
% //Nombre:Bejarano Duque Antoine 21211918
% //Fechas:23/oct/2024
% //Determinar si una lista es un palindromo
% //Prolog
% Verifica si una lista es un palíndromo.
% Una lista es un palíndromo si es igual a su inversa.
palindrome(L) :- reverse_list(L, L).
%//programa 6
%
%class Program
%{    
%    static void Palindromo(List<string> lista){
%
%        List<string> lista2 = new List<string>(lista);
%        lista2.Reverse();
%        if(lista == lista2){
%            Console.Write("Es una lista palindromo");
%        }else
%        {
%            Console.Write("No es una lista palindromo");
%        }
%    }
%
%    static void Main(string[] args)
%    {
%        Program.Palindromo(new List<string> {"Paul","Jairo","Oswaldo","Franco","Geras","Boro"});
%    }
%}

