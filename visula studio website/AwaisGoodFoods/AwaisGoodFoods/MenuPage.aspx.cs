using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net; //This is a libarary
using System.Net.Mail; // This is a library

public partial class MenuPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/MainPage.aspx");//This goes to the Homepage
    }

    protected void btnOrder_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/OrderPage.aspx");//Theis goes to the order page
    }
}