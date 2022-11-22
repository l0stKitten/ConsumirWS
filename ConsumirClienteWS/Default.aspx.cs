using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsumirClienteWS
{
    public partial class _Default : Page
    {
        Producto.WebService1SoapClient producto = new Producto.WebService1SoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarTablaProductos();
        }

        protected void limpiar()
        {
            id_prod.Text = "";
            cod_prod.Text = "";
            nombre_prod.Text = "";
            precc_prod.Text = "";
            precv_prod.Text = "";
        }

        protected void crear_producto_Click(object sender, EventArgs e)
        {
            string resp = producto.Crear_Producto_WS(cod_prod.Text.Trim(), nombre_prod.Text.Trim(), marca_prod.Text.Trim(),
                desc_prod.Text.Trim(), float.Parse(precc_prod.Text.Trim()), float.Parse(precv_prod.Text.Trim()),
                mat_prod.Text.Trim());
            Response.Write("<script>alert('" + resp + "')</script>");
            llenarTablaProductos();
            limpiar();
        }

        protected void act_producto_Click(object sender, EventArgs e)
        {
            string resp = producto.Actualizar_Producto_WS(int.Parse(id_prod.Text.Trim()), cod_prod.Text.Trim(), nombre_prod.Text.Trim(),
                marca_prod.Text.Trim(), desc_prod.Text.Trim(), float.Parse(precc_prod.Text.Trim()),
                float.Parse(precv_prod.Text.Trim()), mat_prod.Text.Trim());
            Response.Write("<script>alert('" + resp + "')</script>");
            llenarTablaProductos();
            limpiar();
        }

        protected void elm_producto_Click(object sender, EventArgs e)
        {
            string resp = producto.Eliminar_Producto_WS(int.Parse(id_prod.Text.Trim()));
            Response.Write("<script>alert('" + resp + "')</script>");
            llenarTablaProductos();
        }

        protected void grvProductos_RowEditing(object sender, GridViewEditEventArgs e)
        {

            int RowIndex = e.NewEditIndex;
            Label empid = (Label)tabla_prod.Rows[RowIndex].FindControl("lbl_id_prod");
            Session["id"] = empid.Text;

            id_prod.Text = ((Label)tabla_prod.Rows[RowIndex].FindControl("lbl_id_prod")).Text.ToString();
            cod_prod.Text = ((Label)tabla_prod.Rows[RowIndex].FindControl("lbl_cod")).Text.ToString();
            nombre_prod.Text = ((Label)tabla_prod.Rows[RowIndex].FindControl("lbl_nombre")).Text.ToString();
            precc_prod.Text = ((Label)tabla_prod.Rows[RowIndex].FindControl("lbl_prec_comp")).Text.ToString();
            precv_prod.Text = ((Label)tabla_prod.Rows[RowIndex].FindControl("lbl_prec_venta")).Text.ToString();

        }

        protected void grvProductos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label empid = (Label)tabla_prod.Rows[e.RowIndex].FindControl("lbl_id_prod");

            Producto.WebService1SoapClient prod = new Producto.WebService1SoapClient();
            string resp = prod.Eliminar_Producto_WS(Int16.Parse(empid.Text.Trim()));
            Response.Write("<script>alert('" + resp + "')</script>");
            llenarTablaProductos();
        }

        private void llenarTablaProductos()
        {
            Producto.WebService1SoapClient prod = new Producto.WebService1SoapClient();
            String datos = prod.Ver_Productos_WS();
            if (JObject.Parse(datos)["Table"] != null)
            {
                DataTable dt = JObject.Parse(datos)["Table"].ToObject<DataTable>();
                tabla_prod.DataSource = dt;
                tabla_prod.DataBind();
            }
        }
    }
}