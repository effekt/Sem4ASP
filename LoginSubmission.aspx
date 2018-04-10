<%@ Page Title="Login Submission" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginSubmission.aspx.cs" Inherits="LoginSubmission" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT * FROM [Users] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="col-md-8 offset-2">
            <p class="text-center mt-5 mb-5">
                <asp:Label ID="lblLogin" runat="server" CssClass="text-center" Width="100%" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
            </p>
			<p class="text-center mt-5 mb-5">
				<asp:Label ID="lblUsername" runat="server" CssClass="text-center" Width="100%"></asp:Label>
			</p>
            <p class="text-center mt-5 mb-5">
                <asp:HyperLink ID="hlLoggedIn" runat="server"></asp:HyperLink>
            </p>
        </div>
    </div>
</asp:Content>
