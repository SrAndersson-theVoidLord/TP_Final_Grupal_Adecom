﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pagina_principal.aspx.cs" Inherits="Adecom.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 80px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Contenido_menu_contextual" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Contenido_menu_principal" runat="server">

    <div class="d-flex p-2 bd-highlight">
        <a class="btn btn-outline-secondary btn-lg border-dark w-25" href="/Cliente_Productos.aspx" >Productos</a>
        <a class="btn btn-outline-secondary btn-lg border-dark w-25" href="/Cliente_armados_a_pedido.aspx" >Armados a Pedido</a>
        <a class="btn btn-outline-secondary btn-lg border-dark w-25" href="/Cliente_Reparaciones.aspx" >Reparaciones</a>
        <a class="btn btn-outline-secondary btn-lg border-dark w-25" href="/Cliente_Contactos.aspx" >Contacto</a>
    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
