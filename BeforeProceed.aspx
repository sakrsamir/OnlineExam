<%@ Page Language="C#" MasterPageFile="~/Newmaster.master" AutoEventWireup="true" CodeFile="BeforeProceed.aspx.cs" Inherits="BeforeProceed" Title="Online Exam Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1181px; height: 328px;">
        <tr>
            <td style="width: 20px; height: 211px">
                <asp:Image ID="Image1" runat="server" Height="277px" ImageUrl="~/images/banner.jpg"
                    Width="384px" /></td>
            <td style="width: 1217px; height: 211px">
                <strong><span style="color: #008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INSTRUCTIONS<br />
                </span></strong><strong style="color: teal">
                    <br />
                    &nbsp;
                    1 . Do Not Refresh / Reload &nbsp;the Page While Answering!<br />
                    <br />
                    &nbsp; 2 .Click next after answering the Question or skip it .<br />
                    <br />
                    &nbsp;
                    3 .Test Module Works better with Firefox!...<br />
                    <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;All The Best!<br />
                <br />
                <br />
                <br />
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Take the Test >>" /></strong></td>
            <td style="width: 412px; height: 211px">
            </td>
        </tr>
    </table>
</asp:Content>

