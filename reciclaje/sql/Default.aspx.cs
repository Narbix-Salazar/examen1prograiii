using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace RecyclingManagement
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegistrarUsuario(object sender, EventArgs e)
        {
            string cedula = txtCedula.Text;
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string correo = txtCorreo.Text;
            string contrasena = txtContrasena.Text;

            // Cadena de conexión desde el archivo web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["gestion_reciclaje"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Usuarios (Cedula, Nombre, Apellido, Correo, Contrasena) VALUES (@Cedula, @Nombre, @Apellido, @Correo, @Contrasena)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Cedula", cedula);
                command.Parameters.AddWithValue("@Nombre", nombre);
                command.Parameters.AddWithValue("@Apellido", apellido);
                command.Parameters.AddWithValue("@Correo", correo);
                command.Parameters.AddWithValue("@Contrasena", contrasena);

                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                    lblMensaje.Text = "Usuario registrado con éxito";
                    // Limpiar los cuadros de texto después del registro exitoso
                    txtCedula.Text = "";
                    txtNombre.Text = "";
                    txtApellido.Text = "";
                    txtCorreo.Text = "";
                    txtContrasena.Text = "";
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = "Error: " + ex.Message;
                }
            }
        }

        protected void IrAInformacion(object sender, EventArgs e)
        {
            Response.Redirect("Informacion.aspx");
        }

        protected void IrAContadorPuntos(object sender, EventArgs e)
        {
            Response.Redirect("ContadorPuntos.aspx");
        }
    }
}

