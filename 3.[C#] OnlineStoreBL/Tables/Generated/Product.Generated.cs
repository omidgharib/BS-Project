/**********************************************
*                                             *
*    Generated code using Cruder .NET v1.1    *
*           2012/08/20 05:20:02 ب.ظ           *
*                                             *
**********************************************/

using System;
using System.Data;
using Cruder.Core;
using Cruder.Core.Base;
using Cruder.Core.Data;

namespace OnlineStoreBL
{
    public partial class Product : DataObject
    {
        #region Constructors
        public Product()
        {

        }
        public Product(string productId)
        {
			this.ProductId = productId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private string _productId = string.Empty;
        [ColumnAttribute(SqlDbType.VarChar, true, false)]
        public string ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private string _productName;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string ProductName
        {
            get { return _productName; }
            set { _productName = value; }
        }
        private string _price;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Price
        {
            get { return _price; }
            set { _price = value; }
        }
        private string _category;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Category
        {
            get { return _category; }
            set { _category = value; }
        }
        private string _brand;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Brand
        {
            get { return _brand; }
            set { _brand = value; }
        }
        private string _date_of_Production;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Date_of_Production
        {
            get { return _date_of_Production; }
            set { _date_of_Production = value; }
        }
        private string _discount;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Discount
        {
            get { return _discount; }
            set { _discount = value; }
        }
        private long? _stock;
        [ColumnAttribute(SqlDbType.BigInt, false, false)]
        public long? Stock
        {
            get { return _stock; }
            set { _stock = value; }
        }
        private int? _total_Rate;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? Total_Rate
        {
            get { return _total_Rate; }
            set { _total_Rate = value; }
        }
        private string _date_Created;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Date_Created
        {
            get { return _date_Created; }
            set { _date_Created = value; }
        }
        private int? _off_Percentage;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? Off_Percentage
        {
            get { return _off_Percentage; }
            set { _off_Percentage = value; }
        }

        #endregion Properties

        #region Relations


        #endregion Relations
        
        public static class Columns
		{
			public static Column ProductId
			{
				get
				{
					return new Column("ProductId", "Product", typeof(string), SqlDbType.VarChar, true, false, false, false, 50, 0);
				}
			}
			public static Column ProductName
			{
				get
				{
					return new Column("ProductName", "Product", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Price
			{
				get
				{
					return new Column("Price", "Product", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Category
			{
				get
				{
					return new Column("Category", "Product", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Brand
			{
				get
				{
					return new Column("Brand", "Product", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Date_of_Production
			{
				get
				{
					return new Column("Date_of_Production", "Product", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Discount
			{
				get
				{
					return new Column("Discount", "Product", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Stock
			{
				get
				{
					return new Column("Stock", "Product", typeof(long?), SqlDbType.BigInt, false, false, true, false, 19, 0);
				}
			}
			public static Column Total_Rate
			{
				get
				{
					return new Column("Total_Rate", "Product", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}
			public static Column Date_Created
			{
				get
				{
					return new Column("Date_Created", "Product", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Off_Percentage
			{
				get
				{
					return new Column("Off_Percentage", "Product", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}

		}
    }

    public class ProductCollection : DataCollection<Product>
    {

    }
}