<%@ Page Title="" Language="C#" MasterPageFile="~/tweda1.master" AutoEventWireup="true" CodeFile="members.aspx.cs" Inherits="members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <!-- 外加Materail Design CSS -->
    <link href="css/material.css" rel="stylesheet">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    <asp:Label ID="progName1" runat="server" Text="會員資料管理專區"></asp:Label>
   </h1>
    <br />
    <asp:TextBox ID="qryStr" runat="server" Style="margin:10px"></asp:TextBox>
    <asp:Button ID="btnQry" CssClass="aspButton" runat="server" Text="查詢" OnClick="btnQry_Click" Style="margin:10px"/>
    <asp:Button ID="btnADD" CssClass="aspButton" runat="server" Text="新增資料" OnClick="btnADD_Click" Style="margin:10px"/>
    <asp:Label ID="lbStudents" runat="server" OnLoad="btnQry_Click" Text="資料將顯示於此"></asp:Label>
</asp:Content>

