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
    public partial class Product_Rating : DataObject
    {
        #region Constructors
        public Product_Rating()
        {

        }
        public Product_Rating(int ratingId)
        {
			this.RatingId = ratingId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _ratingId;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int RatingId
        {
            get { return _ratingId; }
            set { _ratingId = value; }
        }
        private string _productId;
        [ColumnAttribute(SqlDbType.VarChar, false, false)]
        public string ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private int? _userId;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private int? _rate;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? Rate
        {
            get { return _rate; }
            set { _rate = value; }
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
			public static Column RatingId
			{
				get
				{
					return new Column("RatingId", "Product_Rating", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column ProductId
			{
				get
				{
					return new Column("ProductId", "Product_Rating", typeof(string), SqlDbType.VarChar, false, false, true, false, 50, 0);
				}
			}
			public static Column UserId
			{
				get
				{
					return new Column("UserId", "Product_Rating", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}
			public static Column Rate
			{
				get
				{
					return new Column("Rate", "Product_Rating", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}
			public static Column Date
			{
				get
				{
					return new Column("Date", "Product_Rating", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}

		}
    }

    public class Product_RatingCollection : DataCollection<Product_Rating>
    {

    }
}