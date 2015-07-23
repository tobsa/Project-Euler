using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Problem10
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(GetPrimeSum(2000000));


            Console.Read();
        }

        static bool IsPrime(int n)
        {
            if (n == 0 || n == 1)
                return false;

            if (n == 2)
                return true;

            if (n % 2 == 0)
                return false;

            var sqrt = Math.Sqrt(n);

            for (var i = 3; i <= sqrt; i++)
            {
                if (n % i == 0)
                    return false;
            }

            return true;
        }

        static double GetPrimeSum(int n)
        {
            double sum = 2;

            for (var i = 3; i <= n; i += 2)
                sum += IsPrime(i) ? i : 0;

            return sum;
        }
    }
}
