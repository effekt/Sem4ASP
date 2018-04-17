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
        sqlReserveEquipment.Insert();
    }

    protected void sqlReserveEquipment_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 1)
        {
            lblEqRes.Text = "Equipment Successfully Rented!";
            lblResponse.Text = "Please continue to dashboard.";
            hlAction.NavigateUrl = "~/Dashboard.aspx";
            hlAction.Text = "Continue";
        }
    }
}