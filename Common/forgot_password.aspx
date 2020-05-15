 <%@ Page Title="" Language="C#" MasterPageFile="~/Common/common.master" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" Inherits="Common_forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
  * {
    text-shadow: none !important;
    box-shadow: none !important;
  }
  
* {
  box-sizing: border-box;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                Username</td>
                                            <td>
                                                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                                    style="margin-left: 6px" Text="Next" Width="90px" />
                                            </td>
                                        </tr>
                                    </table>
                        <br />
                                </asp:View>
                    <br />
                                <asp:View ID="influencer" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                Name</td>
                                            <td>
                                                <asp:TextBox ID="iname" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Email</td>
                                            <td>
                                                <asp:TextBox ID="imail" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Phone</td>
                                            <td>
                                                <asp:TextBox ID="iph" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                            </td>
                                            <td class="style2">
                                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Next" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                    <br />
                                <asp:View ID="agency" runat="server">
                        <br />
                        <br />
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                Name</td>
                                            <td>
                                                <asp:TextBox ID="agencyname" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Email</td>
                                            <td>
                                                <asp:TextBox ID="agencymail" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Phone</td>
                                            <td>
                                                <asp:TextBox ID="agencyph" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                            </td>
                                            <td class="style2">
                                                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Next" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                    <br />
                    <br />
                    <br />
                                <asp:View ID="admin" runat="server">
                        <br />
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                Name</td>
                                            <td>
                                                <asp:TextBox ID="adminname" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                            </td>
                                            <td class="style2">
                                                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Next" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                    <br />
                    <br />
                                <asp:View ID="ipwd" runat="server">
                        <br />
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                New Password</td>
                                            <td>
                                                <asp:TextBox ID="txtnewpwd" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Confirm Password</td>
                                            <td>
                                                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                            </td>
                                            <td class="style2">
                                                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                                                    Text="Change Password" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                    <br />
                    <br />
                                <asp:View ID="agpwd" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                New Password</td>
                                            <td>
                                                <asp:TextBox ID="txtnewpwd0" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Confirm Password</td>
                                            <td>
                                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                            </td>
                                            <td class="style2">
                                                <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                                    Text="Change Password" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                    <br />
                    <br />
                                <asp:View ID="apwd" runat="server">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                New Password</td>
                                            <td>
                                                <asp:TextBox ID="txtnewpwd1" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Confirm Password</td>
                                            <td>
                                                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                            </td>
                                            <td class="style2">
                                                <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                                                    Text="Change Password" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                    <br />
                    <br />
                            </asp:MultiView>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
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
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

