using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Problem9
{
    class Program
    {
        static void Main(string[] args)
        {
            for (var c = 0; c < 1000; c++)
            {
                for (var b = 0; b < c; b++)
                {
                    for (var a = 0; a < b; a++)
                    {
                        var sum = a + b + c;

                        if (IsPythagoreanTriplet(a, b, c) && sum == 1000)
                        {
                            Console.WriteLine("{0} {1} {2}", a, b, c);
                            Console.WriteLine("Product a * b * c = " + a * b * c);
                        }
                    }
                }
            }

            Console.Read();
        }

        static bool IsPythagoreanTriplet(int a, int b, int c)
        {
            return a*a + b*b == c*c;
        }
    }
}
