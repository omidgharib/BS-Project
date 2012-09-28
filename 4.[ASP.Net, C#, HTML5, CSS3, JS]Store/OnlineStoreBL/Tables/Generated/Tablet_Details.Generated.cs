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
    public partial class Tablet_Details : DataObject
    {
        #region Constructors
        public Tablet_Details()
        {

        }
        public Tablet_Details(int tabletId)
        {
			this.TabletId = tabletId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _tabletId;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int TabletId
        {
            get { return _tabletId; }
            set { _tabletId = value; }
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
        private string _display;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Display
        {
            get { return _display; }
            set { _display = value; }
        }
        private string _connections;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Connections
        {
            get { return _connections; }
            set { _connections = value; }
        }
        private string _equipment;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Equipment
        {
            get { return _equipment; }
            set { _equipment = value; }
        }
        private string _oS;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string OS
        {
            get { return _oS; }
            set { _oS = value; }
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
			public static Column TabletId
			{
				get
				{
					return new Column("TabletId", "Tablet_Details", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column ProductId
			{
				get
				{
					return new Column("ProductId", "Tablet_Details", typeof(string), SqlDbType.VarChar, false, false, true, false, 50, 0);
				}
			}
			public static Column Description
			{
				get
				{
					return new Column("Description", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Weight
			{
				get
				{
					return new Column("Weight", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Processor
			{
				get
				{
					return new Column("Processor", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Memory
			{
				get
				{
					return new Column("Memory", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Display
			{
				get
				{
					return new Column("Display", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Connections
			{
				get
				{
					return new Column("Connections", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Equipment
			{
				get
				{
					return new Column("Equipment", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column OS
			{
				get
				{
					return new Column("OS", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Link_Info
			{
				get
				{
					return new Column("Link_Info", "Tablet_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}

		}
    }

    public class Tablet_DetailsCollection : DataCollection<Tablet_Details>
    {

    }
}