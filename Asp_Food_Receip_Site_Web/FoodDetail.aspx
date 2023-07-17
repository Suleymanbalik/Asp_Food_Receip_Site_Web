<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="FoodDetail.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.FoodDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="Label3" runat="server" Style="font-size: x-large; font-weight: 700; background-color: #FFCC66;" Text="Label" ForeColor="#CC3300"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Style="font-size: large" Text='<%# Eval("CommentNameSurname") %>' ForeColor="#6600FF"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: 2px; border-bottom-color: #808000">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("CommentIngredient") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" Style="font-size: x-small" Text='<%# Eval("CommentDate") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div style="background-color: #CC3300; color: #FFFF00;">Comment Panel</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Full Name :</td>
                <td>
                    <asp:TextBox ID="TxtCommentFullName" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mail Address :</td>
                <td>
                    <asp:TextBox ID="TxtCommentMail" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Comment :</td>
                <td>
                    <asp:TextBox ID="TxtCommentComment" runat="server" Height="100px" TextMode="MultiLine" ValidateRequestMode="Disabled" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonAddComment" runat="server" Text="Add Comment" BackColor="#00CC66" Width="97px" OnClick="ButtonAddComment_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

