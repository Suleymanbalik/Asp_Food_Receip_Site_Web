<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminComment.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.AdminComment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 30px;
        }
        .auto-style7 {
            font-weight: bold;
        }
    .auto-style8 {
        width: 280px;
    }
    .auto-style9 {
        text-align: right;
    }
        .auto-style10 {
            width: 68px;
            text-align: right;
        }
        .auto-style11 {
            width: 279px;
            text-align: left;
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
                    <asp:Button ID="Button2" runat="server" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>APPROVED COMMENTS PANEL&nbsp;</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("CommentNameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Icons/delete.png" />
                        </td>
                        <td class="auto-style9">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Icons/update.png" />
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
                    <asp:Button ID="Button3" runat="server" Text="+" Width="30px" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button4" runat="server" Text="-" Width="30px" />
                </td>
                <td><strong>PENDING APPROVAL COMMENTS PANEL</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style1" align="right">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("CommentNameSurname") %>'></asp:Label>
                        </td>
                        <td class="auto-style10">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Icons/delete.png" />
                        </td>
                        <td class="auto-style9">
                            <a href="AdminCommentEdit.aspx?CommentID=<%#Eval("CommentID") %>"><asp:Image ID="Image5" runat="server" ImageUrl="~/Icons/update.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
