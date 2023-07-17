<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        font-size: x-large;
    }
    .auto-style5 {
        text-align: right;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style3">
    <tr>
        <td class="auto-style4" colspan="2"><strong>Message Panel</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">Full Name :</td>
        <td>
            <asp:TextBox ID="TxtMFullName" runat="server" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail Address :</td>
        <td>
            <asp:TextBox ID="TxtMMailAddress" runat="server" TextMode="Email" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Subject :</td>
        <td>
            <asp:TextBox ID="TxtMSubject" runat="server" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Message :</td>
        <td>
            <asp:TextBox ID="TxtMMessage" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="ButtonSendMessage" runat="server" style="font-weight: 700" Text="Send Message" Width="140px" CssClass="btn1" OnClick="ButtonSendMessage_Click" />
        </td>
    </tr>
</table>
</asp:Content>
