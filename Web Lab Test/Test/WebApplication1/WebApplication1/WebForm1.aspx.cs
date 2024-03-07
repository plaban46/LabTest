using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (formValid())
            {
                using (SqlConnection sql = new SqlConnection(connectionstring)) { 
                    sql.Open();
                    string query = "insert into my_tab(email,pass) values(@email,@pass)";
                    SqlCommand command = new SqlCommand(query, sql);
                    command.Parameters.AddWithValue("@email", TextBox1.Text);
                    command.Parameters.AddWithValue("@pass", TextBox2.Text);
                    command.ExecuteNonQuery();
                    sql.Close();

                    Response.Redirect("WebForm2.aspx");
                }
         
            }
            else
            {
                Response.Write("<script>alert('Fill Up The Form')</script>");
            }
        }

        public bool formValid()
        {
            if(TextBox1.Text == string.Empty)
            {
                return false;
            }else if(TextBox2.Text == string.Empty){
                return false;
            }

            return true;
        }
    }
}