<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMealsEdit.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminMealsEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
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
            <td class="auto-style6">Meal Name :</td>
            <td>
                <asp:TextBox ID="TxtMealName" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Meal Ingredients :</td>
            <td>
                <asp:TextBox ID="TxtMealIngredients" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Meal Recipe :</td>
            <td>
                <asp:TextBox ID="TxtMealRecipe" runat="server" Height="150px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Meal Category :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="209px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Meal Image :</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="206px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" Width="152px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Set As Meal Of The Day" Width="152px" />
            </td>
        </tr>
    </table>
</asp:Content>
