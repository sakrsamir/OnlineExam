<%@ Page Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Online Exam Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<table style="width: 1195px; height: 161px">
        <tr>
            <td colspan="1" rowspan="2" style="width: 311px; height: 212px;">
                <table style="width: 421px; height: 127px">
                    <tr>
                        <td style="width: 311px; height: 3px">
                <asp:Label ID="Label5" runat="server" BackColor="White" Font-Bold="True" Font-Size="Large"
                    ForeColor="#0000C0" Text="Online Exam" Width="414px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="text-justify: distribute-all-lines; width: 462px; height: 3px; text-align: justify">
                            <br />
                            
                            <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                            This is a free system with simple method to store data.<br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if you want to use this system .contact us.......&nbsp; 
                            <br />
                            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sakr Samir&nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp;</td>
                    </tr>
                </table>
            </td>
            
            
            <td colspan="3" style="height: 104px">
            
            <!-------------------------------->
            
                <br />
                <br />
                <br />
            
            <fieldset style="width: 381px; height: 170px">
            <table style="width: 381px; height: 51px">
                <tr>
                    <td colspan="3" style="height: 20px; background-color: #C0C0FF;">
                <asp:Label ID="Label1" runat="server" BackColor="#C0C0FF" BorderColor="White" Text="Login To Take Exams"
                    Width="374px" Font-Bold="True"></asp:Label></td>
                </tr>
                <tr>
            <td style="width: 100px; height: 10px;">
                <asp:Label ID="Label2" runat="server" Text="User Name:" Width="68px" Font-Bold="False"></asp:Label></td>
            <td style="width: 139px; height: 10px;">
                <asp:TextBox ID="TxtStName" runat="server" Width="173px"></asp:TextBox></td>
            <td style="width: 90px; height: 10px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtStName"
                    ErrorMessage="*" Width="55px" Display="Dynamic" Height="16px"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
            <td style="width: 100px; height: 10px;">
                <asp:Label ID="Label3" runat="server" Text="Password:" Width="95px" 
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
                <asp:Label ID="Label4" runat="server" Text="Use &#39;username&#39; and &#39;password&#39; as login credentials"></asp:Label></td>
                </tr>
                <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 139px">
                <asp:HyperLink ID="HyperLink1" runat="server" Height="19px" NavigateUrl="~/Register.aspx"
                    Width="167px">Register Here</asp:HyperLink></td>
            <td style="width: 90px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="59px" /></td>
                </tr>
            </table>
            </fieldset>
            
            </td>
            <td colspan="1" style="height: 104px; width: 268435408px;">
            </td>
        </tr>
        </table>
</asp:Content>

