<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.master" AutoEventWireup="true" CodeFile="UpdatedRegistration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DashboardHeader" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DashboardContent" Runat="Server">
    <asp:SqlDataSource ID="sqlUpdateUser" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" OnUpdated="sqlUpdateUser_Updated" UpdateCommand="UPDATE [Users] SET [FirstName] = @firstName, [LastName] = @lastName, [Address] = @address, [Password] = @password WHERE [UserID] = @UserID">
        <UpdateParameters>
            <asp:SessionParameter Name="firstName" SessionField="firstName" Type="String" />
            <asp:SessionParameter Name="lastName" SessionField="lastName" Type="String" />
            <asp:SessionParameter Name="password" SessionField="password" Type="String" />
            <asp:SessionParameter Name="address" SessionField="address" Type="String" />
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p class="text-center mt-5 mb-5">
        <asp:Label ID="lblUpdate" runat="server" CssClass="text-center" Width="100%" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
    </p>
	<p class="text-center mt-5 mb-5">
		<asp:Label ID="lblResponse" runat="server" CssClass="text-center" Width="100%"></asp:Label>
	</p>
    <p class="text-center mt-5 mb-5">
        <asp:HyperLink ID="hlAction" runat="server"></asp:HyperLink>
    </p>
    
</asp:Content>

