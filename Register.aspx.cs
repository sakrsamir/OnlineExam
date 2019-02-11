using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Register : System.Web.UI.Page
{
    XmlDocument doc = new XmlDocument();
    protected void Page_Load(object sender, EventArgs e)
    {
        doc.Load(Server.MapPath("~/Students.xml"));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlNode stu = doc.CreateElement("student");

        XmlNode name = doc.CreateElement("Name");
        name.InnerText = fnametxt.Text;
        stu.AppendChild(name);

        XmlNode mail = doc.CreateElement("Mail");
        mail.InnerText = mailtxt.Text;
        stu.AppendChild(mail);

        XmlNode birth = doc.CreateElement("Birth");
        birth.InnerText =datetxt.Text;
        stu.AppendChild(birth);

        XmlNode phone = doc.CreateElement("Phone");
        phone.InnerText =phonetxt.Text;
        stu.AppendChild(phone);


        XmlNode user = doc.CreateElement("User");
        user.InnerText =usertxt.Text;
        stu.AppendChild(user);

        XmlNode pass = doc.CreateElement("Pass");
        pass.InnerText = passtxt.Text;
        stu.AppendChild(pass);
        doc["Students"].AppendChild(stu);
        doc.Save(Server.MapPath("~/Students.xml"));
        //
        Session["User"] = usertxt.Text;
        Response.Redirect("~/BeforeProceed.aspx");
    }
}