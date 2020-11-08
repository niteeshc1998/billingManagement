using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisionSoft
{
    public partial class AddEntries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                // Response.Redirect("Login.aspx");
                Response.Write("<script type='text/javascript'>alert('Kindly Login first !');window.location.href='Login.aspx?';</script>");

            }

        }

        protected void Add_Enteries(object sender, EventArgs e)
        {
            string img1 = getfilepath(FileUpload1);
            try {
                using (visionsoftEntities con = new visionsoftEntities())
                { string s = "server";
                    //string date = Request["date"].ToString(); 
                    Expenses ex = new Expenses();
                    ex.expense_name = expense_name.Value.ToString();
                    ex.date = date.Value.ToString();
                    ex.month = month.Value.ToString();
                    ex.bill_no = bill_no.Value.ToString();
                    ex.amount = Int32.Parse(amount.Value.ToString());
                    ex.img = "<a runat='" + s + "' href='" + img1 + "'> View </a> ";
                    con.Expenses.Add(ex);
                    int i = con.SaveChanges();
                    if (i > 0)
                    {
                        Response.Write("<script type='text/javascript'> alert('A new entry added');window.location.href='Login.aspx?';</script>");


                    }
                    else
                    {
                        Response.Write("<script type='text/javascript'> alert('bill upload failed try again');</script>");
                    }
                }

            }catch(Exception ex)
            {
                Response.Write(ex);
            }

        }


        private string getfilepath(FileUpload fileUpload)
        {
            string filename = fileUpload.FileName;
            fileUpload.SaveAs(Server.MapPath("bills/" + filename));
            string img = "bills/" + filename;
            return img;

        }
    }
}