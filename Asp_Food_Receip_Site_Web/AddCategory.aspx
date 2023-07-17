<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
        }

        .auto-style7 {
            width: 260px;
        }

        .auto-style8 {
            width: 31px;
        }

        .auto-style9 {
            width: 30px;
        }

        .auto-style10 {
            font-size: large;
        }

        .auto-style11 {
            width: 32px;
            height: 34px;
        }

        .auto-style12 {
            width: 30px;
            height: 34px;
        }

        .auto-style13 {
            height: 34px;
        }
        .auto-style14 {
            height: 30px;
        }
        .auto-style15 {
            border-radius: 4px;
            padding-left: 12px;
            font-size: 14px;
            font-weight: normal;
            border: 1px solid rgb(137, 151, 155);
            transition: border-color 150ms ease-in-out 0s;
            outline: none;
            color: rgb(33, 49, 60);
            background-color: rgb(255, 255, 255);
            padding-right: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1" style="border-width: thin; border-style: groove;">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                </strong></td>
                <td style="color: #FFFF66" class="auto-style13"><strong>CATEGORY LİST</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                           <a href ="AddCategory.aspx?CategoryID=<%#Eval("CategoryID") %>&process=delete"><asp:Image ID="Image2" runat="server" ImageUrl="~/Icons/delete.png" /></a>
                        </td>
                        <td class="auto-style6">
                           <%-- <a href = "AdminCategoryDetay?CategoryID= <%#Eval("CategoryID")%></a>deneme--%>
                            <a href="AdminCategoryDetay.aspx?CategoryID=<%#Eval("CategoryID") %>"><asp:Image ID="Image3" runat="server" ImageUrl="~/Icons/update.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style1" style="border-style: groove">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td style="color: #FFFF66" class="auto-style13"><strong>ADD CATEGORY</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Category Name:</td>
                <td>
                    <asp:TextBox ID="TxtCategoryName" runat="server" CssClass="auto-style15" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Category Image:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style15" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style14">
                    <asp:Button ID="ButtonAddCategory" runat="server" Text="Add" OnClick="ButtonAddCategory_Click" CssClass="btn1" Height="26px" Width="73px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
