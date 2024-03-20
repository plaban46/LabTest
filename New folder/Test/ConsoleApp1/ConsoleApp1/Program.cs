using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Chef chef = new Chef();
            chef.MakeChicken();
            chef.MakeSalad();
            chef.MakeSpecialDish();

            ItalianChef italian = new ItalianChef();
            italian.MakeChicken();
            italian.MakeSalad();
            italian.MakeSpecialDish();
            italian.MakePizza();

            Console.ReadLine();
        }
    }
}
