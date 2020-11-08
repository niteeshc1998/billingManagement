using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisionSoft
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
               
                Response.Write("<script type='text/javascript'window.location.href='Default.aspx';</script>");

            }
        }


        protected void LogIn(object sender, EventArgs e)
        { using(visionsoftEntities con = new visionsoftEntities())
            {
              var   query = from u in con.admins
                        where u.admin_name == UserName.Text && u.password == Password.Text
                        select u;
                if (query.SingleOrDefault() != null)
                {
                    Session["username"] = UserName.Text;
                    Response.Redirect("Default.aspx");
                  
                }
                else
                {
                    Response.Write("<script type='text/javascript'> alert('invalid username password');</script>");
                }
            }
          
        }
    }
}