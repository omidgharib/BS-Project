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
    public partial class Invoice : DataObject
    {
        #region Constructors
        public Invoice()
        {

        }
        public Invoice(int id)
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
        private int? _userId;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private bool? _user_Submit;
        [ColumnAttribute(SqlDbType.Bit, false, false)]
        public bool? User_Submit
        {
            get { return _user_Submit; }
            set { _user_Submit = value; }
        }
        private bool? _admin_Submit;
        [ColumnAttribute(SqlDbType.Bit, false, false)]
        public bool? Admin_Submit
        {
            get { return _admin_Submit; }
            set { _admin_Submit = value; }
        }
        private bool? _payOff_Submit;
        [ColumnAttribute(SqlDbType.Bit, false, false)]
        public bool? PayOff_Submit
        {
            get { return _payOff_Submit; }
            set { _payOff_Submit = value; }
        }
        private string _totalCost;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string TotalCost
        {
            get { return _totalCost; }
            set { _totalCost = value; }
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
					return new Column("Id", "Invoice", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column CartId
			{
				get
				{
					return new Column("CartId", "Invoice", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column UserId
			{
				get
				{
					return new Column("UserId", "Invoice", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}
			public static Column User_Submit
			{
				get
				{
					return new Column("User_Submit", "Invoice", typeof(bool?), SqlDbType.Bit, false, false, true, false, 1, 0);
				}
			}
			public static Column Admin_Submit
			{
				get
				{
					return new Column("Admin_Submit", "Invoice", typeof(bool?), SqlDbType.Bit, false, false, true, false, 1, 0);
				}
			}
			public static Column PayOff_Submit
			{
				get
				{
					return new Column("PayOff_Submit", "Invoice", typeof(bool?), SqlDbType.Bit, false, false, true, false, 1, 0);
				}
			}
			public static Column TotalCost
			{
				get
				{
					return new Column("TotalCost", "Invoice", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Date
			{
				get
				{
					return new Column("Date", "Invoice", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}

		}
    }

    public class InvoiceCollection : DataCollection<Invoice>
    {

    }
}