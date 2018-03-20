<%@ Page Title="Login" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="col-md-6 offset-3">
            <h1 class="text-center mt-5">Log In</h1>
            <p class="text-center">Already have an account? <a href="#">Sign Up</a>!</p>
            <div class="form-group">
                <label for="txtEmail" class="mx-auto">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server" Height="44px" Width="525px" CssClass="form-control mx-auto"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtPassword" class="mx-auto">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" Height="44px" Width="525px" CssClass="form-control mx-auto"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Log In" background=#93C47D OnClick="btnLogin_Click" CssClass="btn btn-success mx-auto" />
        </div>
    </div>
</asp:Content>