using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace event_management
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session["role"]==null)
                {
                    linkbutton2.Visible = true; //home
                    linkbutton3.Visible = true; //glry
                    linkbutton7.Visible = true; //contact
                    linkbutton8.Visible = true;//about
                    linkbutton9.Visible = true;//login
                    linkbutton5.Visible = false;//event
                    linkbutton6.Visible = false;//packages
                    linkbutton10.Visible=false; //service
                    linkbutton4.Visible = false;//logout
                    link.Visible = true;
                   }
                else if (Session["role"].Equals("user"))
                {
                    linkbutton2.Visible = false; //home
                     linkbutton3.Visible = true; //glry
                    linkbutton7.Visible = true; //contact
                    linkbutton8.Visible = true;//about
                    linkbutton9.Visible = false;//login
                    linkbutton10.Visible = true;//service
                    linkbutton5.Visible = true;//event
                    linkbutton6.Visible = true;//packages
                    linkbutton4.Visible = true;//logout
                    link.Visible = false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
                    
            

        }

        protected void linkbutton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void linkbutton4_Click(object sender, EventArgs e)
        {
            Session["userid"] = "";
            Session["fname"] = "";
            Session["role"] = "";
            Session["status"] ="";
            linkbutton2.Visible = true; //hello
           
            linkbutton3.Visible = true; //glry
            linkbutton7.Visible = true; //contact
            linkbutton8.Visible = true;//about
            linkbutton9.Visible = true;//login
            linkbutton5.Visible = false;//event
            linkbutton6.Visible = false;//packages
            linkbutton4.Visible = false;//logout
            Response.Redirect("hello.aspx");
        }

        protected void linkbutton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginu.aspx");
        }

        protected void linkbutton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("hello.aspx");
        }

        protected void link_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
    }
