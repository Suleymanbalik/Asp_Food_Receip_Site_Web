<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        <asp:DataList ID="DataList2" runat="server" Width="439px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td style="background-color: #60D285">


                            <a href="FoodDetail.aspx?FoodID=<%#Eval("FoodID") %>">
                                <asp:Label ID="Label3" runat="server" Style="font-weight: 700; font-size: large" Text='<%# Eval("FoodName") %>'></asp:Label>
                            </a>

                        </td>
                    </tr>
                    <tr>
                        <td><strong>Ingredients :</strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("FoodIngredients") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Recipe :</strong>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("FoodRecipe") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Upload Date :</strong>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("FoodDate") %>'></asp:Label>
                            &nbsp;<strong>Score : </strong>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("FoodScore") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
