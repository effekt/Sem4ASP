using System;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected String title;
    protected void Page_Load(object sender, EventArgs e)
    {
        SetActivePage();
        SetCopyrightMessage();
        //Debug.WriteLine(Page.Title);
        this.title = Page.Title;
        HeadTitle.Text = "Handy Dandy Sports Center - " + Page.Title;
    }

    public void SetCopyrightMessage()
    {
        Copyright.InnerHtml = "&copy; Copyright " + DateTime.Now.Year;
    }


    public void SetActivePage()
    {
        switch (Page.Title)
        {
            case "Home":
                Home.Attributes.Add("class", "nav-item active");
                break;
            case "Information":
                Information.Attributes.Add("class", "nav-item active");
                break;
            case "About":
                About.Attributes.Add("class", "nav-item active");
                break;
            case "Feedback":
                Feedback.Attributes.Add("class", "nav-item active");
                break;
            case "Login":
                Login.Attributes.Add("class", "nav-item active");
                break;
        }
    }
}
