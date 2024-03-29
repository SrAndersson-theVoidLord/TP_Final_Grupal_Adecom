﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Adecom
{
    public partial class Empleados_AMProductos : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (IsPostBack == false)
            {

                cargar_ddl();
                recuperar_hardware();
            }
        }

        protected void btn_Eliminar_Click(object sender, EventArgs e)
        {
            HardwareNegocio negocio = new HardwareNegocio();
            if (negocio.EliminarHardware(Convert.ToInt32(tb_IDHardware.Text)) == true)
            {
                lbl_Notificaciones.Text = "El Item " + tb_IDHardware.Text + " ha sido ELIMINADO";
                tb_IDHardware.Text = null;
                ddl_Categoria.SelectedValue = null;
                tb_Nombre.Text = null;
                tb_Descripcion.Text = null;
                tb_Imagen.Text = null;
                tb_Precio.Text = null;
                tb_Estado.Text = null;

            }
        }

        public void recuperar_hardware()
        {
            Hardware h = new Hardware();
            HardwareNegocio negocio = new HardwareNegocio();
            
            try
            {
                var hardwareseleccionado = Convert.ToInt32(Request.QueryString["idhw"]);
                if(hardwareseleccionado > 0 )
                {

                btnAgregar.Visible = false;
                btn_Modificar.Visible = true;
                btn_Eliminar.Visible = true;
                    //se habilitan controles requeridos para agregar hardware
                    lbl_idhardware.Visible = true;
                    tb_IDHardware.Visible = true;
                    rfvidhardware.Enabled = true;
                    lbl_Estado.Visible = true;
                    tb_Estado.Visible = true;
                    rfvtb_Estado.Enabled = true;


                    h = negocio.buscarhardware(hardwareseleccionado);
                tb_IDHardware.Text = h.Id_hardware.ToString();
                ddl_Categoria.SelectedValue = h.Categoria.Id_categoria.ToString();
                tb_Nombre.Text = h.Nombre.ToString();
                tb_Descripcion.Text = h.Descripcion.ToString();
                tb_Imagen.Text = h.Imagen.ToString();
                tb_Precio.Text = h.Precio_unitario.ToString();
                tb_Estado.Text = h.Estado.ToString();
                }
                else
                {
                    btnAgregar.Visible = true;
                    btn_Modificar.Visible = false;
                    btn_Eliminar.Visible = false;

                    //se deshabilitan controles no requeridos para agregar hardware
                    lbl_idhardware.Visible = false;
                    tb_IDHardware.Visible = false;
                    rfvidhardware.Enabled = false;
                    lbl_Estado.Visible = false;
                    tb_Estado.Visible = false;
                    rfvtb_Estado.Enabled = false;


                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void cargar_ddl()
        {
            CategoriaHardwareNegocio negocio = new CategoriaHardwareNegocio();
            ddl_Categoria.DataSource = negocio.listar_categoriahw();
            ddl_Categoria.DataTextField = "Descripcion";
            ddl_Categoria.DataValueField = "Id_categoria";
            ddl_Categoria.DataBind();

        }
        protected void btn_Modificar_Click(object sender, EventArgs e)
        {
            HardwareNegocio negocio = new HardwareNegocio();
            Hardware h = new Hardware();
            h.Id_hardware = Convert.ToInt32(tb_IDHardware.Text);
            h.Categoria = new CategoriaHardware();
            h.Categoria.Id_categoria = ddl_Categoria.SelectedValue;
            h.Nombre = tb_Nombre.Text;
            h.Descripcion = tb_Descripcion.Text;
            h.Imagen = tb_Imagen.Text;
            h.Precio_unitario = Convert.ToDouble(tb_Precio.Text);

            
             
            if (negocio.ModificarHardware(h) == true)
            {
                lbl_Notificaciones.Text = "El Item " + tb_IDHardware.Text + " ha sido Modificado";
                tb_IDHardware.Text = null;
                ddl_Categoria.SelectedValue = null;
                tb_Nombre.Text = null;
                tb_Descripcion.Text = null;
                tb_Imagen.Text = null;
                tb_Precio.Text = null;
                tb_Estado.Text = null;
            }
            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            HardwareNegocio negocio = new HardwareNegocio();
            Hardware h = new Hardware();
            
            h.Categoria = new CategoriaHardware();
            h.Categoria.Id_categoria = ddl_Categoria.SelectedValue;
            h.Nombre = tb_Nombre.Text;
            h.Descripcion = tb_Descripcion.Text;
            h.Imagen = tb_Imagen.Text;
            h.Precio_unitario = Convert.ToDouble(tb_Precio.Text);
            h.Estado = true;
            if (negocio.agregarHardware(h) == true)
            {
                lbl_Notificaciones.Text = "El Item ha sido Agregado";
                tb_IDHardware.Text = null;
                ddl_Categoria.SelectedValue = null;
                tb_Nombre.Text = null;
                tb_Descripcion.Text = null;
                tb_Imagen.Text = null;
                tb_Precio.Text = null;
                tb_Estado.Text = null;
            }

        }
    }
}