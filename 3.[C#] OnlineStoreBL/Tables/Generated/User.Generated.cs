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
    public partial class User : DataObject
    {
        #region Constructors
        public User()
        {

        }
        public User(int userId)
        {
			this.UserId = userId;

            this.Read();
        }
        #endregion Constructors
     
        #region Properties
        private int _userId;
        [ColumnAttribute(SqlDbType.Int, true, true)]
        public int UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
        private string _name;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }
        private string _lastName;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; }
        }
        private string _userName;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        private string _password;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Password
        {
            get { return _password; }
            set { _password = value; }
        }
        private string _email;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Email
        {
            get { return _email; }
            set { _email = value; }
        }
        private string _tell;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Tell
        {
            get { return _tell; }
            set { _tell = value; }
        }
        private string _cell;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Cell
        {
            get { return _cell; }
            set { _cell = value; }
        }
        private string _state;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string State
        {
            get { return _state; }
            set { _state = value; }
        }
        private string _city;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string City
        {
            get { return _city; }
            set { _city = value; }
        }
        private string _address;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }
        private string _postalCode;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string PostalCode
        {
            get { return _postalCode; }
            set { _postalCode = value; }
        }
        private string _birthDay;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string BirthDay
        {
            get { return _birthDay; }
            set { _birthDay = value; }
        }
        private string _birthMonth;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string BirthMonth
        {
            get { return _birthMonth; }
            set { _birthMonth = value; }
        }
        private string _birthYear;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string BirthYear
        {
            get { return _birthYear; }
            set { _birthYear = value; }
        }
        private string _date_reg_day;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Date_reg_day
        {
            get { return _date_reg_day; }
            set { _date_reg_day = value; }
        }
        private string _date_reg_month;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Date_reg_month
        {
            get { return _date_reg_month; }
            set { _date_reg_month = value; }
        }
        private string _date_reg_year;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Date_reg_year
        {
            get { return _date_reg_year; }
            set { _date_reg_year = value; }
        }
        private int? _admin;
        [ColumnAttribute(SqlDbType.Int, false, false)]
        public int? Admin
        {
            get { return _admin; }
            set { _admin = value; }
        }
        private string _secret_Question;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Secret_Question
        {
            get { return _secret_Question; }
            set { _secret_Question = value; }
        }
        private string _answer_Secret_Question;
        [ColumnAttribute(SqlDbType.NText, false, false)]
        public string Answer_Secret_Question
        {
            get { return _answer_Secret_Question; }
            set { _answer_Secret_Question = value; }
        }
        private bool? _sex;
        [ColumnAttribute(SqlDbType.Bit, false, false)]
        public bool? Sex
        {
            get { return _sex; }
            set { _sex = value; }
        }

        #endregion Properties

        #region Relations


        #endregion Relations
        
        public static class Columns
		{
			public static Column UserId
			{
				get
				{
					return new Column("UserId", "User", typeof(int), SqlDbType.Int, true, false, false, true, 10, 0);
				}
			}
			public static Column Name
			{
				get
				{
					return new Column("Name", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column LastName
			{
				get
				{
					return new Column("LastName", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column UserName
			{
				get
				{
					return new Column("UserName", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Password
			{
				get
				{
					return new Column("Password", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Email
			{
				get
				{
					return new Column("Email", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Tell
			{
				get
				{
					return new Column("Tell", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Cell
			{
				get
				{
					return new Column("Cell", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column State
			{
				get
				{
					return new Column("State", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column City
			{
				get
				{
					return new Column("City", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Address
			{
				get
				{
					return new Column("Address", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column PostalCode
			{
				get
				{
					return new Column("PostalCode", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column BirthDay
			{
				get
				{
					return new Column("BirthDay", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column BirthMonth
			{
				get
				{
					return new Column("BirthMonth", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column BirthYear
			{
				get
				{
					return new Column("BirthYear", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Date_reg_day
			{
				get
				{
					return new Column("Date_reg_day", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Date_reg_month
			{
				get
				{
					return new Column("Date_reg_month", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Date_reg_year
			{
				get
				{
					return new Column("Date_reg_year", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Admin
			{
				get
				{
					return new Column("Admin", "User", typeof(int?), SqlDbType.Int, false, false, true, false, 10, 0);
				}
			}
			public static Column Secret_Question
			{
				get
				{
					return new Column("Secret_Question", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Answer_Secret_Question
			{
				get
				{
					return new Column("Answer_Secret_Question", "User", typeof(string), SqlDbType.NText, false, false, true, false, 1073741823, 0);
				}
			}
			public static Column Sex
			{
				get
				{
					return new Column("Sex", "User", typeof(bool?), SqlDbType.Bit, false, false, true, false, 1, 0);
				}
			}

		}
    }

    public class UserCollection : DataCollection<User>
    {

    }
}