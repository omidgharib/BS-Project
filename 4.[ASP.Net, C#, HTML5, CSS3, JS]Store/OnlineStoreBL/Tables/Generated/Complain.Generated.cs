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
    public partial class Complain : DataObject
    {
        #region Constructors
        public Complain()
        {

        }
        public Complain(int complaintId)
        {
			this.ComplaintId = complaintId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _complaintId;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int ComplaintId
        {
            get { return _complaintId; }
            set { _complaintId = value; }
        }
        private int? _userId;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private string _text;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Text
        {
            get { return _text; }
            set { _text = value; }
        }
        private string _answer;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Answer
        {
            get { return _answer; }
            set { _answer = value; }
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
			public static Column ComplaintId
			{
				get
				{
					return new Column("ComplaintId", "Complain", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column UserId
			{
				get
				{
					return new Column("UserId", "Complain", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}
			public static Column Text
			{
				get
				{
					return new Column("Text", "Complain", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Answer
			{
				get
				{
					return new Column("Answer", "Complain", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Date
			{
				get
				{
					return new Column("Date", "Complain", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}

		}
    }

    public class ComplainCollection : DataCollection<Complain>
    {

    }
}