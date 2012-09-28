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
    public partial class Mobile_Details : DataObject
    {
        #region Constructors
        public Mobile_Details()
        {

        }
        public Mobile_Details(int mobileId)
        {
			this.MobileId = mobileId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _mobileId;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int MobileId
        {
            get { return _mobileId; }
            set { _mobileId = value; }
        }
        private string _productId;
        [ColumnAttribute(SqlDbType.VarChar, false, false)]
        public string ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private string _description;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }
        private string _weight;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Weight
        {
            get { return _weight; }
            set { _weight = value; }
        }
        private string _processor;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Processor
        {
            get { return _processor; }
            set { _processor = value; }
        }
        private string _memory;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Memory
        {
            get { return _memory; }
            set { _memory = value; }
        }
        private string _connections;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Connections
        {
            get { return _connections; }
            set { _connections = value; }
        }
        private string _display;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Display
        {
            get { return _display; }
            set { _display = value; }
        }
        private string _camera;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Camera
        {
            get { return _camera; }
            set { _camera = value; }
        }
        private string _oS;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string OS
        {
            get { return _oS; }
            set { _oS = value; }
        }
        private string _softWare;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string SoftWare
        {
            get { return _softWare; }
            set { _softWare = value; }
        }
        private string _more_Details;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string More_Details
        {
            get { return _more_Details; }
            set { _more_Details = value; }
        }
        private string _link_Info;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Link_Info
        {
            get { return _link_Info; }
            set { _link_Info = value; }
        }

        #endregion Properties

        #region Relations


        #endregion Relations
        
        public static class Columns
		{
			public static Column MobileId
			{
				get
				{
					return new Column("MobileId", "Mobile_Details", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column ProductId
			{
				get
				{
					return new Column("ProductId", "Mobile_Details", typeof(string), SqlDbType.VarChar, false, false, true, false, 50, 0);
				}
			}
			public static Column Description
			{
				get
				{
					return new Column("Description", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Weight
			{
				get
				{
					return new Column("Weight", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Processor
			{
				get
				{
					return new Column("Processor", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Memory
			{
				get
				{
					return new Column("Memory", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Connections
			{
				get
				{
					return new Column("Connections", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Display
			{
				get
				{
					return new Column("Display", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Camera
			{
				get
				{
					return new Column("Camera", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column OS
			{
				get
				{
					return new Column("OS", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column SoftWare
			{
				get
				{
					return new Column("SoftWare", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column More_Details
			{
				get
				{
					return new Column("More_Details", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Link_Info
			{
				get
				{
					return new Column("Link_Info", "Mobile_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}

		}
    }

    public class Mobile_DetailsCollection : DataCollection<Mobile_Details>
    {

    }
}