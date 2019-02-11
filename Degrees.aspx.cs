using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Degrees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["Teacher"] == null)
            {
                Response.Redirect("~/AdminHome.aspx");
            }
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("Questions/Exams.xml"));
            DropDownList1.Items.Add(new ListItem("select Exam"));
            foreach (XmlNode item in doc["Exams"].ChildNodes)
            {
                DropDownList1.Items.Add(new ListItem(item["Name"].InnerText,item["Name"].InnerText));
             
            }
            
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/degrees.xml"));
        foreach (XmlNode item in doc["degrees"].ChildNodes)
        {
            if (DropDownList1.SelectedItem.Text==item["examName"].InnerText)
            {
                ListBox1.Items.Add(new ListItem(item["studentName"].InnerText, item["studentName"].InnerText));
            }
        }
        
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/degrees.xml"));
        string xpath = "/degrees/D[studentName='" + ListBox1.SelectedItem.Text + "']";
        XmlNode cu = doc.SelectSingleNode(xpath);
        Label8.Text = "Full Name : " + ListBox1.SelectedItem.Text;
        Label9.Text ="UserName : "+ cu["user"].InnerText;
        Label10.Text = "Number Of Solved Question : " + cu["grade"].InnerText;
        //int cc=int.Parse( (cu["grade"].InnerText).Replace('%','0'));
        
            Label12.ForeColor = System.Drawing.Color.Red;
            Label12.Text = cu["degree"].InnerText;
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("~/degrees.xml"));
        foreach (XmlNode item in doc["degrees"].ChildNodes)
        {
            if ((TextBox1.Text).ToLower() == (item["studentName"].InnerText).ToLower() || (TextBox1.Text).ToLower() == (item["user"].InnerText).ToLower())
            {
                Label8.Text = "Full Name : " + item["studentName"].InnerText;
                Label9.Text = "UserName : " + item["user"].InnerText;
                Label10.Text = "Number Of Solved Question : " + item["grade"].InnerText;
                Label12.ForeColor = System.Drawing.Color.Red;
                Label12.Text = item["degree"].InnerText;
               
                break;
            }
        }
        TextBox1.Text = "";
    }
}