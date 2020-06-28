﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Negocio;
using Dominio;

namespace Adecom
{
    public partial class VerCarrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Carrito"] != null)
            {
                GridView_Carrito.DataSource = (DataTable)Session["Carrito"];
                GridView_Carrito.DataBind();
            }

            double total_carrito = 0;
            DataTable dt = (DataTable)Session["Carrito"];

            if(Session["Carrito"] == null)
            {
                Total.Text = "No hay productos cargados en el carrito";
            }
            else
            {

                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    total_carrito += Convert.ToSingle(dt.Rows[i]["Precio total"]);



                    //if (datos[0] == dt.Rows[i]["ID"].ToString())
                    //{
                    //    //flag = true;

                    //    dt.Rows[i]["Cantidad"] = 1;

                    //    Session["Carrito"]

                    //}
                }

                Total.Text = "Total del carrito: $" + Convert.ToString(total_carrito);

            }

        }

        public void Borrar_carrito()
        {

            Session["Carrito"] = null;
            GridView_Carrito.DataSource = (DataTable)Session["Carrito"];
            GridView_Carrito.DataBind();
            

        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {



            if (Session["Carrito"] != null)
            {

                Borrar_carrito();
                Total.Text = "Borrado exitoso: Ya no hay productos cargados en el carrito";

            }
            


        }



        protected void btnConfirmar_Click(object sender, EventArgs e)
        {

            if (Session["usuariovalidado"] != null) {

                VentasNegocio v_neg = new VentasNegocio();
                DV_HardwareNegocio dv_h_neg = new DV_HardwareNegocio();
                DataTable dt = (DataTable)Session["Carrito"];
                int id_vent;

                if (Session["Carrito"] != null)
                {

                    Usuario us = (Usuario)Session["usuariovalidado"];

                    if (v_neg.agregar_Ventas(us.Id_Usuario)) 
                    {

                        id_vent = v_neg.Obtener_Ultimo_id_ventas();

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {

                            dv_h_neg.agregar_DV_HardwareNegocio(id_vent, Convert.ToInt32(dt.Rows[i]["ID"]), Convert.ToInt32(dt.Rows[i]["Cantidad"]));


                        }

                        Borrar_carrito();
                        Total.Text = "Venta exitosa";
                    }

                }

            }
            else
            {
                lab_mensaje.Text = "Ingrese un usuario antes de confirmar una venta.";
            }



        }



    }
}