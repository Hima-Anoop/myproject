<%@ Page Title="" Language="C#" MasterPageFile="~/Agency/Agency.master" AutoEventWireup="true" CodeFile="view_profile.aspx.cs" Inherits="Agency_view_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style4
        {
            height: 26px;
            text-align: right;
            width: 171px;
        }
        .style5
        {
            height: 26px;
            width: 171px;
        }
        .style6
        {
            width: 171px;
        }
        .style7
        {
            height: 26px;
            text-align: right;
            width: 175px;
        }
        .style8
        {
            height: 26px;
            width: 175px;
        }
        .style9
        {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                </td>
            <td class="style2">
                Edit Your profile</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                Company ID</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                Company Name</td>
            <td>
                <asp:TextBox ID="txtcname" class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                Director Name</td>
            <td>
                <asp:TextBox ID="txtdname" class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                Address</td>
            <td>
                <asp:TextBox ID="txtaddr" class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                Contact Number</td>
            <td>
                <asp:TextBox ID="txtcontact" class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                Username</td>
            <td>
                <asp:TextBox ID="txtuname" class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                Password</td>
            <td>
                <asp:TextBox ID="txtpwd" class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style9">
                <asp:Button ID="Button1" class="btn btn-warning" runat="server" onclick="Button1_Click" Text="Update" 
                    style="height: 26px" />
            </td>
            <td>
                <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Delete" />
            </td>
        </tr>
    </table>
</asp:Content>

