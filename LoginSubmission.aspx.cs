using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Data;

public partial class LoginSubmission : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.PreviousPage != null)
        {
            ContentPlaceHolder c = (ContentPlaceHolder)Page.PreviousPage.Master.FindControl("ContentPlaceHolder1");
            TextBox username = (TextBox)c.FindControl("txtUsername");
            TextBox password = (TextBox)c.FindControl("txtPassword");
            Session["username"] = username.Text;
            Session["password"] = getMd5Hash(password.Text);
            DataView d = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            int count = d.Count;

            if (count == 1)
            {
                lblLogin.Text = "You have successfully logged in.";
                lblUsername.Text = "Welcome back " + d[0]["FirstName"];
                hlLoggedIn.NavigateUrl = "~/Dashboard.aspx";
                hlLoggedIn.Text = "Continue to Dashboard";
                Session["LoggedIn"] = true;
                Session["UserID"] = d[0]["UserID"];
                Session["UserName"] = d[0]["FirstName"];
            } else
            {
                lblLogin.Text = "You have entered an incorrect username or password.";
                lblUsername.Text = "Please try again.";
                hlLoggedIn.NavigateUrl = "~/Login.aspx";
                hlLoggedIn.Text = "Return to Login";
            }
        }
    }

    protected string getMd5Hash(string input)
    { 
        MD5 md5Hasher = MD5.Create();
        byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));
        StringBuilder sBuilder = new StringBuilder();
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));
        }
        return sBuilder.ToString();
    }
}