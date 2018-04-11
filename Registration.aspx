<%@ Page Title="Registration" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sqlCheckEmail" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT [Email] FROM [Users] WHERE ([Email] = @Email)">
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="email" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlCheckUsername" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT [Username] FROM [Users] WHERE ([Username] = @Username)">
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlAddUser" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" OnInserted="sqlAddUser_Inserted"></asp:SqlDataSource>

    <div class="col-md-8 offset-2">
        <p class="text-center mt-5 mb-5">
            <asp:Label ID="lblRegister" runat="server" CssClass="text-center" Width="100%" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
        </p>
		<p class="text-center mt-5 mb-5">
			<asp:Label ID="lblResponse" runat="server" CssClass="text-center" Width="100%"></asp:Label>
		</p>
        <p class="text-center mt-5 mb-5">
            <asp:HyperLink ID="hlAction" runat="server"></asp:HyperLink>
        </p>
    </div>
</asp:Content>

