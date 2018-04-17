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
        ContentPlaceHolder c = (ContentPlaceHolder)Page.PreviousPage.Master.FindControl("ContentPlaceHolder1");
        TextBox email = (TextBox)c.FindControl("txtEmail");
        TextBox name = (TextBox)c.FindControl("txtName");
        RadioButtonList rating = (RadioButtonList)c.FindControl("rblRating");
        TextBox feedback = (TextBox)c.FindControl("txtFeedback");
        lblEmail.Text = email.Text;

        sqlSubmitFeedback.InsertCommandType = SqlDataSourceCommandType.Text;
        sqlSubmitFeedback.InsertCommand = "INSERT INTO Feedback (Email, Name, Rating, Feedback) VALUES (@email, @name, @rating, @feedback)";
        sqlSubmitFeedback.InsertParameters.Add("email", email.Text);
        sqlSubmitFeedback.InsertParameters.Add("name", name.Text);
        sqlSubmitFeedback.InsertParameters.Add("rating", rating.SelectedValue);
        sqlSubmitFeedback.InsertParameters.Add("feedback", feedback.Text);
        sqlSubmitFeedback.Insert();
    
    }
}