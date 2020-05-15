<%@ Page Title="" Language="C#" MasterPageFile="~/Influencer/Influencer.master" AutoEventWireup="true" CodeFile="Add_profile.aspx.cs" Inherits="Influencer_Add_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
            width: 334px;
        }
        .style3
        {
            width: 334px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;Add Profile&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Link to one of your&nbsp; best facebook post</td>
            <td>
                <asp:TextBox ID="txtfb" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Link to one of your best youtube videos</td>
            <td>
                <asp:TextBox ID="txtyt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Link to one of your best instagram posts</td>
            <td>
                <asp:TextBox ID="txtins" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Your&nbsp; other social profile&nbsp; Url(if you have)</td>
            <td>
                <asp:TextBox ID="txtsocial" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

