using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen2
{
    public partial class Encuestas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO Encuestas (nombreparticipante, apellido, fechanacimiento, edad, correoelectronico, carropropio) VALUES (@nombreparticipante, @apellido, @fechanacimiento, @edad, @correoelectronico, @carropropio)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@nombreparticipante", Tnom.Text);
                        cmd.Parameters.AddWithValue("@apellido", Tape.Text);
                        cmd.Parameters.AddWithValue("@fechanacimiento", Convert.ToDateTime(Tfena.Text));
                        cmd.Parameters.AddWithValue("@edad", Convert.ToInt32(Tedad.Text));
                        cmd.Parameters.AddWithValue("@correoelectronico", Temail.Text);
                        cmd.Parameters.AddWithValue("@carropropio", carropropio.SelectedValue == "1" ? "Si" : "No");

                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                lblMensaje.Visible = true;
                lblMensaje.Text = "Los datos se han cargado correctamente.";
            }
            catch (Exception ex)
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Ocurrió un error al cargar los datos: " + ex.Message;
            }
        }

    } 