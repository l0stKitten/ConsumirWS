using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsumirClienteWS
{
    public partial class About : Page
    {
        ServiceReferenceCRUD.WebService1SoapClient servicio = new ServiceReferenceCRUD.WebService1SoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarTablaProductos();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rep = servicio.nuevo_cliente(nom_clientC.Text.Trim(), dir_clientC.Text.Trim(), tel_clientC.Text.Trim(), email_clientC.Text.Trim());
            Response.Write("<script>alert('" + rep + "')</script>");
            llenarTablaProductos();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string rep = servicio.actualizar_cliente(int.Parse(id_clientA.Text.Trim()), nom_clientA.Text.Trim(), dir_clientA.Text.Trim(), tel_clientA.Text.Trim(), email_clientA.Text.Trim());
            Response.Write("<script>alert('" + rep + "')</script>");
            llenarTablaProductos();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string rep = servicio.eliminar_cliente(int.Parse(id_clientE.Text.Trim()));
            Response.Write("<script>alert('" + rep + "')</script>");
            llenarTablaProductos();
        }
        private void llenarTablaProductos()
        {
            tabla_cli.DataSource = servicio.ver_cliente();
            tabla_cli.DataBind();
        }
    }
}