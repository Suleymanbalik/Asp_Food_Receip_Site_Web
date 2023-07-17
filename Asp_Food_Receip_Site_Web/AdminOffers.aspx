<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminOffers.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminOffers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 30px;
        }
        .auto-style7 {
            font-weight: bold;
        }
    .auto-style8 {
        text-align: right;
    }
        .auto-style9 {
            width: 344px;
        }
        .auto-style10 {
            width: 342px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style6"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>APPROVED OFFERS LİST</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RecipeName") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="AdminOfferEdit.aspx?RecipeID=<%#Eval("RecipeID") %>"><asp:Image ID="Image2" runat="server" Height="27px" ImageUrl="~/Icons/offer.png" Width="28px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="+" Width="30px" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="-" Width="30px" />
                </td>
                <td><strong>UNAPPROVED OFFERS LİST&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("RecipeName") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                           <a href="AdminOfferEdit.aspx?RecipeID=<%#Eval("RecipeID") %>"><asp:Image ID="Image3" runat="server" Height="23px" ImageUrl="~/Images/banned.png" Width="24px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
