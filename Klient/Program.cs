//using EFGameShopDatabase.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Klient.GameShopRef;

namespace TestClient
{
    class Program
    {
        static void Main(string[] args)
        {
            GameShopWarehouseClient client = new GameShopWarehouseClient();
            foreach (Item item in client.GetAllItems())
            {
                Console.WriteLine(item.Name + " " + item.Description);
            }
            Console.ReadLine();
            Console.ReadLine();
        }
    }
}