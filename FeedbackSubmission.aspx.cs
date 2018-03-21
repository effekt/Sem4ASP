using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class FeedbackSubmission : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.PreviousPage != null)
        {
            ContentPlaceHolder c = (ContentPlaceHolder)Page.PreviousPage.Master.FindControl("ContentPlaceHolder1");
            TextBox t = (TextBox)c.FindControl("txtEmail");
            lblEmail.Text = t.Text;
        }
    }
}