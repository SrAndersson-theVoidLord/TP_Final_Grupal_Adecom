﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados_AMProductos.aspx.cs" Inherits="Adecom.Empleados_AMProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido_menu_contextual" runat="server">
        <div class="d-flex flex-column p-2 bd-highlight">
        <a class="btn btn-outline-secondary btn-lg border-dark " href="/Empleados_Productos.aspx">Hardware</a>
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_armados_a_pedido.aspx">Armados a Pedido</a>
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_Reparaciones.aspx">Reparaciones</a>
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_Usuarios.aspx">Usuarios</a>
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_Informes.aspx">Informes</a>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contenido_menu_principal" runat="server">
        <div class="bg-light text-center font-weight-bold">
            <h3> <asp:Label id="lblamhardware" Text="Formulario Hardware" runat="server" /></h3>

    </div>
    <br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="float: left; width: 100%; text-align:start">
        <asp:Label id="lbl_Notificaciones" class=" text-danger" Text="" runat="server" /></div>
    <div style="float: left; width: 10%; text-align: end">ID Hardware:&nbsp</div>
    <div style="float: left; width: 90%">
        <asp:TextBox ID="tb_IDHardware" class=" form-control" Width="60%" runat="server" Enabled="False" /></div>
    <div style="float: left; height: 10px; width: 100%">&nbsp</div>
    <div style="float: left; width: 10%; text-align: end">Categoria:&nbsp</div>
    <div style="float: left; width: 90%">
        <asp:DropDownList id="ddl_Categoria" class="btn btn-secondary dropdown-toggle" Width="60%" runat="server">  </asp:DropDownList>
        
    </div>
    <div style="float: left; height: 10px; width: 100%">&nbsp</div>
    <div style="float: left; width: 10%; text-align: end">Nombre:&nbsp</div>
    <div style="float: left; width: 90%">
        <asp:TextBox ID="tb_Nombre" class=" form-control" Width="60%" runat="server" />
    </div>
    <div style="float: left; height: 10px; width: 100%">&nbsp</div>
    <div style="float: left; width: 10%; text-align: end">Descripcion:&nbsp</div>
    <div style="float: left; width: 90%">
        <asp:TextBox ID="tb_Descripcion" class=" form-control" Width="60%" runat="server" /></div>
    <div style="float: left; height: 10px; width: 100%">&nbsp</div>
    <div style="float: left; width: 10%; text-align: end">Imagen:&nbsp</div>
    <div style="float: left; width: 90%">
        <asp:TextBox ID="tb_Imagen" class=" form-control" Width="60%" runat="server" /></div>
    <div style="float: left; height: 10px; width: 100%">&nbsp</div>
    <div style="float: left; width: 10%; text-align: end">Precio:&nbsp</div>
    <div style="float: left; width: 90%">
        <asp:TextBox ID="tb_Precio" class=" form-control" Width="60%" runat="server" /></div>
    <div style="float: left; height: 10px; width: 100%">&nbsp</div>
    <div style="float: left; width: 10%; text-align: end">Estado:&nbsp</div>
    <div style="float: left; width: 90%">
        <asp:TextBox ID="tb_Estado" class=" form-control" Width="60%" runat="server" Enabled="False" /></div>
    
    <div style="float:left;height:60px;width:100%">&nbsp</div>

    <div style="float:left;width:10%">&nbsp</div>
    <div style="float:left;width:30%">
        <asp:Button id="btn_Modificar" CssClass="btn btn-primary" Text="Modificar" runat="server" OnClick="btn_Modificar_Click" style="height: 40px" />
    </div>
        <div style="float:left;width:30%">
        <asp:Button id="btnAgregar" CssClass="btn btn-success " Text="Agregar" runat="server"  style="height: 40px" OnClick="btnAgregar_Click" />
    </div>

    <div style="float:left;width:30%">
        <asp:Button id="btn_Eliminar" CssClass="btn btn-danger" Text="Eliminar" runat="server" OnClick="btn_Eliminar_Click" style="height: 40px" />
    </div>
    <div style="float:left;height:60px;width:100%">&nbsp</div>



</asp:Content>
