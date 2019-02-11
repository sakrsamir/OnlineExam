using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

public partial class AddNewExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            MultiView1.ActiveViewIndex = 2;
        }
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("Questions/Exams.xml"));
        XmlNode ex = doc.CreateElement("Exam");
        XmlNode name = doc.CreateElement("Name");
        name.InnerText = TextBox6.Text;
        ex.AppendChild(name);
        XmlNode time = doc.CreateElement("Time");
        time.InnerText = TextBox7.Text;
        ex.AppendChild(time);
        doc["Exams"].AppendChild(ex);
        doc.Save(Server.MapPath("Questions/Exams.xml"));
        //code to create xml file //
        FileStream fs = new FileStream(Server.MapPath("Questions/" + TextBox6.Text + ".xml"), FileMode.Append);
        StreamWriter sw = new StreamWriter(fs);
        sw.WriteLine("<Questions>");
        sw.WriteLine("</Questions>");
        sw.Close();
        fs.Close();

       // File.Create(Server.MapPath("Questions/"+TextBox6.Text+".xml"));
        
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("Questions/" + TextBox6.Text + ".xml"));
        //XmlNode parent = doc.CreateElement("Questions");//parent
        XmlNode q = doc.CreateElement("Q");
        XmlNode text = doc.CreateElement("Text");
        text.InnerText = TextBox2.Text;
        q.AppendChild(text);

        XmlNode Choose1 = doc.CreateElement("Choose1");
        Choose1.InnerText = TextBox3.Text;
        q.AppendChild(Choose1);

        XmlNode Choose2 = doc.CreateElement("Choose2");
        Choose2.InnerText = TextBox4.Text;
        q.AppendChild(Choose2);

        XmlNode Choose3 = doc.CreateElement("Choose3");
        Choose3.InnerText = TextBox5.Text;
        q.AppendChild(Choose3);

        XmlNode correct = doc.CreateElement("Correct");
        correct.InnerText = DropDownList1.SelectedItem.Text;
        q.AppendChild(correct);
        doc["Questions"].AppendChild(q);
        doc.Save(Server.MapPath("Questions/" + TextBox6.Text + ".xml"));
        ListBox1.Items.Clear();
        foreach (XmlNode item in doc["Questions"].ChildNodes )
        {
            ListBox1.Items.Add(item["Text"].InnerText);
        }
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        MultiView1.ActiveViewIndex = 0;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminHome.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("Questions/" + TextBox6.Text + ".xml"));
        string xpath = "/Questions/Q[Text='" + ListBox1.SelectedItem.Text + "']";
        XmlNode current = doc.SelectSingleNode(xpath);
        doc["Questions"].RemoveChild(current);
        doc.Save(Server.MapPath("Questions/" + TextBox6.Text + ".xml"));
        ListBox1.Items.Clear();
        foreach (XmlNode item in doc["Questions"].ChildNodes)
        {
            ListBox1.Items.Add(item["Text"].InnerText);
        }
    }
}