<%@ Page Title="" Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="Degrees.aspx.cs" Inherits="Degrees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 58px; width: 502px; text-align: right">
                &nbsp;</td>
            <td style="height: 58px">
                <div id="search">
				<fieldset>
					
                    <asp:TextBox ID="TextBox1" CssClass="search-text" runat="server" Height="20px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/images/1494169529_system-search.ico" Width="40px" OnClick="ImageButton1_Click" />
				</fieldset>
		</div>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True">search by user or Fullname</asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 46px; text-align: center">
                <asp:Label ID="Label7" runat="server" Text="Filter by Exam"></asp:Label>&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="140px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 11px; vertical-align:top; text-align: center; background-color: #FF9900;" colspan="2">
                &nbsp;<asp:Label ID="Label11" runat="server" Text="Students have done this exam"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 138px; width: 502px; vertical-align:top; text-align: center;">
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="116px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="471px"></asp:ListBox>
            </td>
            <td style="height: 138px;vertical-align:top; text-align: center;">
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="True"></asp:Label>
                <br /><br />
                <asp:Label ID="Label9" runat="server" Font-Bold="True"></asp:Label>
                <br /><br />
                <asp:Label ID="Label10" runat="server" Font-Bold="True"></asp:Label>
                <br /><br />
                ------------------------------------------------------------------------------------------------------<br />
                <asp:Label ID="Label12" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

