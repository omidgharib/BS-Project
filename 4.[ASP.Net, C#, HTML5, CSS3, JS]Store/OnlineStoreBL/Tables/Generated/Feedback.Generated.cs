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
    public partial class Feedback : DataObject
    {
        #region Constructors
        public Feedback()
        {

        }
        public Feedback(int feedbackId)
        {
			this.FeedbackId = feedbackId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _feedbackId;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int FeedbackId
        {
            get { return _feedbackId; }
            set { _feedbackId = value; }
        }
        private string _email;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Email
        {
            get { return _email; }
            set { _email = value; }
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
			public static Column FeedbackId
			{
				get
				{
					return new Column("FeedbackId", "Feedback", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column Email
			{
				get
				{
					return new Column("Email", "Feedback", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Text
			{
				get
				{
					return new Column("Text", "Feedback", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Answer
			{
				get
				{
					return new Column("Answer", "Feedback", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Date
			{
				get
				{
					return new Column("Date", "Feedback", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}

		}
    }

    public class FeedbackCollection : DataCollection<Feedback>
    {

    }
}