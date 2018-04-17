<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DashboardHeader" Runat="Server">
    <asp:Label ID="lblUpdateProfile" runat="server" Text="Update Profile" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DashboardContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceUser" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div class="form-group">
        <label for="txtFName" class="mx-auto">First Name</label>
        <asp:TextBox ID="txtFName" runat="server" Height="44px" Width="100%" CssClass="form-control mx-auto"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="txtLName" class="mx-auto">Last Name</label>
        <asp:TextBox ID="txtLName" runat="server" Height="44px" Width="100%" CssClass="form-control mx-auto"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="txtAddress" class="mx-auto">Address</label>
        <asp:TextBox ID="txtAddress" runat="server" Height="44px" Width="100%" CssClass="form-control mx-auto"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="txtPassword" class="mx-auto">Password</label>
        <asp:TextBox ID="txtPassword" runat="server" Height="44px" Width="100%" CssClass="form-control mx-auto" TextMode="Password"></asp:TextBox>
    </div>

    <asp:Button ID="btnUpdate" runat="server" Text="Update" background=#93C47D CssClass="btn btn-success mx-auto mrg-bt" OnClick="btnUpdate_Click" />

    <div class="form-group mrg-top">
        <h4>First / Last Name & Address Requirements:</h4>
        <ul>
            <li>First Name Is required<asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator></li>
            <li>Last Name Is required<asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator></li>
            <li>Address Is required<asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator></li>
        </ul>
		<h4>Password Requirements:</h4>
		<ul>
			<li>Must be 8 to 16 characters long<asp:CustomValidator ID="customvPasswordLength" runat="server" ClientValidationFunction="validatePassword" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:CustomValidator>
			</li>
			<li>Is required<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
			</li>
			<li>Must start with a letter<asp:RegularExpressionValidator ID="revPasswordStartLetter" runat="server" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="^([A-Za-z]).*"></asp:RegularExpressionValidator>
			</li>
			<li>Has at least 1 ! or * in it<asp:RegularExpressionValidator ID="revPasswordRequireSpecial" runat="server" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="(.*)([!*]+)(.*)"></asp:RegularExpressionValidator>
			</li>
			<li>Has at least 1 digit in it<asp:RegularExpressionValidator ID="revPasswordRequireDigit" runat="server" ControlToValidate="txtPassword" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="(.*)([0-9])(.*)"></asp:RegularExpressionValidator>
			</li>
		</ul>
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

