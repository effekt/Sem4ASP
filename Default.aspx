<<<<<<< HEAD
﻿<%@ Page Title="Home" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <h1>Hello from Home </h1>
</asp:Content>
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Handy Dandy Sports Center</title>
    <link rel="stylesheet" href="~/assets/bootstrap.min.css" />
    <script src="~/assets/jquery-3.2.1.slim.min.js"></script>
    <script src="~/assets/popper.min.js"></script>
    <script src="~/assets/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Navigation -->
    <nav class="sticky-top navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <asp:HyperLink CssClass="navbar-brand" NavigateUrl="Default.aspx" runat="server">Handy Dandy</asp:HyperLink>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sitenav" aria-controls="sitenav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

            <asp:Panel class="collapse navbar-collapse" ID="sitenav" runat="server">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <asp:HyperLink CssClass="nav-link" NavigateUrl="Default.aspx" runat="server">Home <span class="sr-only">(current)</span></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink CssClass="nav-link" NavigateUrl="Info.aspx" runat="server">Information</asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink CssClass="nav-link" NavigateUrl="About.aspx" runat="server">About</asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink CssClass="nav-link" NavigateUrl="Feedback.aspx" runat="server">Feedback</asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink CssClass="nav-link" NavigateUrl="Login.aspx" runat="server">Login</asp:HyperLink>
                    </li>
                </ul>
            </asp:Panel>
        </div>
    </nav>
        <p>
            <br />
            Handy Dandy,</p>
    <!-- End Navigation -->
        <p>
            Sports center reservations,</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </p>
        made easy.<p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Start Reserving Today</p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <p>
            &nbsp;</p>
        <p>
            Already a<span class="text-primary"> member? Log in</span></p>
    </form>
</body>
</html>
>>>>>>> refs/remotes/origin/master
