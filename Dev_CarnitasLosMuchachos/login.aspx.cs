using Dev_CarnitasLosMuchachos.Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Dev_CarnitasLosMuchachos
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string agregarUsuarios(string noUsuario, string password)
        {
            LOSMUCHACHOSEntities _context = new LOSMUCHACHOSEntities();

            var mensaje = "";

            var existe = _context.Dev_Usuarios.Where(w => w.NOMBRE_USUARIO == noUsuario).FirstOrDefault();

            if (existe == null)
            {
                Dev_Usuarios nuevo = new Dev_Usuarios();

                nuevo.NOMBRE_USUARIO = noUsuario;
                nuevo.PASSWORD = password;

                _context.Dev_Usuarios.Add(nuevo);
                _context.SaveChanges();

                mensaje = "Registro agregado con exito.";
            }
            else
            {
                mensaje = "Ya existe el registro";
            }

            return JsonConvert.SerializeObject(mensaje);

        }








    }
}