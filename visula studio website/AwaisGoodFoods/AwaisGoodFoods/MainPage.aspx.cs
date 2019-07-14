using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net; //This is a libarary
using System.Net.Mail; // This is a library

public partial class MainPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnMenu_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Menupage.aspx");//This goes to the menu page
    }

    protected void btnOrder_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/OrderPage.aspx");//This goes to the orderpage
    }
}