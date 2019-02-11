<%@ Page Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="TestHome.aspx.cs" Inherits="TestHome" Title="Online Exam Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    &nbsp;
    
    <table style="width: 1183px">
        <tr>
            <td colspan="3" style="background-color: white">
                <asp:Label ID="Label4" runat="server" BackColor="#FFFFC0" Font-Bold="True" Text="select your exam then click start"
                    Width="224px"></asp:Label></td>
            <td colspan="1" style="background-color: white">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="background-color: #c0c0ff">
    <asp:Label ID="Label1" runat="server" BackColor="#C0C0FF" Text="List of Available Tests:"
        Width="753px" Font-Bold="True"></asp:Label></td>
            <td colspan="1" style="background-color: #c0c0ff">
            </td>
        </tr>
        <tr>
            <td style="width: 160px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ListBox ID="ListBox1" runat="server" Height="104px" Width="929px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                </asp:ListBox>
            </td>
            <td colspan="1">
            </td>
        </tr>
        <tr>
            <td style="width: 160px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Text="Start Exam" OnClick="Button1_Click1" />
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
        
    
</asp:Content>

