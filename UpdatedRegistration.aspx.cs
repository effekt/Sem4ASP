using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session == null || Session["LoggedIn"] == null)
            Server.Transfer("~/Default.aspx");

        sqlUpdateUser.Update();
    }

    protected void sqlUpdateUser_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 1)
        {
            Session["UserName"] = Session["firstName"];
            lblUpdate.Text = "Update Successful!";
            lblResponse.Text = "Please continue to dashboard.";
            hlAction.NavigateUrl = "~/Dashboard.aspx";
            hlAction.Text = "Continue";
        }
    }
}