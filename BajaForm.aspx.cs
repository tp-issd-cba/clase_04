using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1 {
    public partial class WebForm5 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void borrar(object sender, EventArgs e) {
            SqlDataSource1.DeleteParameters["nombre"].DefaultValue = TextBox1.Text;
            int resultado = SqlDataSource1.Delete();
            if(resultado > 0) {
                resultadoLabel.Text = "se elimino";
            } else {
                resultadoLabel.Text = "no se elimino :(";
            }
        }
    }
}