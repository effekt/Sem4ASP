using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session == null || Session["LoggedIn"] == null)
            Server.Transfer("~/Default.aspx");

        if (!IsPostBack)
        {
            DataView d = (DataView)SqlDataSourceUser.Select(DataSourceSelectArguments.Empty);

            txtFName.Text = "" + d[0]["FirstName"];
            txtLName.Text = "" + d[0]["LastName"];
            txtAddress.Text = "" + d[0]["Address"];
        }

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Session.Remove("address");
        Session.Remove("firstName");
        Session.Remove("lastName");
        Session.Remove("password");
        Session.Add("password", getMd5Hash(txtPassword.Text));
        Session.Add("address", txtAddress.Text);
        Session.Add("firstName", txtFName.Text);
        Session.Add("lastName", txtLName.Text);
        Server.Transfer("~/UpdatedRegistration.aspx");

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