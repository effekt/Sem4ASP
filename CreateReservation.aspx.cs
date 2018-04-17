using System;
using System.Collections.Generic;
using System.Globalization;
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
            cldReserveDate.SelectedDate = DateTime.Today;
        }
        Page.DataBind();
    }

    protected void btnReserve_Click(object sender, EventArgs e)
    {
        string startTime = cldReserveDate.SelectedDate.ToShortDateString() + " " + ddlSelectTime.SelectedValue.ToString();
        DateTime ts = DateTime.Parse(startTime);
        string endTime = ts.AddHours(2).ToString();

        sqlInsertReservation.InsertCommandType = SqlDataSourceCommandType.Text;
        sqlInsertReservation.InsertCommand = "INSERT INTO Reservations (FacilityID, UserID, StartTime, EndTime) VALUES (@facility, @user, @start, @end)";
        sqlInsertReservation.InsertParameters.Add("facility", ddlSelectField.SelectedValue);
        sqlInsertReservation.InsertParameters.Add("user", Session["UserID"].ToString());
        sqlInsertReservation.InsertParameters.Add("start", startTime);
        sqlInsertReservation.InsertParameters.Add("end", endTime);
        sqlInsertReservation.Insert();
    }



    protected void sqlInsertReservation_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        Response.Redirect("~/Dashboard.aspx");
    }

    protected void cldReserveDate_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Gray;
        }
    }
}