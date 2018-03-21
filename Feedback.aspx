<%@ Page Title="Feedback" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="col-md-6 offset-3">
            <h1 class="text-center mt-5 mb-5">Feedback</h1>
            <div class="form-group">
                <label for="txtEmail" class="mx-auto">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" Height="34px" Width="525px" CssClass="form-control mx-auto"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtFeedback" class="mx-auto">Feedback</label>
                <asp:TextBox ID="txtFeedback" runat="server" Height="120px" Width="525px" CssClass="form-control mx-auto"></asp:TextBox>
            </div>
            
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="mx-auto btn btn-success" OnClick="btnSubmit_Click" />

        </div>
    </div>
</asp:Content>
