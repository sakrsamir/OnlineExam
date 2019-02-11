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
using System.Data.SqlClient;
using System.Xml;

public partial class Results : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["User"]==null)
            {
                Response.Redirect("~/home.aspx");
            }
            Label12.Text = Session["User"].ToString();

            double x = Convert.ToDouble(Request.QueryString["t"]);
            double y = Convert.ToDouble(Session["result"]);
            double z =Math.Floor( (y / x) * 100);
            //string s = (z.ToString()).Remove(0, 4);
            Label14.Text =( z).ToString()+"%";
            //
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("~/degrees.xml"));

            XmlNode stu = doc.CreateElement("D");

            XmlNode examName = doc.CreateElement("examName");
            examName.InnerText = Session["exam"].ToString();
            stu.AppendChild(examName);

            XmlNode studentName = doc.CreateElement("studentName");
            //full Name//
            XmlDocument doc1 = new XmlDocument();
            doc1.Load(Server.MapPath("~/Students.xml"));
            string xpath = "/Students/student[User='" + Session["user"].ToString()+ "']";
            XmlNode cu = doc1.SelectSingleNode(xpath);
            //
            studentName.InnerText = cu["Name"].InnerText;
            stu.AppendChild(studentName);
            XmlNode usere = doc.CreateElement("user");
            usere.InnerText = Session["user"].ToString();
            stu.AppendChild(usere);

            XmlNode grade = doc.CreateElement("grade");
            grade.InnerText = Session["result"].ToString() + "/" + Request.QueryString["t"];
            stu.AppendChild(grade);
            XmlNode degree = doc.CreateElement("degree");
            degree.InnerText = Label14.Text;
            stu.AppendChild(degree);

            
            doc["degrees"].AppendChild(stu);
            doc.Save(Server.MapPath("~/degrees.xml"));
            //
            //Session["User"] = null;
           // Session.Clear();
            Session.RemoveAll();
        }
    }
    public void bind()
    {
        // Write your code to get the summary of the result and display it
    }
}
