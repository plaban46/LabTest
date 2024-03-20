using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        BankAccount acc = new BankAccount(1212,0);
          
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void diposit_btn(object sender, EventArgs e)
        { 
            if(TextBox1.Text != string.Empty)
            {
                if (Convert.ToDouble(TextBox1.Text )  >= 1000)
            {
                Response.Write("Give less than 1000");
            }
            else
            {
                acc.diposit(Convert.ToDouble(TextBox1.Text));
                TextBox2.Text = Convert.ToString(acc.showBalance());
            }
            }
            else
            {
                Response.Write("Give Diposit Value");
            }


        }
        protected void withdraw_btn(object sender, EventArgs e)
        {
            if(TextBox1.Text != string.Empty)
            {
            if ((acc.showBalance() - Convert.ToDouble(TextBox1.Text)) >= 0)
            {
                acc.withdraw(Convert.ToDouble(TextBox1.Text));
                TextBox2.Text = Convert.ToString(acc.showBalance()); 
            }
            else
            {
                Response.Write("Not Available Balance");
            }
            }
            else
            {
                Response.Write("Give Withdraw Value");
            }


             
        }
    }
}