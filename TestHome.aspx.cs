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

public partial class TestHome : System.Web.UI.Page
{
    //ConnectToDb mydb = new ConnectToDb();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {

            Response.Redirect("~/Home.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(Server.MapPath("Questions/Exams.xml"));
               //string xpath = "/Exams/Exam[Name='" + Session["exam"].ToString() + "']";

                foreach (XmlNode item in doc["Exams"].ChildNodes)
                {
                    ListBox1.Items.Add(new ListItem(item["Name"].InnerText, item["Name"].InnerText));
                }
                
            }
            
        }
        

       
    }
    protected void LinkButton_Click(object sender, CommandEventArgs e)
    {
        //Response.Redirect("TakeTest1.aspx?testno=" + e.CommandArgument.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //if (ListBox1.SelectedItem.Text!=null)
        //{
        //    Session["exam"] = ListBox1.SelectedItem.Text;
        //    Response.Redirect("~/TakeExam.aspx");
        //}
        
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["exam"] = ListBox1.SelectedItem.Text;
        Response.Redirect("~/TakeExam.aspx");
    }
}
