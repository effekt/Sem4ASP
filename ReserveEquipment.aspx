<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.master" AutoEventWireup="true" CodeFile="ReserveEquipment.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DashboardHeader" Runat="Server">
    <asp:Label ID="lblReserveEquipment" runat="server" Text="Reserve Equipment" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="DashboardContent" Runat="Server">
    <asp:SqlDataSource ID="sqlGetReservations" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT ReservationID, CONVERT(varchar(20), StartTime, 100) + ' - ' + CONVERT(varchar(20), EndTime, 100) AS ResTime FROM [Reservations] WHERE ([UserID] = @UserID) AND (StartTime >= GetDate()) ORDER BY StartTime">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlGetEquipment" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT * FROM [Equipment]"></asp:SqlDataSource>
    <div class="row">
        <div class="col-md-4 font-weight-bold">
            Select Reservation
        </div>
        <div class="col-md-8">
            <asp:DropDownList ID="ddlSelectReservation" runat="server" DataSourceID="sqlGetReservations" DataTextField="ResTime" DataValueField="ReservationID" Width="100%"></asp:DropDownList>
        </div>
    </div>
    <div class="row mrg-top">
        <div class="col-md-4 font-weight-bold">
            Select Equipment
        </div>
        <div class="col-md-8">
            <asp:DropDownList ID="ddlSelectEquipment" runat="server" DataSourceID="sqlGetEquipment" DataTextField="Type" DataValueField="EquipmentID" Width="100%"></asp:DropDownList>
        </div>
    </div>
    <div class="row mrg-top">
        <div class="col-md-4 font-weight-bold">
            How Many To Rent
        </div>
        <div class="col-md-8">
            <asp:TextBox ID="txtHowMany" runat="server" Width="100%"></asp:TextBox>
        </div>
    </div>
    <div class="row mrg-top">
        <div class="col-md-4 offset-8">
            <asp:Button ID="btnReserve" runat="server" Text="Reserve" OnClick="btnReserve_Click" CssClass="btn btn-success" Width="100%" />
        </div>
    </div>
    <hr />
    <h4>Amount Requirements:</h4>
    <ul>
        <li>Amount Is required<asp:RequiredFieldValidator ID="rfvAmount" runat="server" ControlToValidate="txtHowMany" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator></li>
        <li>Amount must be greater than 0<asp:CompareValidator ID="cfvAmount" runat="server" ErrorMessage="&lt;- Requirement not fulfilled" ForeColor="#FF0066" SetFocusOnError="True" ControlToValidate="txtHowMany" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator></li>
    </ul>
</asp:Content>

