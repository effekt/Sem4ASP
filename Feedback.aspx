<%@ Page Title="Feedback" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p></p>
        <p class="text-center">
        <asp:Label ID="lblfeedback" runat="server" Font-Names="Baskerville Old Face" Font-Size="XX-Large" ForeColor="Black" Text="Feedback"></asp:Label>
    </p>
    <p class="text-center">
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="426px" style="margin-left: 238px" Width="594px">
   <table class="w-100" style="height: 344px">
            <tr>
                <td class="text-center" style="height: 76px">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Names="Forte" Font-Size="Larger" ForeColor="#FF9933" Text="Make your voice heard!"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:TextBox ID="txtTitle" runat="server" Height="34px" Width="445px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="height: 55px">
                    <asp:TextBox ID="txtFeedback" runat="server" Height="120px" Width="445px"></asp:TextBox>
                </td>
            </tr>

        </table>
        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td class="text-center" style="height: 55px">
                    <asp:Button ID="Button1" runat="server" style="margin-left: 137" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    
    </asp:Content>
