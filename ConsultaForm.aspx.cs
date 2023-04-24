using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1 {
    public partial class WebForm3 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void consultar(object sender, EventArgs e) {
            //Setupear parametros
            consultaDatasource.SelectParameters["nombre"].DefaultValue = TextBox1.Text;
            //Modo lectura
            consultaDatasource.DataSourceMode = SqlDataSourceMode.DataReader;
            
            //Ejecutar la consulta
            SqlDataReader sqlDataReader = (SqlDataReader) consultaDatasource.Select(DataSourceSelectArguments.Empty);

            //Leemos
            if(sqlDataReader.Read()) {
                resultadoLabel.Text = $"El usuario encontrado es: mail: [{sqlDataReader["mail"]}]";
            } else {
                resultadoLabel.Text = $"No se encontro el usuario con nombre: [{sqlDataReader["nombre"]}]";
            }

        }
    }
}