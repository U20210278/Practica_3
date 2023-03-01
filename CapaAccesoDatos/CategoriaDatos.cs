using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidad;

namespace CapaAccesoDatos
{
    public class CategoriaDatos
    {
        private SqlConnection conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconn"].ConnectionString);
        public DataTable selectCategoriaDatos()
        {
            SqlCommand comand = new SqlCommand("SelectCategoria",conexion);
            comand.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter dataAdapter = new SqlDataAdapter(comand);
            DataTable dataTable= new DataTable();
            dataAdapter.Fill(dataTable);
            return dataTable;
        }

        public DataTable selectProducto() {

            SqlCommand comand = new SqlCommand("selectProudcto", conexion);
            comand.CommandType = CommandType.StoredProcedure;   
            SqlDataAdapter dataAdapter = new SqlDataAdapter(comand);    
            DataTable dataTable= new DataTable();
            dataAdapter.Fill(dataTable);
            return dataTable;
        
        }

        public bool InsertCategoria(Categoria2 categoria)
        {
            conexion.Open();
            SqlCommand command = new SqlCommand("InsertCategoria", conexion);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@nombreCategoria", categoria.NombreCategoria);
            command.Parameters.AddWithValue("@descripcionCategoria", categoria.DescripcionCategoria);

            int resultado = command.ExecuteNonQuery();
            conexion.Close();

            if(resultado > 0)
            {
                return true;
            }

            return false;

        }
    }
}
