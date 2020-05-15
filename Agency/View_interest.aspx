<%@ Page Title="" Language="C#" MasterPageFile="~/Agency/Agency.master" AutoEventWireup="true" CodeFile="View_interest.aspx.cs" Inherits="Agency_View_interest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 170px;
        }
        .style3
        {
            width: 170px;
            height: 2px;
        }
        .style4
        {
            height: 2px;
        }
        .style5
        {
            width: 170px;
            height: 10px;
        }
        .style6
        {
            height: 10px;
        }
        .style7
        {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Interest by influencer</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="influencer_id" HeaderText="ID" />
                        <asp:BoundField DataField="influencer_name" HeaderText="Influencer Name" />
                        <asp:BoundField DataField="category" HeaderText="Category" />
                        <asp:BoundField DataField="product_id" HeaderText="Product ID" />
                        <asp:BoundField DataField="product_name" HeaderText="Product Name" />
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
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" Height="170px">
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                ID</td>
                            <td>
                                <asp:Label ID="lblintid" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                Influencer ID</td>
                            <td class="style4">
                                <asp:Label ID="infid" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Influencer Name</td>
                            <td>
                                <asp:Label ID="infname" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Product ID</td>
                            <td class="style6">
                                <asp:Label ID="lblpid" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Category</td>
                            <td>
                                <asp:Label ID="lblcat" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Sub Category</td>
                            <td>
                                <asp:Label ID="lblsub" runat="server" Text='<%# Eval("subcategory") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Product Name</td>
                            <td>
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Status</td>
                            <td>
                                <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:Button ID="Button1"   class="btn btn-primary" runat="server" CommandName="interest" Height="33px" 
                                    onclick="Button1_Click1" style="margin-left: 0px" Text="Approve" 
                                    Width="90px" />
                            </td>
                            <td>
                                <asp:Button ID="Button2"   class="btn btn-primary" runat="server" onclick="Button2_Click1" 
                                    Text="Reject" />
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
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <table __designer:mapid="f7" class="style1">
                    <tr __designer:mapid="119">
                        <td __designer:mapid="11a" class="style2">
                            &nbsp;</td>
                        <td __designer:mapid="11b">
                            &nbsp;</td>
                    </tr>
                    <tr __designer:mapid="11d">
                        <td __designer:mapid="11e" class="style2">
                            &nbsp;</td>
                        <td __designer:mapid="11f">
                            &nbsp;</td>
                    </tr>
                    <tr __designer:mapid="120">
                        <td __designer:mapid="121" class="style2">
                            &nbsp;</td>
                        <td __designer:mapid="122">
                            &nbsp;</td>
                    </tr>
                    <tr __designer:mapid="124">
                        <td __designer:mapid="125" class="style2">
                            &nbsp;</td>
                        <td __designer:mapid="126">
                            &nbsp;</td>
                    </tr>
                    <tr __designer:mapid="127">
                        <td __designer:mapid="128" class="style2">
                            &nbsp;</td>
                        <td __designer:mapid="129">
                            &nbsp;</td>
                    </tr>
                    <tr __designer:mapid="12a">
                        <td __designer:mapid="12b" class="style2">
                            &nbsp;</td>
                        <td __designer:mapid="12c">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

