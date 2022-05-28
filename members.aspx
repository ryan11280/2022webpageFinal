<%@ Page Title="" Language="C#" MasterPageFile="~/tweda1.master" AutoEventWireup="true" CodeFile="members.aspx.cs" Inherits="members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    <asp:Label ID="progName1" runat="server" Text="會員資料管理專區"></asp:Label>
   </h1>
    <asp:Button ID="btnADD" runat="server" Text="新增資料" OnClick="btnADD_Click" />
    <br />
    <asp:TextBox ID="qryStr" runat="server"></asp:TextBox>
    <asp:Button ID="btnQry" runat="server" Text="查詢" OnClick="btnQry_Click" />
    <asp:Label ID="lbStudents" runat="server" Text="Label"></asp:Label>
</asp:Content>

