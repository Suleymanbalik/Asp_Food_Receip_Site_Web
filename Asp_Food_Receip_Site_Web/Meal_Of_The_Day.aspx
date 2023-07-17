<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Meal_Of_The_Day.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.Meal_Of_The_Day" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="444px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label14" runat="server" style="font-weight: 700; font-size: x-large" Text='<%# Eval("FoodName") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Ingredients</strong> <strong>:</strong><asp:Label ID="Label15" runat="server" Text='<%# Eval("FoodIngredients") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>How To Make :</strong><asp:Label ID="Label16" runat="server" Text='<%# Eval("FoodRecipe") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image3" runat="server" Height="195px" ImageUrl='<%# Eval("FoodImage") %>' Width="372px" />
                    </td>
                </tr>
                <tr>
                    <td><strong>Score</strong> <strong>:</strong><asp:Label ID="Label17" runat="server" Text='<%# Eval("FoodScore") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Date</strong> <strong>:</strong><asp:Label ID="Label18" runat="server" Text='<%# Eval("FoodDate") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
