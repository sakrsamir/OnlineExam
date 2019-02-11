<%@ Page Title="" Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="EditExam.aspx.cs" Inherits="EditExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width: 100%">
        <tr style="vertical-align:top;">
            <td rowspan="3" style="width: 322px; text-align: center;">
                <asp:Label ID="Label6" runat="server" Text="Questions : "></asp:Label>
                <br />

                <br />
                <asp:ListBox ID="ListBox1" runat="server" Height="403px" Width="260px" style="font-weight: 700" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                </asp:ListBox>

            </td>
            <td style="height: 111px">
                <asp:Label ID="Label7" runat="server" Text="Select the Question To Edit it"></asp:Label>
                <br />
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="550px" EnableTheming="True" Height="40px" MaxLength="600"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 184px; vertical-align:top; text-align: justify;">
                <table style="width: 100%; height: 173px">
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Label ID="Label8" runat="server" Text="Chooses"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 151px">
                            <asp:Label ID="Label9" runat="server" Text="First Choise"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 151px">
                            <asp:Label ID="Label10" runat="server" Text="Second Choise"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 151px">
                            <asp:Label ID="Label11" runat="server" Text="Third Choise"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 151px; height: 47px;">
                            <asp:Label ID="Label12" runat="server" Text="True Choise"></asp:Label>
                        </td>
                        <td style="height: 47px">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="168px">
                                <asp:ListItem>First</asp:ListItem>
                                <asp:ListItem>Second</asp:ListItem>
                                <asp:ListItem>Third</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="height: 169px; text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="Save Question" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Delete Question" OnClick="Button2_Click" />
            </td>
        </tr>
        </table>
    
</asp:Content>

