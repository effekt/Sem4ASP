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
    }

    protected void btnReserve_Click(object sender, EventArgs e)
    {
        Session.Add("EqResID", ddlSelectReservation.SelectedValue);
        Session.Add("EqEqID", ddlSelectEquipment.SelectedValue);
        Session.Add("EqAmt", txtHowMany.Text);
        Server.Transfer("~/EquipmentReserved.aspx");
    }
}