<%@ Page Title="" Language="C#" MasterPageFile="~/Common/common.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Common_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 287px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                LOGIN</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Username</td>
            <td class="style2">
                <asp:TextBox ID="txtuname" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Enter username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td class="style2">
                <asp:TextBox ID="txtpwd" class="form-control" Width="250px" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Enter password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" 
                    PostBackUrl="~/Common/forgot_password.aspx">Forgot Password</asp:LinkButton>
            </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click"   class="btn btn-warning" Text="Login" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Common/influencer_registration.aspx">New Influencer</asp:HyperLink>
            </td>
            <td class="style2">
                <asp:HyperLink ID="HyperLink2" runat="server" 
                    NavigateUrl="~/Common/Agency_registration.aspx">New Agency</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

