<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCategoryDetay.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminCategoryDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-weight: bold;
        }
        .auto-style7 {
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
            <td class="auto-style7">Category Name:</td>
            <td>
                <asp:TextBox ID="TxtCategoryName" runat="server" CssClass="tb1" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Number Of Meals:</td>
            <td>
                <asp:TextBox ID="TxtNumberOfMeals" runat="server" CssClass="tb1" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Category Image:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb1" Width="200px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="ButtonUpdateCategory" runat="server" CssClass="auto-style6" OnClick="ButtonUpdateCategory_Click" Text="Update" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
