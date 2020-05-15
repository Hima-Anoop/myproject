<%@ Page Title="" Language="C#" MasterPageFile="~/Influencer/Influencer.master" AutoEventWireup="true" CodeFile="Influencer_viewprofile.aspx.cs" Inherits="Influencer_Influencer_viewprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .style1
        {
            width: 100%;
        }
        .style5
        {
            width: 175px;
        }
        .style2
        {
            width: 275px;
        }
        .style6
        {
            height: 26px;
            width: 175px;
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
        .style9
        {
            height: 23px;
        }
        .style10
        {
            width: 175px;
            height: 27px;
        }
        .style11
        {
            width: 275px;
            height: 27px;
        }
        .style12
        {
            height: 27px;
        }
        .style13
        {
            width: 161px;
        }
        .style14
        {
            height: 26px;
            width: 161px;
        }
        .style15
        {
            width: 161px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                <asp:Image ID="Image1" runat="server" Height="98px" Width="136px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
                ID</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
            First Name</td>
            <td class="style2">
                <asp:TextBox ID="txtfname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td class="style6">
            Last Name</td>
            <td class="style4">
                <asp:TextBox ID="txtlname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
            Gender</td>
            <td class="style2">
                <asp:RadioButtonList ID="rblgen"  runat="server" Height="16px" 
                RepeatDirection="Horizontal" Width="119px">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
            Country</td>
            <td class="style2">
                <asp:TextBox ID="txtcountry" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
            Email</td>
            <td class="style2">
                <asp:TextBox ID="txtemail" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
            Contact Number</td>
            <td class="style2">
                <asp:TextBox ID="txtcontact" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style10">
            Select Your Category</td>
            <td class="style11">
                <asp:DropDownList ID="ddlcategory" class="form-control" Width="250px" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
            Username</td>
            <td class="style2">
                <asp:TextBox ID="txtuname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
            Password</td>
            <td class="style2">
                <asp:TextBox ID="txtpwd" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1"   class="btn btn-warning" runat="server" onclick="Button1_Click" 
                Text="Update" />
            </td>
            <td class="style2">
                <asp:Button ID="Button3"  class="btn btn-warning" runat="server" onclick="Button3_Click" Text="Delete" />
            </td>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

