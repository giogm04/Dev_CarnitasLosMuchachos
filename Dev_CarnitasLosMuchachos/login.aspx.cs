using Dev_CarnitasLosMuchachos.Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Security.Cryptography;
using System.Text;

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
                nuevo.PASSWORD = encriptarPassword(password);

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


        public static string encriptarPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }

                return builder.ToString();
            }
        }






    }
}