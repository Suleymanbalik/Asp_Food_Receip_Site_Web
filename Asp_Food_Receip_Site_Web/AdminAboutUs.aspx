<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAboutUs.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminAboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>About Us:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="250px" TextMode="MultiLine" Width="320px" CssClass="tb1"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="139px" CssClass="bt2" Height="38px" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
