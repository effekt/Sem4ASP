<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-12 mrg-bt">
            <asp:Label ID="lblUserDashboard" runat="server" Text="'s Dashboard" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
        </div>
        <div class="col-md-3">
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" StaticDisplayLevels="2" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" Width="100%">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" Width="100%" />
                <DynamicMenuStyle BackColor="#B5C7DE" Width="100%" />
                <DynamicSelectedStyle BackColor="#507CD1" Width="100%" />
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" Width="100%" />
                <StaticMenuStyle Width="100%" />
                <StaticSelectedStyle BackColor="#507CD1" Width="100%" />
            </asp:Menu>
        </div>
        <div class="col-md-9">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT Facilities.Name, Facilities.Location, Reservations.StartTime, Reservations.EndTime, Reservations.UserID FROM Reservations INNER JOIN Facilities ON Reservations.FacilityID = Facilities.FacilityID WHERE (Reservations.UserID = @UserID) AND (Reservations.StartTime < GetDate())">
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT Facilities.Name, Facilities.Location, Reservations.StartTime, Reservations.EndTime, Reservations.UserID, Reservations.ReservationID FROM Reservations INNER JOIN Facilities ON Reservations.FacilityID = Facilities.FacilityID WHERE (Reservations.UserID = @UserID) AND (Reservations.StartTime >= GetDate()) ORDER BY Reservations.StartTime" DeleteCommand="DELETE FROM Rentals WHERE ReservationID = @ReservationID; DELETE FROM Reservations WHERE ReservationID = @ReservationID">
                <DeleteParameters>
                    <asp:Parameter Name="ReservationID" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lblUpcomingReservations" runat="server" Text="Upcoming Reservations" Font-Size="X-Large"></asp:Label>
            <hr class="mrg-bt" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" ShowHeaderWhenEmpty="True" AllowPaging="True" DataKeyNames="ReservationID">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
                    <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
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
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Field" SortExpression="Name" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="StartTime" HeaderText="Start Time" SortExpression="StartTime" />
                    <asp:BoundField DataField="EndTime" HeaderText="End Time" SortExpression="EndTime" />
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
        </div>
    </div>
</asp:Content>

