using System;
using System.Collections.Generic;
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

        if (!IsPostBack)
        {
            lblUserDashboard.Text = Session["UserName"].ToString() + "'s Dashboard";
        }
        
    }

    protected void sqlGetEquipment_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception != null)
        {
            lblDel.Text = e.Exception.Message;
            e.ExceptionHandled = true;
        } else if (e.AffectedRows == 0)
        {
            lblDel.Text = e.Command.CommandText;
        } else
        {
            lblDel.Text = "It worked!";
        }
    }
}