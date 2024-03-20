//Connection String 
        <connectionstrings>
            <add name="PortfolioCon" connectionstring="Data Source=LAPTOP-CH94TDFN\SQLEXPRESS;Integrated Security=true;Initial Catalog=Portfolio" providername="System.Data.SqlClient" />
        </connectionstrings>

//CRUD
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PortfolioCon %>"
            DeleteCommand="DELETE FROM [AddAchievement] WHERE [IID] = @IID"
            InsertCommand="INSERT INTO [AddAchievement] ([IName], [Image]) VALUES (@IName, @Image)"
            SelectCommand="SELECT [IID], [IName], [Image] FROM [AddAchievement]"
            UpdateCommand="UPDATE [AddAchievement] SET [IName] = @IName, [Image] = @Image WHERE [IID] = @IID"
            ></asp:SqlDataSource>


//Previous Login
        HttpCookie cookie = Request.Cookies["user_info"];

        if (cookie != null)
        {
            txtuserid.Text = cookie["username"].ToString();
            txtpass.Text = cookie["password"].ToString();
            // Cookie are inserted
            Response.Write("<span style='color: red;'>User Cookies are inserted</span>");

        }

//Login Done 
        Session["UserSession"] = dr.GetValue(0).ToString();

        HttpCookie cookie = new HttpCookie("user_info"); 
        cookie["username"] = txtuserid.Text.Trim();
        cookie["password"] = txtpass.Text.Trim(); 
        cookie.Expires = DateTime.Now.AddDays(3); //Parsistance cookies 
        Response.Cookies.Add(cookie);

        Response.Write("<script>alert('Login success');</script>");
        Response.Redirect("~/Admin_User/UserPage.aspx?username=" + Server.UrlEncode(dr.GetValue(0).ToString()));
                            
//Session Checking
        if (Session["AdminSession"] != null)
        {
            if (!IsPostBack)
            {
                //BindCategory();
            }
        }
        else
        {
            Response.Redirect("AdminLogin.aspx");
        }

