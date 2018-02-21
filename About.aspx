<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Handy Dandy Sports Center - About</title>
    <link rel="stylesheet" href="~/assets/bootstrap.min.css" />
    <script src="~/assets/jquery-3.2.1.slim.min.js"></script>
    <script src="~/assets/popper.min.js"></script>
    <script src="~/assets/bootstrap.min.js"></script>
</head>
<body>
    <!-- Navigation -->
    <nav class="sticky-top navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container">
            <asp:HyperLink CssClass="navbar-brand" NavigateUrl="Default.aspx" runat="server">Handy Dandy</asp:HyperLink>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sitenav" aria-controls="sitenav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

            <asp:Panel class="collapse navbar-collapse" ID="sitenav" runat="server">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <asp:HyperLink CssClass="nav-link" NavigateUrl="Default.aspx" runat="server">Home</asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink CssClass="nav-link" NavigateUrl="Info.aspx" runat="server">Information</asp:HyperLink>
                    </li>
                    <li class="nav-item active">
                        <asp:HyperLink CssClass="nav-link" NavigateUrl="About.aspx" runat="server">About <span class="sr-only">(current)</span></asp:HyperLink>
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
    <!-- End Navigation -->

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
