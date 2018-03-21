<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginSubmission.aspx.cs" Inherits="LoginSubmission" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="container">
        <div class="col-md-8 offset-2">
            <h1 class="text-center mt-5 mb-5">You have Been logged in.</h1>
			<p class="text-center mt-5 mb-5">
				<asp:Label ID="lblUsername" runat="server" CssClass="text-center" Width="100%"></asp:Label>
			</p>
        </div>
    </div>
</asp:Content>
