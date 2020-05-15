<%@ Page Title="" Language="C#" MasterPageFile="~/Influencer/Influencer.master" AutoEventWireup="true" CodeFile="View_product.aspx.cs" Inherits="Influencer_View_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 126%;
            height: 492px;
        }
        .style2
        {
            width: 170px;
        }
        .style3
        {
            width: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <table class="w-100">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                <asp:DataList ID="DataList1" runat="server" 
                    onitemcommand="DataList1_ItemCommand" CellPadding="0" ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="75px" 
                                        ImageUrl='<%# Eval("photo") %>' style="text-align: left" Width="87px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Product ID</td>
                                <td>
                                    <asp:Label ID="Productid" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
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
                                    Sub Categegory Name</td>
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
                                    Product Price</td>
                                <td>
                                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Description</td>
                                <td>
                                    <asp:Label ID="lbldes" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Product Status</td>
                                <td>
                                    <asp:Label ID="lblstatus" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Agency ID</td>
                                <td>
                                    <asp:Label ID="lblagency" runat="server" Text='<%# Eval("agency_id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Button ID="Button1"  class="btn btn-warning" runat="server" CommandName="interest" Height="33px" 
                                        style="margin-left: 85px" Text="Send Interest" Width="148px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                        Font-Strikeout="False" Font-Underline="False" />
                </asp:DataList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
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
</asp:Content>

