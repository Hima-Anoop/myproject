<%@ Page Title="" Language="C#" MasterPageFile="~/Agency/Agency.master" AutoEventWireup="true" CodeFile="Add_product.aspx.cs" Inherits="Agency_Add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 142px;
        }
        .style3
        {
            width: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" class="form-control" Width="250px"  runat="server" AutoPostBack="True">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Mobile</asp:ListItem>
                    <asp:ListItem>Camera</asp:ListItem>
                    <asp:ListItem>Dress</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Sub Categegory Name</td>
            <td>
                <asp:TextBox ID="TextBox1"  class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Product Name</td>
            <td>
                <asp:TextBox ID="TextBox2"  class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Product Price</td>
            <td>
                <asp:TextBox ID="TextBox3"  class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Description</td>
            <td>
                <asp:TextBox ID="TextBox4"  class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1"  class="form-control" Width="250px"  runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="75px" Width="89px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" class="btn btn-warning" runat="server" onclick="Button2_Click" Text="Upload" />
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Product Status</td>
            <td>
                <asp:TextBox ID="TextBox6"  class="form-control" Width="250px"  runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" class="btn btn-warning" onclick="Button1_Click" 
                    Text="Add Product" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

