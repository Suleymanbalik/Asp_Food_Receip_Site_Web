<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMeals.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminMeals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 28px;
        }

        .auto-style7 {
            width: 30px;
        }

        .auto-style8 {
            font-size: large;
        }

        .auto-style9 {
            width: 273px;
            text-align: left;
        }

        .auto-style10 {
            text-align: right;
        }

        .auto-style13 {
            font-weight: bold;
            font-size: medium;
        }

        .auto-style14 {
            height: 26px;
        }

        .auto-style15 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="29px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style7">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td><strong>MEAL LİST</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("FoodName") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <a href="AdminMeals.aspx?FoodID=<%#Eval("FoodID") %>&process=delete">
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Icons/delete.png" /></a>
                        </td>
                        <td class="auto-style10">
                            <a href="AdminMealsEdit.aspx?FoodID=<%#Eval("FoodID") %>">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/Icons/update.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style13" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td><strong>ADD MEAL&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Meal Name :</td>
                <td>
                    <asp:TextBox ID="TxtMealName" runat="server" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Ingredients :</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxtIngredients" runat="server" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Food Recipe :</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TxtFoodRecipe" runat="server" Height="110px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">Category :</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="284px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="buttonAdd" runat="server" CssClass="auto-style15" OnClick="buttonAdd_Click" Text="Add Meal" Width="86px" />
                </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
