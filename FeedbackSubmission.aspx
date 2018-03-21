<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FeedbackSubmission.aspx.cs" Inherits="FeedbackSubmission" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="col-md-6 offset-3">
            <h1 class="text-center mt-5 mb-5">Thanks for the Feedback!</h1>
            <div class="mx-auto">
				<asp:Label ID="lblEmail" runat="server"></asp:Label>
			</div>
			<div class="mx-auto">
				<asp:Label ID="lblFeedback" runat="server"></asp:Label>
			</div>
        </div>
    </div>
</asp:Content>

