/**********************************************
*                                             *
*    Generated code using Cruder .NET v1.1    *
*           2012/08/20 05:20:01 ب.ظ           *
*                                             *
**********************************************/

using System;
using System.Data;
using Cruder.Core;
using Cruder.Core.Base;
using Cruder.Core.Data;

namespace OnlineStoreBL
{
    public partial class Cart : DataObject
    {
        #region Constructors
        public Cart()
        {

        }
        public Cart(int id)
        {
			this.Id = id;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _id;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _cartId;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string CartId
        {
            get { return _cartId; }
            set { _cartId = value; }
        }
        private string _productId;
        [ColumnAttribute(SqlDbType.VarChar, false, false)]
        public string ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private int? _quantity;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? Quantity
        {
            get { return _quantity; }
            set { _quantity = value; }
        }
        private string _cost;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Cost
        {
            get { return _cost; }
            set { _cost = value; }
        }
        private int? _userId;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private string _date;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Date
        {
            get { return _date; }
            set { _date = value; }
        }

        #endregion Properties

        #region Relations


        #endregion Relations
        
        public static class Columns
		{
			public static Column Id
			{
				get
				{
					return new Column("Id", "Cart", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column CartId
			{
				get
				{
					return new Column("CartId", "Cart", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column ProductId
			{
				get
				{
					return new Column("ProductId", "Cart", typeof(string), SqlDbType.VarChar, false, false, true, false, 50, 0);
				}
			}
			public static Column Quantity
			{
				get
				{
					return new Column("Quantity", "Cart", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}
			public static Column Cost
			{
				get
				{
					return new Column("Cost", "Cart", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column UserId
			{
				get
				{
					return new Column("UserId", "Cart", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}
			public static Column Date
			{
				get
				{
					return new Column("Date", "Cart", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}

		}
    }

    public class CartCollection : DataCollection<Cart>
    {

    }
}