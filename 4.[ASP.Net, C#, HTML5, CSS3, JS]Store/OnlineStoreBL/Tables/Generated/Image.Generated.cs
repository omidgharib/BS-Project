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
    public partial class Image : DataObject
    {
        #region Constructors
        public Image()
        {

        }
        public Image(int imageId)
        {
			this.ImageId = imageId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _imageId;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int ImageId
        {
            get { return _imageId; }
            set { _imageId = value; }
        }
        private string _productId;
        [ColumnAttribute(SqlDbType.VarChar, false, false)]
        public string ProductId
        {
            get { return _productId; }
            set { _productId = value; }
        }
        private string _title;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }
        private string _address;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }
        private string _description;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }
        private bool? _product_logo;
        [ColumnAttribute(SqlDbType.Bit, false, false)]
        public bool? Product_logo
        {
            get { return _product_logo; }
            set { _product_logo = value; }
        }

        #endregion Properties

        #region Relations


        #endregion Relations
        
        public static class Columns
		{
			public static Column ImageId
			{
				get
				{
					return new Column("ImageId", "Image", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column ProductId
			{
				get
				{
					return new Column("ProductId", "Image", typeof(string), SqlDbType.VarChar, false, false, true, false, 50, 0);
				}
			}
			public static Column Title
			{
				get
				{
					return new Column("Title", "Image", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Address
			{
				get
				{
					return new Column("Address", "Image", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Description
			{
				get
				{
					return new Column("Description", "Image", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Product_logo
			{
				get
				{
					return new Column("Product_logo", "Image", typeof(bool?), SqlDbType.Bit, false, false, true, false, 1, 0);
				}
			}

		}
    }

    public class ImageCollection : DataCollection<Image>
    {

    }
}