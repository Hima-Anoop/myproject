<%@ Page Title="" Language="C#" MasterPageFile="~/Common/common.master" AutoEventWireup="true" CodeFile="influencer_registration.aspx.cs" Inherits="Common_influencer_registration" %>

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
            width: 225px;
        }
        .style6
        {
            height: 26px;
            width: 242px;
        }
        .style4
        {
            width: 225px;
            height: 26px;
        }
        .style3
        {
            height: 26px;
        }
        .style7
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="2" class="style7">
            Influencer Registration Form</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            First Name</td>
        <td class="style2">
            <asp:TextBox ID="txtfname" class="form-control" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtfname" ErrorMessage="Enter first name" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Last Name</td>
        <td class="style4">
            <asp:TextBox ID="txtlname" class="form-control" runat="server"></asp:TextBox>
        </td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtlname" ErrorMessage="Enter last name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Gender</td>
        <td class="style2">
            <asp:RadioButtonList ID="rblgen" runat="server" Height="16px" 
                RepeatDirection="Horizontal" Width="119px">
                <asp:ListItem Selected="True">Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="rblgen" ErrorMessage="Select gender" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Country</td>
        <td class="style2">
            <asp:TextBox ID="txtcountry" class="form-control" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtcountry" ErrorMessage="Enter your Country" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Email</td>
        <td class="style2">
            <asp:TextBox ID="txtemail" class="form-control" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Error in email address" 
                ForeColor="#FF3300" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Contact Number</td>
        <td class="style2">
            <asp:TextBox ID="txtcontact" class="form-control" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtcontact" ErrorMessage="RegularExpressionValidator" 
                ForeColor="#FF3300" ValidationExpression="^\d{10,12}$"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            <asp:DropDownList ID="ddlcategory" class="form-control" runat="server">
            </asp:DropDownList>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="ddlcategory" ErrorMessage="Select Category" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Username</td>
        <td class="style2">
            <asp:TextBox ID="txtuname" class="form-control" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="txtuname" ErrorMessage="Enter username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Password</td>
        <td class="style2">
            <asp:TextBox ID="txtpwd" class="form-control" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="txtpwd" ErrorMessage="RequiredFieldValidator" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style5">
            Upload Photo</td>
        <td class="style2">
            <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" Width="225px" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="Upload photo" ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Image ID="Image1" runat="server" Height="62px" style="margin-left: 41px" 
                Width="65px" />
        </td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style2">
            <asp:Button ID="Button1"  class="btn btn-warning" runat="server" onclick="Button1_Click" 
                Text="Sign Up" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

