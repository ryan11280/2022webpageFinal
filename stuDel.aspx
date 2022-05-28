<%@ Page Title="" Language="C#" MasterPageFile="~/tweda1.master" AutoEventWireup="true" CodeFile="stuDel.aspx.cs" Inherits="stuDel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>刪除學生資料</h1>
    <asp:Label ID="lbStuDel" runat="server" Text="打匴刪除的資料"></asp:Label>
    <br />
    <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btStuDel" runat="server" Text="確定刪除" OnClick="btStuDel_Click" />
    <asp:Button ID="btBackToMembers" runat="server" Text="返回" OnClick="BackToMembers" />
</asp:Content>

