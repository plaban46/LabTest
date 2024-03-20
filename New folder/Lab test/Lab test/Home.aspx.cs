using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Lab_test
{
    public partial class Home : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["lab"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("");


            if (!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["user_info"];

                if (cookie != null)
                {
                    TextBox2.Text = cookie["username"].ToString();
                    TextBox3.Text = cookie["password"].ToString();
                    // Cookie are inserted
                    Response.Write("<span style='color:red;'>Cookies are inserted</span>");

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (chekcing())
            {
            String name = TextBox1.Text;
            String email = TextBox2.Text;
            String password = TextBox3.Text;

            using(SqlConnection con = new SqlConnection(connectionstring))
            {
                con.Open();
                string query = "insert into info(Name,Email,Pass) Values(@Name,@Email,@Pass)";
                SqlCommand sqlcommand = new SqlCommand(query, con);
                sqlcommand.Parameters.AddWithValue("@Name", name);
                sqlcommand.Parameters.AddWithValue("@Email", email);
                sqlcommand.Parameters.AddWithValue("@Pass", password);

                sqlcommand.ExecuteNonQuery();
                con.Close();

                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
                TextBox3.Text = String.Empty;

                Response.Write("Done");

                     

                Session["UserSession"] = "Session Created";

                HttpCookie cookie = new HttpCookie("user_info");
                cookie["username"] = email;
                cookie["password"] = password;
                cookie.Expires = DateTime.Now.AddDays(3); //Parsistance cookies 
                Response.Cookies.Add(cookie);

                Response.Write("<script>alert('Cookies Added');</script>");
                Response.Redirect("~/Show.aspx?username=" + Server.UrlEncode("Plaban Das"));   //Query String

                }

            }
            else
            {
                Response.Write("Invalid");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Show.aspx");
        } 

        private bool chekcing() 
        {
            if(TextBox1.Text == string.Empty)
            {
                return false;
            }else if(TextBox2.Text == string.Empty)
            {

            }else if(TextBox3.Text == string.Empty)
            {
                return false;
            }
            else
            {
                return true;
            }
            return false;
        }
 
    }
}