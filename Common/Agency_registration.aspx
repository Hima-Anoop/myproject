<%@ Page Title="" Language="C#" MasterPageFile="~/Common/common.master" AutoEventWireup="true" CodeFile="Agency_registration.aspx.cs" Inherits="Common_Agency_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Agency Registration
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Company Name</td>
            <td class="style3">
                <asp:TextBox ID="txtcname" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcname" ErrorMessage="Please enter your company name" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Director Name</td>
            <td class="style3">
                <asp:TextBox ID="txtdname" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtdname" ErrorMessage="Please enter your director name" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Address</td>
            <td class="style3">
                <asp:TextBox ID="txtaddr" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtaddr" ErrorMessage="Please enter your address" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Contact Number</td>
            <td class="style3">
                <asp:TextBox ID="txtcontact" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtcontact" ErrorMessage="Please enter your contact number" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td class="style3">
                <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Please enter your email" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Username</td>
            <td class="style3">
                <asp:TextBox ID="txtuname" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtuname" ErrorMessage="Please enter your username" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td class="style3">
                <asp:TextBox ID="txtpwd" class="form-control" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtpwd" ErrorMessage="Please enter your password" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password</td>
            <td class="style3">
                <asp:TextBox ID="txtcpwd" class="form-control"  runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpwd" ControlToValidate="txtcpwd" 
                    ErrorMessage="Incorrect  password" ForeColor="#FF3300"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1"  class="btn btn-warning" runat="server" onclick="Button1_Click" 
                    Text="Sign Up" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

