<%@ Page Title="" Language="C#" MasterPageFile="~/Agency/Agency.master" AutoEventWireup="true" CodeFile="agency_home.aspx.cs" Inherits="Agency_agency_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 167px;
        }
        .style2
        {
            width: 309px;
        }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                WELCOME&nbsp;
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:Button ID="Button1"   class="btn btn-warning" runat="server" onclick="Button1_Click" 
                    Text="View Profile" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                Search</td>
            <td>
                <asp:DropDownList ID="ddlcategory" class="form-control" Width="250px" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;
                <asp:Button ID="Button3" class="btn btn-warning" runat="server" 
                    onclick="Button3_Click" Text="Search" Width="125px" />
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="style7">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="81px" 
                                        ImageUrl='<%# "~/Common/"+Eval("photo") %>' Width="78px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    ID</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    First Name</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("firstname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Last Name</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("lastname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Gender</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Country</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("country") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Email</td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Contact</td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("contact") %>'></asp:Label>
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
                                    <asp:Button ID="Button2"   runat="server" CommandName="interest" 
                                        Text="Send Interest" />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

