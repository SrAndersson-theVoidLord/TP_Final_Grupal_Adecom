﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class TipoPedido
    {
        private int id_tipo;
        private string descripcion;
        private double precio_por_hora;

        public TipoPedido()
        {

        }

        public int Id_tipo { get => id_tipo; set => id_tipo = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public double Precio_por_hora { get => precio_por_hora; set => precio_por_hora = value; }
    }
}
