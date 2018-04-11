<%@ Page Title="Login" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="container">
        <div class="col-md-8 offset-2">
            <h1 class="text-center mt-5 mb-5">Log In</h1>
            <p class="text-center">Don't have an account? <asp:HyperLink NavigateUrl="~/Register.aspx" runat="server">Sign Up</asp:HyperLink>!</p>
            <div class="form-group">
                <label for="txtEmail" class="mx-auto">Username</label>
                <asp:TextBox ID="txtUsername" runat="server" Height="44px" Width="100%" CssClass="form-control mx-auto"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtPassword" class="mx-auto">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" Height="44px" Width="100%" CssClass="form-control mx-auto" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Log In" background=#93C47D OnClick="btnLogin_Click" CssClass="btn btn-success mx-auto" />

			<div class="form-group mrg-top">
				<h4>Username Requirements:</h4>
				<ul>
					<li>Must consist of only letters and numbers<asp:RegularExpressionValidator ID="revLettersNumbersUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9]+"></asp:RegularExpressionValidator>
					</li>
					<li>Is required<asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
					</li>
					<li>MusMust begin with a letter<asp:RegularExpressionValidator ID="revFirstLetterUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="^([A-Za-z])(.?)+"></asp:RegularExpressionValidator>
					</li>
				</ul>
				<h4>Password Requirements</h4>
				<ul>
					<li>Must be 8 to 16 characters long<asp:CustomValidator ID="customvPasswordLength" runat="server" ClientValidationFunction="validatePassword" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:CustomValidator>
					</li>
					<li>Is required<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
					</li>
					<li>Must start with a letter<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="^([A-Za-z]).*"></asp:RegularExpressionValidator>
					</li>
					<li>Has at least 1 ! or * in it<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="(.*)([!*]+)(.*)"></asp:RegularExpressionValidator>
					</li>
					<li>Has at least 1 digit in it<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="(.*)([0-9])(.*)"></asp:RegularExpressionValidator>
					</li>
				</ul>
			</div>
        </div>
    </div>
	<script>
		function validatePassword(source, args) {
			var pass = args.Value;
			if (!(pass.length >= 8 && pass.length <= 16))
				args.IsValid = false;
			else
				args.IsValid = true;
		}
	</script>
</asp:Content>