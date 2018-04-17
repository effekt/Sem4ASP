<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.master" AutoEventWireup="true" CodeFile="EquipmentReserved.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DashboardHeader" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DashboardContent" Runat="Server">
    <asp:SqlDataSource ID="sqlReserveEquipment" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" OnInserted="sqlReserveEquipment_Inserted" InsertCommand="INSERT INTO Rentals (EquipmentID, ReservationID, EquipmentAmount) VALUES (@equipment, @reservation, @amt)">
        <InsertParameters>
            <asp:SessionParameter Name="equipment" SessionField="EqEqID" Type="Int32" />
            <asp:SessionParameter Name="reservation" SessionField="EqResID" Type="Int32" />
            <asp:SessionParameter Name="amt" SessionField="EqAmt" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
    <p class="text-center mt-5 mb-5">
        <asp:Label ID="lblEqRes" runat="server" CssClass="text-center" Width="100%" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
    </p>
	<p class="text-center mt-5 mb-5">
		<asp:Label ID="lblResponse" runat="server" CssClass="text-center" Width="100%"></asp:Label>
	</p>
    <p class="text-center mt-5 mb-5">
        <asp:HyperLink ID="hlAction" runat="server"></asp:HyperLink>
    </p>
</asp:Content>

