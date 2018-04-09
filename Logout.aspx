<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-md-8 offset-2">
        <p class="text-center mt-5 mb-5">
            <asp:Label ID="lblLogout" runat="server" CssClass="text-center" Width="100%" Font-Bold="True" Font-Size="X-Large" ForeColor="Black">You Have Been Logged Out</asp:Label>
        </p>
        <p class="text-center mt-5 mb-5">
            <asp:HyperLink ID="hlReturn" runat="server" NavigateUrl="~/Default.aspx">Return to Homepage</asp:HyperLink>
        </p>
    </div>
</asp:Content>

