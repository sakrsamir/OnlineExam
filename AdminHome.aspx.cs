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
using System.IO;

public partial class AdminHome : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Teacher"] == null)
        {
            MultiView1.ActiveViewIndex = 0;
            Label8.Text = "0";
            //ListBox1.Items.Clear();
            //XmlDocument doc = new XmlDocument();
            //doc.Load(Server.MapPath("Questions/Exams.xml"));

            //foreach (XmlNode item in doc["Exams"].ChildNodes)
            //{
            //    ListBox1.Items.Add(new ListItem(item["Name"].InnerText, item["Name"].InnerText));
            //}
        }
        else
        {
            //ListBox1.Items.Clear();
            
            
            MultiView1.ActiveViewIndex = 1;
        }
        
            
        

    }
    protected void LinkButton_Click(object sender, CommandEventArgs e)
    {
        
    }

    protected void Delete_Click(object sender, CommandEventArgs e)
    {
        

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TxtStName.Text=="free"&&TxtStudentID.Text=="free")
        {
            Session["Teacher"] = "free";
            TxtStName.Text = "";
            if (ListBox1.Items.Count==0)
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(Server.MapPath("Questions/Exams.xml"));

                foreach (XmlNode item in doc["Exams"].ChildNodes)
                {
                    ListBox1.Items.Add(item["Name"].InnerText);
                }
            }
            
            Label8.Text =(Convert.ToInt32(Label8.Text)+Convert.ToInt32( Application["users"])).ToString();
            
            MultiView1.ActiveViewIndex = 1;
        }
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //if (ListBox1.SelectedItem.Text!=null)
        //{
            Session["num"] = ListBox1.SelectedItem.Text;
            Response.Redirect("~/EditExam.aspx");
        //}
        
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        //Session["Teacher"] = null;
        Session.RemoveAll();
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("Questions/Exams.xml"));
        string xpath = "/Exams/Exam[Name='" + ListBox1.SelectedItem.Text + "']";
        File.Delete(Server.MapPath("Questions/"+ListBox1.SelectedItem.Text+".xml"));
        XmlNode current = doc.SelectSingleNode(xpath);
        doc["Exams"].RemoveChild(current);
        doc.Save(Server.MapPath("Questions/Exams.xml"));
        ListBox1.Items.Clear();
        foreach (XmlNode item in doc["Exams"].ChildNodes)
        {
            ListBox1.Items.Add(item["Name"].InnerText);
        }
       
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Degrees.aspx");
    }
}