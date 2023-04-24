using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1 {
    public partial class WebForm4 : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void modificar(object sender, EventArgs e) {
            //Setup de parametros
            SqlDataSource1.UpdateParameters["nombre"].DefaultValue = nombreTextbox.Text;
            SqlDataSource1.UpdateParameters["clave"].DefaultValue = claveTextbox.Text;
            SqlDataSource1.UpdateParameters["mail"].DefaultValue = mailTextbox.Text;
            SqlDataSource1.UpdateParameters["identificador"].DefaultValue = TextBox1.Text;

            int resultado = SqlDataSource1.Update();

            if(resultado > 0) {
                resultadoLabel.Text = "fue bien :)";
            } else {
                resultadoLabel.Text = "fue mal";
            }
        }

        protected void Button1_Click(object sender, EventArgs e) {
            //Setupear parametros
            SqlDataSource1.SelectParameters["nombre"].DefaultValue = TextBox1.Text;
            //Modo lectura
            SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;

            //Ejecutar la consulta
            SqlDataReader sqlDataReader = (SqlDataReader) SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            //Leemos
            if (sqlDataReader.Read()) {
                nombreTextbox.Text = $"{sqlDataReader["nombre"]}";
                claveTextbox.Text = $"{sqlDataReader["clave"]}";
                mailTextbox.Text = $"{sqlDataReader["mail"]}";
            } 
        }
    }
}