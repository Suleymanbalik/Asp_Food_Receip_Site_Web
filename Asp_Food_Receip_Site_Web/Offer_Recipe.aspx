<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Offer_Recipe.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.Offer_Recipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
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
        <td class="auto-style3">Recipe Name</td>
        <td>
            <asp:TextBox ID="TxtRecipeName" runat="server" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Recipe Ingredients</td>
        <td>
            <asp:TextBox ID="TxtRecipeIngredients" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">How To Make</td>
        <td>
            <asp:TextBox ID="TxtMake" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Picture</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb1" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Who Offer</td>
        <td>
            <asp:TextBox ID="TxtWhoOffer" runat="server" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Mail:</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" CssClass="tb1"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="ButtonOffer" runat="server" BackColor="#00CC66" Font-Bold="True" Text="Offer Recipe" Width="140px" OnClick="ButtonOffer_Click" CssClass="btn1" />
        </td>
    </tr>
</table>
</asp:Content>
