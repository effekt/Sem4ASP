<%@ Page Title="Feedback" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="container">
        <div class="col-md-8 offset-2">
            <h1 class="text-center mt-5 mb-5">Feedback</h1>
            <div class="form-group">
                <label for="txtEmail" class="mx-auto">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" Height="34px" Width="100%" CssClass="form-control mx-auto"></asp:TextBox>
            </div>

			<div class="form-group">
                <label for="txtName" class="mx-auto">Name</label>
                <asp:TextBox ID="txtName" runat="server" Height="34px" Width="100%" CssClass="form-control mx-auto"></asp:TextBox>
            </div>

			<div class="form-group">
                <label for="rblRating" class="mx-auto">Rating</label>
				<asp:RadioButtonList ID="rblRating" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="100%" TextAlign="Left">
					<asp:ListItem>1</asp:ListItem>
					<asp:ListItem>2</asp:ListItem>
					<asp:ListItem Selected="True">3</asp:ListItem>
					<asp:ListItem>4</asp:ListItem>
					<asp:ListItem>5</asp:ListItem>
				</asp:RadioButtonList>
			</div>

            <div class="form-group">
                <label for="txtFeedback" class="mx-auto">Feedback</label>
                <asp:TextBox ID="txtFeedback" runat="server" Height="120px" Width="100%" CssClass="form-control mx-auto"></asp:TextBox>
            </div>
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="mx-auto btn btn-success" OnClick="btnSubmit_Click" />

			<div class="form-group mrg-top">
				<h4>Email Requirements:</h4>
				<ul>
					<li>Is required<asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtEmail" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
					</li>
					<li>Must be a valid email and contain an @ symbol<asp:RegularExpressionValidator ID="revFirstLetterUsername" runat="server" ControlToValidate="txtEmail" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
					</li>
				</ul>
			</div>
        </div>
    </div>
</asp:Content>
