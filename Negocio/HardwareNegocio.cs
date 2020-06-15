﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using System.Data.SqlClient;

namespace Negocio
{
    public class HardwareNegocio
    {

        public List<Hardware> listar()
        {
            List<Hardware> lista = new List<Hardware>();
            Hardware aux;
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearQuery("SELECT Id_Hardware_HAR,Nombre_HAR,Descripcion_HAR,SUBSTRING(Imagen_HAR, 2, 256) as Imagen,Precio_HAR,Estado_HAR FROM Hardware"); 
                datos.ejecutarLector();
                while (datos.lector.Read())
                {
                    aux = new Hardware();
                    aux.id_hardware = (int)datos.lector["id_Hardware_HAR"];
                    aux.nombre = (string)datos.lector["Nombre_HAR"];
                    aux.descripcion = (string)datos.lector["Descripcion_HAR"];
                    aux.imagen = (string)datos.lector["Imagen"];
                    aux.precio_unitario = (double)datos.lector["Precio_HAR"];
                    aux.estado = (Boolean)datos.lector["Estado_HAR"];

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
                datos = null;
            }
        }


    }
}