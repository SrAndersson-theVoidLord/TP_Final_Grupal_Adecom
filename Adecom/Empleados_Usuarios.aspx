﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados_Usuarios.aspx.cs" Inherits="Adecom.Empleados_Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido_menu_contextual" runat="server">
    <div class="d-flex flex-column p-2 bd-highlight">
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_Productos.aspx">Hardware</a>
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_armados_a_pedido.aspx">Armados a Pedido</a>
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_Reparaciones.aspx">Reparaciones</a>
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_Usuarios.aspx">Usuarios</a>
        <a class="btn btn-outline-secondary btn-lg border-dark" href="/Empleados_Informes.aspx">Informes</a>

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Contenido_menu_principal" runat="server">
    <div class="bg-light text-center font-weight-bold ">
        <h3>USUARIOS</h3>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex p-2 bd-highlight">

        <asp:Button ID="btnMostrarClientes" CssClass="btn btn-outline-dark btn-lg border-dark w-auto" Text="Mostrar Clientes" runat="server" OnClick="btnMostrarClientes_Click" />
        <asp:Button ID="btnMostrarEmpleados" CssClass="btn btn-outline-dark btn-lg border-dark w-auto" Text="Mostrar Empleados" runat="server" OnClick="btnMostrarEmpleados_Click" />
        <asp:Button ID="btnRegistroEmpleados" CssClass="btn btn-outline-dark btn-lg border-dark w-auto"  Text="Registrar Nuevos Empleados" runat="server" OnClick="btnRegistroEmpleados_Click" />
    </div>
    
    <div class="overflow-auto">   
        <asp:GridView ID="gvUsuarios" runat="server"  AutoGenerateEditButton="true" AutoGenerateColumns="False" OnRowCancelingEdit="gvUsuarios_RowCancelingEdit" OnRowEditing="gvUsuarios_RowEditing" OnRowUpdating="gvUsuarios_RowUpdating" AllowPaging="True" OnPageIndexChanging="gvUsuarios_PageIndexChanging" PageSize="8" AutoGenerateDeleteButton="True" OnRowDeleting="gvUsuarios_RowDeleting">
            <Columns>
                <asp:TemplateField  HeaderText="ID USUARIO">
                    <ItemTemplate>
                        <asp:Label ID="lbl_idusuario" runat="server" Text='<%# Bind("Id_Usuario") %>'></asp:Label>
                    </ItemTemplate>
               
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DNI">
                    <ItemTemplate>
                        <asp:Label ID="lbl_dni" Text='<%#Bind("Dni") %>' runat="server" />
                    </ItemTemplate>
                       <EditItemTemplate>
                        <asp:TextBox id="tb_dni" Text='<%#Bind("Dni") %>'  runat="server" />
                    </EditItemTemplate> 
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NOMBRE">
                    <ItemTemplate>
                        <asp:Label id="lbl_nombre" Text='<%#Bind("Nombre")%>' runat="server" />
                    </ItemTemplate>   
                    <EditItemTemplate>
                        <asp:TextBox id="tb_nombre" Text='<%#Bind("Nombre") %>'  runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="APELLIDO">
                    <ItemTemplate>
                        <asp:Label id="lbl_apellido" Text='<%#Bind("Apellido")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox id="tb_apellido" Text='<%#Bind("Apellido") %>'  runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="USUARIO">
                    <ItemTemplate>
                        <asp:Label id="lbl_usuario" Text='<%#Bind("Nombreusuario")%>' runat="server" />
                    </ItemTemplate>
                       <EditItemTemplate>
                        <asp:TextBox id="tb_nombreusuario" Text='<%#Bind("Nombreusuario") %>'  runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DIRECCION">
                    <ItemTemplate>
                        <asp:Label id="lbl_direccion" Text='<%#Bind("Direccion")%>' runat="server" />
                    </ItemTemplate>
                      <EditItemTemplate>
                        <asp:TextBox id="tb_direccion" Text='<%#Bind("Direccion") %>'  runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LOCALIDAD">
                    <ItemTemplate>
                        <asp:Label id="lbl_localidad" Text='<%#Bind("Localidad")%>' runat="server" />
                    </ItemTemplate>
                        <EditItemTemplate>
                        <asp:TextBox id="tb_localidad" Text='<%#Bind("Localidad") %>'  runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CODIGO POSTAL">
                    <ItemTemplate>
                        <asp:Label id="lbl_codigopostal" Text='<%#Bind("Cp")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox id="tb_codigopostal" Text='<%#Bind("Cp") %>'  runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TELEFONO">
                    <ItemTemplate>
                        <asp:Label id="lbl_telefono" Text='<%#Bind("Telefono")%>' runat="server" />
                    </ItemTemplate>
                                        <EditItemTemplate>
                        <asp:TextBox id="tb_telefono" Text='<%#Bind("Telefono") %>'  runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EMAIL">
                    <ItemTemplate>
                        <asp:Label id="lbl_email" Text='<%#Bind("Email")%>' runat="server" />
                    </ItemTemplate>
                         <EditItemTemplate>
                        <asp:TextBox id="tb_email" Text='<%#Bind("Email") %>'  runat="server" />
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ESTADO">
                    <ItemTemplate>
                        <asp:Label id="lbl_estado" Text='<%#Bind("Estado")%>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox id="tb_estado" Text='<%#Bind("Estado") %>' runat="server" />
                        
                    </EditItemTemplate>
                      
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
 </div>

</asp:Content>
