using System;
using System.Data;
using Cruder.Core;
using Cruder.Core.Base;
using Cruder.Core.Data;

namespace OnlineStoreBL
{
    public partial class Invoice
    {
        public static InvoiceCollection ShowInvoices()
        {
            InvoiceCollection lists = new InvoiceCollection();
            lists.ReadList();
            if (lists.Count!=0)
            {
                return lists;
            }
            else
            {
                return null;
            }
        }
    }
}