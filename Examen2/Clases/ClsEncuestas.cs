using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Examen2
{
    public class ClsEncuestas
    {

        public ClsEncuestas(string Nombre)

        {
            Nombre = Nombre;
        }


        public static int Agregar(string Nombre)
        {
            int resultado = 0;
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            try
            {
                connection.Open();

                string storedProcedureName = "insertarencuestas";

                using (SqlCommand command = new SqlCommand(storedProcedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@nombreparticipante",Nombre);
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                        resultado = 1;
                }
            }
            catch (Exception ex)
            {
                string errorMessage = "Error al llenar el DataTable: " + ex.Message;
                string script = "<script>alert('" + errorMessage + "');</script>";

            }
            finally
            {

                if (connection != null && connection.State != ConnectionState.Closed)
                {
                    connection.Close();
                }
            }
            return resultado;
        }

        public static int Borrar(int numeroencuesta)
        {
            int resultado = 0;
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            try
            {
                connection.Open();

                string storedProcedureName = "Borrarencuestas";

                using (SqlCommand command = new SqlCommand(storedProcedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@numeroencuesta", numeroencuesta);
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                        resultado = 1;
                }
            }
            catch (Exception ex)
            {
                string errorMessage = "Error al llenar el DataTable: " + ex.Message;
                string script = "<script>alert('" + errorMessage + "');</script>";

            }
            finally
            {

                if (connection != null && connection.State != ConnectionState.Closed)
                {
                    connection.Close();
                }
            }
            return resultado;
        }

    }
}
