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
        DataView usern = (DataView)sqlCheckUsername.Select(DataSourceSelectArguments.Empty);
        DataView usere = (DataView)sqlCheckEmail.Select(DataSourceSelectArguments.Empty);

        lblRegister.Text = "Registration Error";
        hlAction.NavigateUrl = "~/Register.aspx";
        hlAction.Text = "Return to Registration.";
        if (usern.Count == 1 && usere.Count == 1)
        {
            lblResponse.Text = "Username and Email already in use.";
        } else if (usern.Count == 1)
        {
            lblResponse.Text = "Username already in use.";
        } else if (usere.Count == 1)
        {
            lblResponse.Text = "Email already in use.";
        } else
        {
            sqlAddUser.InsertCommandType = SqlDataSourceCommandType.Text;
            sqlAddUser.InsertCommand = "INSERT INTO Users (FirstName, LastName, Address, Email, Active, Password, Username) VALUES (@fname, @lname, @address, @email, 1, @pw, @uname)";
            sqlAddUser.InsertParameters.Add("fname", Session["firstName"].ToString());
            sqlAddUser.InsertParameters.Add("lname", Session["lastName"].ToString());
            sqlAddUser.InsertParameters.Add("address", Session["address"].ToString());
            sqlAddUser.InsertParameters.Add("pw", Session["password"].ToString());
            sqlAddUser.InsertParameters.Add("email", Session["email"].ToString());
            sqlAddUser.InsertParameters.Add("uname", Session["username"].ToString());
            sqlAddUser.Insert();
        }
    }

    protected void sqlAddUser_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows == 1)
        {
            lblRegister.Text = "Registration Successful!";
            lblResponse.Text = "Please continue to login.";
            hlAction.NavigateUrl = "~/Login.aspx";
            hlAction.Text = "Continue to Login";
        }
    }
}