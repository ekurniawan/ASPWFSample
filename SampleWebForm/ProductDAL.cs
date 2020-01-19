using SampleWebForm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SampleWebForm
{
    public class ProductDAL
    {
        public List<Product> GetProducts(int startIndex, int maxRows)
        {
            using (ProductContext entities = new ProductContext())
            {
                return (from p in entities.Products
                        select p)
                            .OrderBy(p => p.ProductID)
                            .Skip(startIndex)
                            .Take(maxRows).ToList();
            }
        }

        public int GetProductCount()
        {
            using (ProductContext entities = new ProductContext())
            {
                return entities.Products.Count();
            }
        }
    }
}