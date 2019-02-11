<%@ Page Title="" Language="C#" MasterPageFile="~/NewMaster.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="background-position: center center; height: 156px; text-align: center; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: 21px; text-transform: none; color: white; font-style: normal; text-decoration: underline overline; background-image: url('images/Admin.gif'); background-repeat: no-repeat; background-size:cover;">Register your information</td>
        </tr>
        <tr>
            <td style="width: 563px; height: 51px; text-align: center;">
                <asp:Label ID="Label6" runat="server" Text="Full Name"></asp:Label>
            </td>
            <td style="width: 610px; height: 51px; text-align: left;">
                <asp:TextBox ID="fnametxt" runat="server" style="text-align: justify; margin-left: 0px" Width="430px"></asp:TextBox>
            </td>
            <td style="width: 316px; height: 51px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fnametxt" Display="Dynamic" ErrorMessage="Required Full Name !!!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 563px; height: 51px; text-align: center;">
                <asp:Label ID="Label12" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 610px; height: 51px; text-align: left;">
                <asp:TextBox ID="mailtxt" runat="server" TextMode="Email" Width="430px"></asp:TextBox>
            </td>
            <td style="width: 316px; height: 51px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mailtxt" Display="Dynamic" ErrorMessage="Not Corrected  Email !!!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 563px; height: 48px; text-align: center;">
                <asp:Label ID="Label7" runat="server" Text="Birth Date"></asp:Label>
            </td>
            <td style="width: 610px; height: 48px; text-align: left;">
                <br />
                <asp:TextBox ID="datetxt" runat="server" TextMode="DateTime" Width="430px"></asp:TextBox>
            </td>
            <td style="width: 316px; height: 48px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="datetxt" Display="Dynamic" ErrorMessage="Required Birth Date !!!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 563px; height: 45px; text-align: center;">
                <asp:Label ID="Label8" runat="server" Text="Phone number"></asp:Label>
            </td>
            <td style="width: 610px; height: 45px; text-align: justify;">
                <asp:TextBox ID="phonetxt" runat="server" TextMode="Phone" Width="430px"></asp:TextBox>
            </td>
            <td style="width: 316px; height: 45px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phonetxt" Display="Dynamic" ErrorMessage="Required Phone Number !!!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 563px; height: 45px; text-align: center;">
                <asp:Label ID="Label9" runat="server" Text="User Name"></asp:Label>
            </td>
            <td style="width: 610px; height: 45px; text-align: justify;">
                <asp:TextBox ID="usertxt" runat="server" Width="430px"></asp:TextBox>
            </td>
            <td style="width: 316px; height: 45px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="usertxt" Display="Dynamic" ErrorMessage="Required user Name !!!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 563px; height: 45px; text-align: center;">
                <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 610px; height: 45px; text-align: justify;">
                <asp:TextBox ID="passtxt" runat="server" TextMode="Password" Width="430px"></asp:TextBox>
            </td>
            <td style="width: 316px; height: 45px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="passtxt" Display="Dynamic" ErrorMessage="Required Password !!!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 563px; height: 45px; text-align: center;">
                <asp:Label ID="Label11" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td style="width: 610px; height: 45px; text-align: justify;">
                <asp:TextBox ID="conPasstxt" runat="server" TextMode="Password" Width="430px"></asp:TextBox>
            </td>
            <td style="width: 316px; height: 45px">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passtxt" ControlToValidate="conPasstxt" ErrorMessage="Password Not Matched !!!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 45px; text-align: center;" colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Register" Width="109px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

