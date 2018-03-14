<%@ Page Title="Home" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
					<asp:HyperLink NavigateUrl="#" CssClass="btn btn-success" runat="server">Sign Up</asp:HyperLink>
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
</asp:Content>