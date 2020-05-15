<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin_home.aspx.cs" Inherits="Admin_Admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Admin/View_Influencers.aspx">view Influencers</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/Admin/View_agencies.aspx">View Registered Agencies</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" 
                    NavigateUrl="~/Admin/add_category.aspx">Add Category</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

