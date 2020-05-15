<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="View_Influencers.aspx.cs" Inherits="Admin_View_Influencers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style5
        {
            width: 242px;
        }
        .style2
        {
            width: 275px;
        }
        .style6
        {
            height: 26px;
            width: 242px;
        }
        .style4
        {
            width: 275px;
            height: 26px;
        }
        .style3
        {
            height: 26px;
        }
        .style7
        {
            width: 244px;
            height: 25px;
        }
        .style8
        {
            width: 275px;
            height: 25px;
        }
        .style9
        {
            height: 25px;
        }
        .style10
        {
            width: 244px;
        }
        .style11
        {
            height: 26px;
            width: 244px;
        }
        .style12
        {
            width: 298px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" />
                        <asp:BoundField DataField="firstname" HeaderText="Name" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style1">
    <tr>
        <td colspan="2">
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Image ID="Image1" runat="server" Height="62px" style="margin-left: 0px" 
                                Width="65px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            First Name</td>
                        <td class="style2">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Last Name</td>
                        <td class="style4">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Gender</td>
                        <td class="style2">
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Country</td>
                        <td class="style2">
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Email</td>
                        <td class="style2">
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            Contact Number</td>
                        <td class="style2">
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Status</td>
                        <td>
                            <asp:Label ID="Label11" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1"  class="btn btn-warning" runat="server" Height="26px" onclick="Button1_Click" 
                                style="text-align: left" Text="Approve" Width="82px" />
                        </td>
                        <td>
                            <asp:Button ID="Button3"  class="btn btn-warning" runat="server" onclick="Button3_Click" Text="Reject" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
        </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

