<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMessageEdit.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminMessageEdit" %>
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
                <td>Message Sender:</td>
                <td>
                    <asp:TextBox ID="TxtMessageSender" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Subject:</td>
                <td>
                    <asp:TextBox ID="TxtSubject" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mail Address:</td>
                <td>
                    <asp:TextBox ID="TxtMailAddress" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Message:</td>
                <td>
                    <asp:TextBox ID="TxtMessage" runat="server" Height="150px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
