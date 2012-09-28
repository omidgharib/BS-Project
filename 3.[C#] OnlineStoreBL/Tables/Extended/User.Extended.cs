using System;
using System.Data;
using Cruder.Core;
using Cruder.Core.Base;
using Cruder.Core.Data;

namespace OnlineStoreBL
{
    public partial class User
    {
        public static User LoginCheck(string UserName, string Password)
        {
            UserCollection list = new UserCollection();
            list.ReadList(Criteria.NewCriteria(User.Columns.UserName, CriteriaOperators.Like, UserName) &
                Criteria.NewCriteria(User.Columns.Password, CriteriaOperators.Like, Password));
            if (list.Count == 0)
            {
                return null;
            }
            else return list[0];

        }
        public static User UserExistCheck(string UserName)
        {
            UserCollection list = new UserCollection();
            list.ReadList(Criteria.NewCriteria(User.Columns.UserName, CriteriaOperators.Like, UserName));
            if (list.Count == 0)
            {
                return null;
            }
            else return list[0];
        }
    }
}