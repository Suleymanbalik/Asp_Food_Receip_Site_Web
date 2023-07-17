<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="About_Us.aspx.cs" Inherits="Asp_Food_Receip_Site_Web.About_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        ABOUT US</p>
    <p>
        <asp:DataList ID="DataList2" runat="server" style="text-align: center">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("AboutUs") %>' style="text-align: center"></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <asp:Image ID="Image1" runat="server" Height="232px" ImageUrl="~/Images/blog team.png" Width="449px" />

</asp:Content>
