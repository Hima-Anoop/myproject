<%@ Page Title="" Language="C#" MasterPageFile="~/Agency/Agency.master" AutoEventWireup="true" CodeFile="view_influencers.aspx.cs" Inherits="Agency_view_influencers" %>

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
            width: 242px;
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
        width: 106px;
    }
        .style11
        {
            width: 106px;
            height: 26px;
        }
        .style12
        {
            width: 302px;
        }
        .style13
        {
            width: 302px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style10">
                </td>
            <td>
                </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style11">
                </td>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Details of influencer</td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical" Height="279px" Width="124px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="firstname" HeaderText="First Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="facebook" DataTextField="facebook" 
                            HeaderText="Facebook" />
                        <asp:HyperLinkField DataNavigateUrlFields="youtube" DataTextField="youtube" 
                            HeaderText="Youtube" />
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
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td>
                <table class="style1">
    <tr>
        <td colspan="2">
            <asp:Panel ID="Panel1" runat="server">
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="62px" style="margin-left: 0px" 
                                Width="65px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            ID</td>
                        <td class="style2">
                            <asp:Label ID="Label11" runat="server"></asp:Label>
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
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button4" runat="server" class="btn btn-primary" Height="38px" 
                                onclick="Button4_Click" Text="Send Interest" />
                        </td>
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
            </asp:Panel>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style3">
        </td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
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
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
            </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

