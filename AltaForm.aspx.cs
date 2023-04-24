using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1 {
    public partial class WebForm2 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void darDeAlta(object sender, EventArgs e) {
            //Setear parametros
            altaDatasource.InsertParameters["nombre"].DefaultValue = nombreTextbox.Text;
            altaDatasource.InsertParameters["clave"].DefaultValue = claveTextbox.Text;
            altaDatasource.InsertParameters["mail"].DefaultValue = mailTextbox.Text;

            int resultado = altaDatasource.Insert();

            if(resultado > 0) {
                resultadoLabel.Text = $"El usuario con nombre {nombreTextbox.Text} se cargo con exito";
            } else {
                resultadoLabel.Text = $"Ocurrio un error al insertar el usuario con nombre {nombreTextbox.Text}";
            }
        }
    }
}
