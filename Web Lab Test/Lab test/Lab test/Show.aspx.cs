using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_test
{
    public partial class Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserSession"] != null)
            {
                if (!IsPostBack)
                {

                }
                TextBox1.Text = Request.QueryString["username"]; 
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}