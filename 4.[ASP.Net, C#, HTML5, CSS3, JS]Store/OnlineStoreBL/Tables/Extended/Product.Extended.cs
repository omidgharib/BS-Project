using System;
using System.Data;
using Cruder.Core;
using Cruder.Core.Base;
using Cruder.Core.Data;

namespace OnlineStoreBL
{
    public partial class Product
    {
        public static ProductCollection BestRating()
        {
            ProductCollection list = new ProductCollection();
            //list.ReadTop(4, true, Product.Columns.Total_Rate);

            return list;
        }

        public static Product callbackProductName(string ProductId)
        {
            ProductCollection lists = new ProductCollection();
            lists.ReadList(Criteria.NewCriteria(Product.Columns.ProductId,CriteriaOperators.Like,ProductId));
            if (lists.Count != 0)
            {
                return lists[0];
            }
            else return null;
        
        }

        public static ProductCollection mobiles()
        {
            ProductCollection lists = new ProductCollection();
            lists.ReadList(Criteria.NewCriteria(Product.Columns.Category, CriteriaOperators.Like, "mobile"));
            if (lists.Count != 0)
            {
                return lists;
            }
            else return null;

        }

        public static ProductCollection tablets()
        {
            ProductCollection lists = new ProductCollection();
            lists.ReadList(Criteria.NewCriteria(Product.Columns.Category, CriteriaOperators.Like, "tablet"));
            if (lists.Count != 0)
            {
                return lists;
            }
            else return null;

        }
    }
}