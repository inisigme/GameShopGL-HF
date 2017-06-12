using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using EFGameShopDatabase;
using EFGameShopDatabase.Models;
//using WarehouseWebAPI.Models;

namespace WarehouseWebAPI.Controllers
{
    public class ItemsController : ApiController
    {
        // GET: api/Items
        public IEnumerable<Item> Get()
        {
            using (WarehouseConnection db = new WarehouseConnection())
            {
     
                var items2 = Item.Map(db.GetAllItems());

                return items2;
            }
        }

        // GET: api/Items/5
        public Item Get(int id)
        {
            using (WarehouseConnection db = new WarehouseConnection())
            {
                return Item.Map(db.GetItemById(id));
            }
        }

        // POST: api/Items
        public void Post(Item item)
        {
            if (item != null)
                using (WarehouseConnection db = new WarehouseConnection())
                {
                    db.InsertNewItem(item);
                }

        }

        // PUT: api/Items/5
        public void Put(int id, Item item)
        {
            using (WarehouseConnection db = new WarehouseConnection())
            {
                if (db.GetItemById(id) != null)
                {
                    db.RemoveItem(item);
                    db.InsertNewItem(item.ReverseMap());
                }
                else
                    throw new HttpResponseException(HttpStatusCode.NotFound);
            }
        }

        // DELETE: api/Items/5
        public void Delete(int id)
        {
            using (WarehouseConnection db = new WarehouseConnection())
            {
                if (db.GetItemById(id) != null)
                    db.RemoveItem(db.GetItemById(id));
                else
                    throw new HttpResponseException(HttpStatusCode.NotFound);
            }
        }
    }
}
