<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Dashboard.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Default2" %>

<asp:Content ID="DashboardHeader" ContentPlaceHolderID="DashboardHeader" Runat="server">
    <asp:Label ID="lblUserDashboard" runat="server" Text="'s Dashboard" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
</asp:Content>

<asp:Content ID="DashboardContent" ContentPlaceHolderID="DashboardContent" Runat="Server">
    <asp:SqlDataSource ID="sdsPastReservations" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT Facilities.Name, Facilities.Location, Reservations.StartTime, Reservations.EndTime, Reservations.UserID FROM Reservations INNER JOIN Facilities ON Reservations.FacilityID = Facilities.FacilityID WHERE (Reservations.UserID = @UserID) AND (Reservations.StartTime < GetDate()) ORDER BY Reservations.StartTime DESC">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="sdsUpcomingReservations" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT Facilities.Name, Facilities.Location, Reservations.StartTime, Reservations.EndTime, Reservations.UserID, Reservations.ReservationID FROM Reservations INNER JOIN Facilities ON Reservations.FacilityID = Facilities.FacilityID WHERE (Reservations.UserID = @UserID) AND (Reservations.StartTime >= GetDate()) ORDER BY Reservations.StartTime ASC" DeleteCommand="DELETE FROM Rentals WHERE ReservationID = @ReservationID; DELETE FROM Reservations WHERE ReservationID = @ReservationID">
        <DeleteParameters>
            <asp:Parameter Name="ReservationID" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Label ID="lblUpcomingReservations" runat="server" Text="Upcoming Reservations" Font-Size="X-Large"></asp:Label>
    <hr class="mrg-bt" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sdsUpcomingReservations" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" ShowHeaderWhenEmpty="True" AllowPaging="True" DataKeyNames="ReservationID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Field" SortExpression="Name" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="StartTime" HeaderText="Start Time" SortExpression="StartTime" DataFormatString="{0:yyyy-MM-dd h:mm tt}" />
            <asp:BoundField DataField="EndTime" HeaderText="End Time" SortExpression="EndTime" DataFormatString="{0:yyyy-MM-dd h:mm tt}" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <asp:Label ID="lblPastReservations" runat="server" Text="Past Reservations" CssClass="mrg-top disp-block" Font-Size="X-Large"></asp:Label>
    <hr class="mrg-bt" />

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sdsPastReservations" ForeColor="#333333" GridLines="None" Width="100%" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Field" SortExpression="Name" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="StartTime" HeaderText="Start Time" SortExpression="StartTime" DataFormatString="{0:yyyy-MM-dd h:mm tt}" />
            <asp:BoundField DataField="EndTime" HeaderText="End Time" SortExpression="EndTime" DataFormatString="{0:yyyy-MM-dd h:mm tt}" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>

