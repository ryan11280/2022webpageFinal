<%@ Page Title="" Language="C#" MasterPageFile="~/tweda1.master" AutoEventWireup="true" CodeFile="stuAdd.aspx.cs" Inherits="stuAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>新增學生會員資料</h1>
    <table>
    <tr>
    <td align="right">
    <asp:Label ID="Label1" runat="server" Text="系級："></asp:Label>
    </td><td>
    <asp:TextBox ID="txtDC" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label2" runat="server" Text="學號:"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label3" runat="server" Text="姓名:"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td align="right">
    <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
    </td><td>
    <asp:TextBox ID="txtEmail2" runat="server"></asp:TextBox>
    </td></tr>
    <tr><td></td>
    <td>
    <asp:Button ID="btnOK" runat="server" Text="確定新增" OnClick="btnOK_Click" />
    <asp:Button ID="btnBack" runat="server" Text="返回" OnClick="btnBack_Click" />
    </td></tr>
    </table>

</asp:Content>

