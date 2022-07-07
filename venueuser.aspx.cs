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
    public partial class venueuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["event"] = DropDownList1.SelectedItem.Text;
                Session["venuecategory"] = DropDownList1.SelectedItem.Text;
         
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(strcon);
            string sqlquery = "select * from [dbo].[venue1] where venuecategory=@venuecategory";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@venuecategory", DropDownList1.SelectedItem.Text.ToString());
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            if (sdr.HasRows)
            {
                DataList1.DataSource = sdr;
                DataList1.DataBind();
            }
            sqlconn.Close();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="Book")
            {
                Response.Redirect("Book.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}