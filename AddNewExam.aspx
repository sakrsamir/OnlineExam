<%@ Page Title="" Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="AddNewExam.aspx.cs" Inherits="AddNewExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 69px; text-align: center">
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/images/88-512.png" Width="100px" />
                <br />
                <asp:Label ID="Label6" runat="server">Welcome</asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 53px; direction: ltr; text-align: center;">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" ImageUrl="~/images/1494174729_plus_circle.ico" ToolTip="Add Question" OnClick="ImageButton1_Click" />
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="Save Exam" Width="97px" OnClick="Button3_Click" />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                         <table style="width: 100%">
        <tr style="vertical-align:top;">
            <td rowspan="3" style="width: 265px; text-align: center;">
                <asp:Label ID="Label1" runat="server" Text="Questions"></asp:Label>
                <br />

                <br />
                <asp:ListBox ID="ListBox1" runat="server" Height="403px" Width="174px" style="font-weight: 700">
                </asp:ListBox>

            </td>
            <td style="height: 111px">
                <asp:Label ID="Label2" runat="server" Text="Add New Question"></asp:Label>
                <br />
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="479px" EnableTheming="True" Height="40px" MaxLength="600"></asp:TextBox>
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
                            <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 151px">
                            <asp:Label ID="Label10" runat="server" Text="Second Choise"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 151px">
                            <asp:Label ID="Label11" runat="server" Text="Third Choise"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
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
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table style="width: 100%; height: 178px">
                            <tr>
                                <td style="text-align: right; width: 395px; height: 59px">
                                    <asp:Label ID="Label16" runat="server" Text="Enter Name of Exam"></asp:Label>
                                </td>
                                <td style="width: 185px; height: 59px">
                                    <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
                                </td>
                                <td style="text-align: left; height: 59px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Required Name"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right; width: 395px; height: 52px">
                                    <asp:Label ID="Label17" runat="server" Text="Enter Time of Exam&lt;Minutes&gt;"></asp:Label>
                                </td>
                                <td style="width: 185px; height: 52px">
                                    <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>
                                </td>
                                <td style="text-align: left; height: 52px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="Required Time"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 395px">&nbsp;</td>
                                <td style="width: 185px">
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Create Exam" />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br />

                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td style="height: 53px; text-align: center;">
                <asp:Label ID="Label15" runat="server" Text="type exam name and time then click add to add new question after finishing question save your exam "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

