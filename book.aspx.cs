using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace event_management
{
    public partial class book : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        int id1;
        protected void Page_Load(object sender, EventArgs e)
        {
            //fdate.Text = DateTime.Now.Date;
            lblvenuecategory.Text = (string)Session["venuecategory"];


            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("venueuser.aspx");
            }
            else
            {

                id1 = Convert.ToInt16(Request.QueryString["id"].ToString());
                Session["vid"] = id1;
                DataTable dt = getdata("select * from venue1 where venueid=" + id1);
                rpt1.DataSource = dt;
                rpt1.DataBind();
                int count;
                SqlConnection con1 = new SqlConnection("Data Source=LAPTOP-04NDJ8P3\\SQLEXPRESS01;Initial Catalog=signdb;Integrated Security=True");
                string str = "select count(*) from bookingorder";
                SqlCommand cmd = new SqlCommand(str, con1);
                con1.Open();
                count = Convert.ToInt16(cmd.ExecuteScalar()) + 1;
                TextBox1.Text = "ID00" + count.ToString();

                TextBox1.Enabled = false;
                con1.Close();
                
            }
              
        }
        
            
           
        private DataTable getdata(String query)
        {
            SqlConnection con = new SqlConnection(strcon);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
           
            if (DropDownList2.SelectedIndex == 0)
                {
                    Response.Write("<script>alert('Please Select Event type.');</script>");
            }
            else 
            {
                Session["oid"] = TextBox1.Text;
                Session["vcat"] = lblvenuecategory.Text;
                Session["event"] = DropDownList2.SelectedItem;
                Session["qty"] = txtqty.Text;
                //Session["cl"] = txtqtyTime

                Response.Redirect("decoruser.aspx");
            }
           
        }
    }
}
