<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="Admin_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 59%;
            height: 166px;
        }
        
table {
  border-collapse: collapse;
}

  * {
    text-shadow: none !important;
    box-shadow: none !important;
  }
  
* {
  box-sizing: border-box;
}

  tr {
    page-break-inside: avoid;
  }
        .style4
        {
        text-align: center;
        color: #0000CC;
        background-color: #FFFFFF;
        width: 170px;
    }
        .style3
        {
        text-align: center;
        color: #0000CC;
        background-color: #FFFFFF;
        width: 134px;
    }
        .style5
        {
        width: 170px;
    }
        .style7
    {
        width: 134px;
    }
        h6{
	margin:0;	
}	

h6 {
  font-size: 1rem;
}

h6 {
  margin-bottom: 0.5rem;
  font-family: inherit;
  font-weight: 500;
  line-height: 1.2;
  color: inherit;
}

h6 {
  margin-top: 0;
  margin-bottom: 0.5rem;
}

        .style6
        {
            text-align: center;
            width: 170px;
        }
    .style8
    {
        text-align: center;
        width: 134px;
    }
        .style2
        {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
            </td>
            <td>
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                
                    Add Category</h6>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" class="form-control" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" class="btn btn-warning" Height="27px" 
                    onclick="Button1_Click" Text="Add" Width="70px" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

