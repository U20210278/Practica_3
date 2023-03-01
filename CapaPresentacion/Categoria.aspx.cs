using CapaLogicaNegocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidad;

namespace CapaPresentacion
{
    public partial class Categoria : System.Web.UI.Page
    {


        private CategoriaLogica log = new CategoriaLogica();
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.DataSource = log.ListaCategoria();
            GridView1.DataBind();

          
        }

        protected void GuardarCat_Click(object sender, EventArgs e)
        {
            if(TextBoxNombreCategoria.Text == "" || Descripcion.Text == "")
            {

            }
            Categoria2 Obj = new Categoria2 { NombreCategoria=TextBoxNombreCategoria.Text, DescripcionCategoria=Descripcion.Text};

            bool resul = log.AgreagarCategoria(Obj);

        }
    }
}