<%@ Page Title="Home" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:sqldatasource runat="server" ID="sqlFeedback" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT TOP 3 [Name], [Rating], [Feedback] FROM [Feedback] ORDER BY FeedbackID DESC"></asp:sqldatasource>
	<div class="row">
		<div class="default-content col-6">
		   <div class="default-inner-content">
				<div class="default-inner-inner-content align-middle">
					<h1>Handy <span class="green-text">Dandy</span>.</h1>
					Sports center reservations<br />
					made <span class="green-text">easy.</span>
					<br />
					<br />
					Start Reserving Today
					<br />
					<asp:HyperLink NavigateUrl="~/Register.aspx" CssClass="btn btn-success" runat="server">Sign Up</asp:HyperLink>
					<br />
					<span class="inner-smaller-text">
						Already a member? <asp:HyperLink NavigateUrl="~/Login.aspx" runat="server">Log In</asp:HyperLink>
					</span>
				</div>
		   </div>
		</div>
		<div class="default-content col-6">
			<div class="default-right-content align-middle">
				Find What You Need.
				<br />
				<br />
				↓
				<br />
				<br />
				Book A Room.
				<br />
				<br />
				↓
				<br />
				<br />
				Skip The Receptionist.
			</div>
		</div>
	</div>
    <div class="row">
        <div class="container">
            <h1 class="text-center mt-5 mb-5">Just Look At Our Feedback!</h1>
            <asp:listview runat="server" ID="listFeedback" DataSourceID="sqlFeedback" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color:#FFF8DC;" Width="33%">Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />Rating:
                        <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                        <br />Feedback:
                        <asp:Label ID="FeedbackLabel" runat="server" Text='<%# Eval("Feedback") %>' />
                        <br /></td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />Rating:
                        <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                        <br />Feedback:
                        <asp:TextBox ID="FeedbackTextBox" runat="server" Text='<%# Bind("Feedback") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server" width="33%"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />Rating:
                        <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                        <br />Feedback:
                        <asp:TextBox ID="FeedbackTextBox" runat="server" Text='<%# Bind("Feedback") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color:#DCDCDC;color: #000000; min-height:300px;" width="33%">Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />Rating:
                        <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                        <br />Feedback:
                        <asp:Label ID="FeedbackLabel" runat="server" Text='<%# Eval("Feedback") %>' />
                        <br /></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" width="100%" style="min-height:300px;">
                        <tr runat="server">
                            <td runat="server" width="100%">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif; min-height:300px;" width="100%">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Name:
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                        <br />Rating:
                        <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                        <br />Feedback:
                        <asp:Label ID="FeedbackLabel" runat="server" Text='<%# Eval("Feedback") %>' />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:listview>
        </div>
    </div>
    <br />
</asp:Content>