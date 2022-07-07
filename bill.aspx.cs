using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace event_management
{
    public partial class bill : System.Web.UI.Page
    {

        //string strcon = ConfigurationManager.ConnectionStrings["signdbConnectionString11"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string dt;
            //dt = DateTime.Now.ToString("dd/MM/yyyy");
            //lblorderdate.Text = dt;
            //txtcname.Text = Session["fname"].ToString();
            //txtcid.Text = Session["cid"].ToString();
            //txtoid.Text = Session["oid"].ToString();
            //txtvid.Text = Session["vid"].ToString();
            ////txtfrm.Text = Session["fromdt"].ToString();
            //txtvc.Text = Session["venuecategory"].ToString();
            //SqlConnection con = new SqlConnection(strcon);
            //if (con.State == System.Data.ConnectionState.Closed)
            //{
            //    con.Open();
            //}
            //SqlCommand cmd = new SqlCommand("select * from venue1 where venueid='" + txtvid.Text.Trim() + "'", con);
            //SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    while (dr.Read())
            //    {

            //        Session["price"] = dr.GetValue(3).ToString();
            //        Session["vplace"] = dr.GetValue(2).ToString();

            //    }


            //}
            //else
            //{
            //    Response.Write("<script>alert('Please Select Venue');</script>");
            //}
            //txtvc.Text = Session["price"].ToString();
            //txtplace.Text = Session["vplace"].ToString();
            //txtevent.Text = Session["event"].ToString();
            //txtguest.Text = Session["qty"].ToString();
            //txtlighttype.Text = Session["dlight"].ToString();
            //txtlightcost.Text = Session["tlight"].ToString();
            //txtflowertype.Text = Session["dflower"].ToString();
            //txtflower.Text = Session["tflower"].ToString();
            //txtseattype.Text = Session["dseating"].ToString();
            //txtseat.Text = Session["tseat"].ToString();
           

        }
    }
    }