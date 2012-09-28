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
    public partial class Laptop_Details : DataObject
    {
        #region Constructors
        public Laptop_Details()
        {

        }
        public Laptop_Details(int laptopId)
        {
			this.LaptopId = laptopId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _laptopId;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int LaptopId
        {
            get { return _laptopId; }
            set { _laptopId = value; }
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
        private string _graphicCard;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string GraphicCard
        {
            get { return _graphicCard; }
            set { _graphicCard = value; }
        }
        private string _rAM;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string RAM
        {
            get { return _rAM; }
            set { _rAM = value; }
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
        private string _ports;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Ports
        {
            get { return _ports; }
            set { _ports = value; }
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
			public static Column LaptopId
			{
				get
				{
					return new Column("LaptopId", "Laptop_Details", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column ProductId
			{
				get
				{
					return new Column("ProductId", "Laptop_Details", typeof(string), SqlDbType.VarChar, false, false, true, false, 50, 0);
				}
			}
			public static Column Description
			{
				get
				{
					return new Column("Description", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Weight
			{
				get
				{
					return new Column("Weight", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Processor
			{
				get
				{
					return new Column("Processor", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column GraphicCard
			{
				get
				{
					return new Column("GraphicCard", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column RAM
			{
				get
				{
					return new Column("RAM", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Memory
			{
				get
				{
					return new Column("Memory", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Display
			{
				get
				{
					return new Column("Display", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Connections
			{
				get
				{
					return new Column("Connections", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Equipment
			{
				get
				{
					return new Column("Equipment", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Ports
			{
				get
				{
					return new Column("Ports", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column More_Details
			{
				get
				{
					return new Column("More_Details", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Link_Info
			{
				get
				{
					return new Column("Link_Info", "Laptop_Details", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}

		}
    }

    public class Laptop_DetailsCollection : DataCollection<Laptop_Details>
    {

    }
}