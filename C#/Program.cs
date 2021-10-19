using System;
using System.Linq;

namespace Homework
{
    class Program
    {
        static void Main(string[] args)
        {
            //
            Console.WriteLine("\nProject 1.1");
            Console.Write("Please enter a positive number : ");
            int n = Convert.ToInt32(Console.ReadLine().Trim());
            Console.Write("Please enter " + n+ " numbers (Leave spaces between numbers when you write) : ");
            int[] arr = Console.ReadLine()
                    .Split(new Char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries)
                    .Select(item => int.Parse(item))
                    .ToArray();
            
            foreach(var ar in arr)
            {
                if(ar % 2 == 0)
                    Console.Write(ar + " ");
            }
            
            //
            Console.WriteLine("\nProject 1.2");
            Console.Write("Please enter two positive numbers. ");
            Console.Write("firts : ");
            int n2 = Convert.ToInt32(Console.ReadLine().Trim());
            Console.Write("Second : ");
            int m = Convert.ToInt32(Console.ReadLine().Trim());
            Console.Write("Please enter " + n+ " numbers (Leave spaces between numbers when you write) : ");
            int[] arr2 = Console.ReadLine().Split(new Char[] {' '}, StringSplitOptions.RemoveEmptyEntries).Select(item => int.Parse(item)).ToArray();
            foreach(var ar in arr2)
            {
                if(ar % m == 0 || ar == m )
                    Console.Write(ar + " ");
            }
            
            //
            Console.WriteLine("\nProject 1.3");
            Console.Write("Please enter a positive numbers : ");
            int n3 = Convert.ToInt32(Console.ReadLine());
            string[] a = new string[n3];
            for(int i =0; i<n3; i++)
            {
                Console.Write("Enter word : ");
                a[i] = Console.ReadLine();
            }
            Array.Reverse(a);
            foreach(var a_ in a)
            {
                Console.Write(a_+ " ");
            }
            
            //
            Console.WriteLine("\nProject 1.4");
            Console.Write("Please write a sentence : ");
            string sentence = Console.ReadLine();
            string[] _sentence = sentence.Split(" ");

            int letters = _sentence.Length;
            int words = 0;

            foreach(var item in _sentence)
            {
                words += item.Length;
            }

            Console.WriteLine("Number of letters: {0}",letters);
            Console.WriteLine("Word count : {0}",words);
            
        }
    }
}
