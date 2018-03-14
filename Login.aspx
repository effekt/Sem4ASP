<%@ Page Title="Login" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>&nbsp;</p>
    <p class="text-center">
        <asp:Label ID="Label3" runat="server" Font-Names="Baskerville Old Face" Font-Size="XX-Large" ForeColor="Yellow" Text="Log In"></asp:Label>
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="305px" style="margin-left: 238px" Width="594px">
        <table class="w-100" style="height: 340px">
            <tr>
                <td class="text-center" style="height: 76px">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Names="Forte" Font-Size="Larger" ForeColor="Black" Text="Feeling Dandy?"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtEmail" runat="server" Height="34px" Width="445px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtPassword" runat="server" Height="34px" Width="445px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Button ID="btnLogin" runat="server" Text="Log In" background=#93C47D OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="Not a Member Yet? "></asp:Label><asp:HyperLink navigateurl="signUp.aspx" runat="server" Text="Sign Up!"/></asp:HyperLink>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p style="height: 126px; margin-top: 46; margin-bottom: 0px">&nbsp;</p>
</asp:Content>