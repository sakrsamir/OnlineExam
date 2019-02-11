<%@ Page Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" Title="Online Exam Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <center>
            <table style="width: 381px; height: 51px ;">
                <tr>
                    <td colspan="3" style="height: 20px; background-color: #C0C0FF;">
                <asp:Label ID="Label2" runat="server" BackColor="#C0C0FF" BorderColor="White" Text="Login To manage Exams"
                    Width="374px" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
            <td style="width: 100px; height: 10px;">
                <asp:Label ID="Label3" runat="server" Text="User Name:" Width="68px" Font-Bold="False"></asp:Label></td>
            <td style="width: 139px; height: 10px;">
                <asp:TextBox ID="TxtStName" runat="server" Width="173px"></asp:TextBox></td>
            <td style="width: 90px; height: 10px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtStName"
                    ErrorMessage="*" Width="55px" Display="Dynamic" Height="16px"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
            <td style="width: 100px; height: 10px;">
                <asp:Label ID="Label4" runat="server" Text="Password:" Width="95px" 
                    Font-Bold="False" Height="16px"></asp:Label></td>
            <td style="width: 139px; height: 10px;">
                <asp:TextBox ID="TxtStudentID" runat="server" Width="172px" TextMode="Password"></asp:TextBox></td>
            <td style="width: 90px; height: 10px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtStudentID"
                    ErrorMessage="*" Width="55px" Display="Dynamic" Height="16px"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
            <td style="height: 10px;" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               <center> <asp:Label ID="Label6" runat="server" Text="For Teachers Only" Font-Bold="True" ForeColor="Red"></asp:Label></center>
                </td>
                </tr>
                <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 139px">
                &nbsp;</td>
            <td style="width: 90px">
                <asp:Button ID="Button4" runat="server" OnClick="Button1_Click" Text="Login" Width="59px" /></td>
                </tr>
            </table>
                </center>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width: 1184px">
        <tr>
            <td style="width: 91px">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" ForeColor="Black" OnClick="LinkButton4_Click">Log Out</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" Width="140px" 
                    PostBackUrl="~/AddNewExam.aspx" Font-Bold="True" ForeColor="Black">Post New Test</asp:LinkButton></td>
            <td style="width: 100px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 91px; ">
                <table>
                    <tr>
                        <td style="width: 100px">
                            &nbsp;</td>
                        <td style="width: 796px">&nbsp;</td>
                        <td style="width: 247px">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td style="text-align: right;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button5" runat="server" Text="Results" OnClick="Button5_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 100px; ">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" BackColor="Chocolate" Text="List of Available Tests:"
                    Width="931px" Font-Bold="True" ForeColor="White"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;<asp:ListBox ID="ListBox1" runat="server" Height="104px" Width="929px"  >
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <center>
                    <asp:Button ID="Button3" runat="server" Text="Edit Exam" OnClick="Button3_Click" />
                     &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Delete Exam" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Users Online : "></asp:Label>
&nbsp;
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </center>
            </td>
        </tr>
    </table>
        </asp:View>
    </asp:MultiView>

    
</asp:Content>

