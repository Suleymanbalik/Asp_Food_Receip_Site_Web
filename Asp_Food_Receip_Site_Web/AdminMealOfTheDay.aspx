<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMealOfTheDay.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminMealOfTheDay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 30px;
        }
        .auto-style7 {
            font-weight: bold;
        }
        .auto-style8 {
            width: 352px;
        }
        .auto-style9 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Text="-" Width="30px" />
                    </strong></td>
                <td><strong>MEAL LİST</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("FoodName") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                           <a href ="AdminMealsEdit.aspx?FoodID=<%#Eval("FoodID") %>"><asp:Image ID="Image2" runat="server" Height="26px" ImageUrl="~/Icons/choice.png" Width="32px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
