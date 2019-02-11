using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
public partial class EditExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["num"]==null)
        {
            Response.Redirect("~/AdminHome.aspx");
        }
        if (!IsPostBack)
        {
            Label6.Text += Session["num"].ToString();
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("Questions/" + (Session["num"].ToString()) + ".xml"));
            foreach (XmlNode item in doc["Questions"].ChildNodes)
            {
                ListBox1.Items.Add(item["Text"].InnerText);
            }
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("Questions/" + (Session["num"].ToString()) + ".xml"));
        string xpath = "/Questions/Q[Text='" + ListBox1.SelectedItem.Text + "']";
        XmlNode current = doc.SelectSingleNode(xpath);
        TextBox1.Text = current["Text"].InnerText;
        TextBox2.Text = current["Choose1"].InnerText;
        TextBox3.Text = current["Choose2"].InnerText;
        TextBox4.Text = current["Choose3"].InnerText;
        if (current["Correct"].InnerText=="First")
        {
            DropDownList1.SelectedIndex = 0;
        }
        else if (current["Correct"].InnerText == "Second")
        {
            DropDownList1.SelectedIndex = 1;
        }
        else
        {
            DropDownList1.SelectedIndex = 2;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("Questions/" + (Session["num"].ToString()) + ".xml"));
        string xpath = "/Questions/Q[Text='" + ListBox1.SelectedItem.Text + "']";
        XmlNode current = doc.SelectSingleNode(xpath);
        current["Text"].InnerText = TextBox1.Text;
        current["Choose1"].InnerText = TextBox2.Text;
        current["Choose2"].InnerText = TextBox3.Text;
        current["Choose3"].InnerText = TextBox4.Text;
        current["Correct"].InnerText = DropDownList1.SelectedItem.Text;
        doc.Save(Server.MapPath("Questions/" + (Session["num"].ToString()) + ".xml"));
        ListBox1.Items.Clear();
        foreach (XmlNode item in doc["Questions"].ChildNodes)
        {
            ListBox1.Items.Add(item["Text"].InnerText);
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("Questions/" + (Session["num"].ToString()) + ".xml"));
        string xpath = "/Questions/Q[Text='" + ListBox1.SelectedItem.Text + "']";
        XmlNode current = doc.SelectSingleNode(xpath);
        doc["Questions"].RemoveChild(current);
        doc.Save(Server.MapPath("Questions/" + (Session["num"].ToString()) + ".xml"));
        ListBox1.Items.Clear();
        foreach (XmlNode item in doc["Questions"].ChildNodes)
        {
            ListBox1.Items.Add(item["Text"].InnerText);
        }
    }
}