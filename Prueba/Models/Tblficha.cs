using System;
using System.Collections.Generic;

namespace Prueba.Models
{
    public partial class Tblficha
    {
        public int Id { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Cedula { get; set; }
        public int? Ingles { get; set; }
        public int? Frances { get; set; }
        public int? Italiano { get; set; }
        public string Sexo { get; set; }
        public string Direccion { get; set; }
        public double? Sueldo { get; set; }
    }
}
