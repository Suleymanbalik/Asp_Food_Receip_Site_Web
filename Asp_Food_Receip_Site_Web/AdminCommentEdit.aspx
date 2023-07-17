<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCommentEdit.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminCommentEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Commentator Name:</td>
            <td>
                <asp:TextBox ID="TxtCommentatorName" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Commentator Mail Address:</td>
            <td>
                <asp:TextBox ID="TxtCommentatorAddress" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Commentator Comment:</td>
            <td>
                <asp:TextBox ID="TxtCommentatorComment" runat="server" Height="126px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Commentator Offered Meal:</td>
            <td>
                <asp:TextBox ID="TxtCommentatorOfferMeal" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="ApproveComment" runat="server" CssClass="auto-style6" Text="Approve Comment" Width="129px" OnClick="ApproveComment_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
