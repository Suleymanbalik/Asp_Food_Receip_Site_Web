<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminOfferEdit.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminOfferEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Recipe Name:</td>
                <td>
                    <asp:TextBox ID="TxtRecipeName" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">RecipeIngredients:</td>
                <td>
                    <asp:TextBox ID="TxtRecipeIngredients" runat="server" Height="120px" TextMode="MultiLine" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">RecipeRoute:</td>
                <td>
                    <asp:TextBox ID="TxtRecipeRoute" runat="server" Height="120px" TextMode="MultiLine" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">RecipePic:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="237px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">RecipeOwner:</td>
                <td>
                    <asp:TextBox ID="TxtRecipeOwner" runat="server" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">RecipeOwnerMail:</td>
                <td>
                    <asp:TextBox ID="TxtRecipeOwnerMail" runat="server" TextMode="Email" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Category:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="233px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="Verify Recipe" Width="128px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
