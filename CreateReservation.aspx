<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.master" AutoEventWireup="true" CodeFile="CreateReservation.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="DashboardHeader" Runat="Server">
    <asp:Label ID="lblCreateReservation" runat="server" Text="Create Reservation" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DashboardContent" Runat="Server">
    <asp:SqlDataSource ID="sqlGetFields" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" SelectCommand="SELECT FacilityID, CONCAT(Location, ' - ', Name) FROM [Facilities] ORDER BY Location"></asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlInsertReservation" runat="server" ConnectionString="<%$ ConnectionStrings:HandyDandyLogin %>" OnInserted="sqlInsertReservation_Inserted"></asp:SqlDataSource>
    
    <div class="row">
        <div class="col-md-4 font-weight-bold">
            Select Amenity
        </div>
        <div class="col-md-8">
            <asp:DropDownList ID="ddlSelectField" runat="server" DataSourceID="sqlGetFields" DataTextField="Column1" DataValueField="FacilityID" Width="100%"></asp:DropDownList>
        </div>
    </div>
    <div class="row mrg-top">
        <div class="col-md-4 font-weight-bold">
            Select Date
        </div>
        <div class="col-md-8">
            <asp:Calendar ID="cldReserveDate" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnDayRender="cldReserveDate_DayRender" TitleFormat="Month" Width="100%">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </div>
    </div>
    <div class="row mrg-top">
        <div class="col-md-4 font-weight-bold">
            Select Time
        </div>
        <div class="col-md-8">
            <asp:DropDownList ID="ddlSelectTime" runat="server" Width="100%">
                <asp:ListItem Value="8:00:00 AM">8:00 AM - 10:00 AM</asp:ListItem>
                <asp:ListItem Value="10:00:00 AM">10:00 AM - 12:00 PM</asp:ListItem>
                <asp:ListItem Value="12:00:00 PM">12:00 PM - 2:00 PM</asp:ListItem>
                <asp:ListItem Value="2:00:00 PM">2:00 PM - 4:00 PM</asp:ListItem>
                <asp:ListItem Value="4:00:00 PM">4:00 PM - 6:00 PM</asp:ListItem>
                <asp:ListItem Value="6:00:00 PM">6:00 PM - 8:00 PM</asp:ListItem>
                <asp:ListItem Value="8:00:00 PM">8:00 PM - 10:00 PM</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
    <div class="row mrg-top">
        <div class="col-md-4 offset-8">
            <asp:Button ID="btnReserve" runat="server" Text="Reserve" OnClick="btnReserve_Click" CssClass="btn btn-success" Width="100%" />
        </div>
    </div>
</asp:Content>

