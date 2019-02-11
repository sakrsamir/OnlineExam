<%@ Page Title="" Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="TakeExam.aspx.cs" Inherits="TakeExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
            <table style="width: 100%; background-image: none">
        <tr>
            <td style="height: 113px; ">&nbsp;</td>
            <td style="height: 113px; width: 315px;">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="10pt" Text="Exam Name : " ForeColor="Red"></asp:Label>
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
            <td style="height: 113px; vertical-align:top; ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/images/88-512.png" Width="67px" />
                <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="Label6" runat="server"></asp:Label>
            </td>
            <td style="height: 113px">
                <div style="border: 5px solid orange; height: 43px; text-align: center;padding-top:20px">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red" Font-Size="Medium"></asp:Label>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:HiddenField ID="HiddenField2" runat="server" />
                </div>
            </td>
        </tr>
        <tr>
            <td style="height: 41px; background-image: url('images/circl_all.png');" colspan="4"></td>
        </tr>
        <tr>
            <td style="height: 187px; vertical-align:top" colspan="4">
                <center>
                   <br />
                    <asp:Label ID="Label1" runat="server" Text="Choose The Correct Answer ?" Font-Bold="True" Font-Size="10pt" ForeColor="Red"></asp:Label>
                </center>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="12pt"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="a" />
            </td>
        </tr>
        <tr>
            <td style="height: 69px; width: 6px;">&nbsp;</td>
            <td style="height: 69px; width: 315px; text-align: center;">
                <asp:Button ID="Button1" runat="server" Text="Skip" Width="65px" OnClick="Button1_Click" />
            </td>
            <td style="height: 69px; width: 308px; text-align: center;">
                <asp:Button ID="Button2" runat="server" Text="Next" Width="64px" OnClick="Button2_Click" />
            </td>
            <td style="height: 69px; text-align: center;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="True"></asp:Label>
                /<asp:Label ID="Label11" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
    </table>
        

            

       
    
</asp:Content>

