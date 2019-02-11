using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;               
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml;


public partial class Home : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/Students.xml"));

            foreach (XmlNode item in doc["Students"].ChildNodes)
            {
                if (item["User"].InnerText == TxtStName.Text && item["Pass"].InnerText == TxtStudentID.Text)
                {
                    Session["user"] = TxtStName.Text;
                    Response.Redirect("~/BeforeProceed.aspx");
                }
            }
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "<center><bold>no matched user register first</bold></center>";
            //Response.Redirect("~/Register.aspx");
        }
       
    }
}
