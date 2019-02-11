using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class TakeExam : System.Web.UI.Page
{


    TimeSpan ts;
    TimeSpan dsp;
    Stack<XmlNode> xmlist;
    Stack<string> answer;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["User"] == null)
        {
            Response.Redirect("~/Home.aspx");
        }
        
        
        if (!IsPostBack)
        {
           
            //time
            XmlDocument docc = new XmlDocument();
            docc.Load(Server.MapPath("Questions/Exams.xml"));
            string xpath = "/Exams/Exam[Name='" + Session["exam"].ToString() + "']";
            XmlNode time = docc.SelectSingleNode(xpath);
            ts = new TimeSpan(0, Convert.ToInt32(time["Time"].InnerText), 0);
            //time
            HiddenField1.Value = ts.ToString();
            Label7.Text = ts.Minutes.ToString() + ":" + ts.Seconds.ToString();
            //HiddenField1.Value = ts.ToString();
            Label6.Text += Session["User"].ToString();

            //
            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("Questions/" + (Session["exam"].ToString()) + ".xml"));
            
            //List<XmlNode> xmlist = new List<XmlNode>();
            //Stack<XmlNode> xmlist = new Stack<XmlNode>();
            xmlist = new Stack<XmlNode>();
            answer = new Stack<string>();
            foreach (XmlNode item in doc["Questions"].ChildNodes)
            {
                xmlist.Push(item);
                answer.Push(item["Correct"].InnerText);
            }
            int x=xmlist.Count;
            Label11.Text = x.ToString();
            XmlNode first = xmlist.Pop();
            Label10.Text = first["Text"].InnerText;
            RadioButton1.Text = first["Choose1"].InnerText;
            RadioButton2.Text = first["Choose2"].InnerText;
            RadioButton3.Text = first["Choose3"].InnerText;
            Label9.Text = Session["exam"].ToString();
            Label6.Text ="Welcome : "+ Session["User"].ToString();
            Label12.Text = (x - xmlist.Count).ToString();
            Session.Add( "stack", xmlist);
            Session.Add("answer", answer);
            int result = 0;
            Session.Add("result", result);
            
        }
        
        
       
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        
        ts =TimeSpan.Parse(HiddenField1.Value);
        if (ts.TotalSeconds>0)
        {
            dsp = ts.Subtract(new TimeSpan(0, 0, 1));
            HiddenField2.Value = dsp.ToString();

            //dsp = ts.Subtract(new TimeSpan(0, 0, 1));
            Label7.Text = dsp.Minutes.ToString() + ":" + dsp.Seconds.ToString();
            ts = dsp;
            HiddenField1.Value = dsp.ToString();
            HiddenField2.Value = ts.ToString();
        }
        else
        {

            Response.Redirect("~/Results.aspx?t=" + Label11.Text);
        }
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (((Stack<XmlNode>)Session["stack"]).Count>0)
        {
       
        XmlNode first = ((Stack<XmlNode>)Session["stack"]).Pop();
        Label10.Text = first["Text"].InnerText;
        RadioButton1.Text = first["Choose1"].InnerText;
        RadioButton2.Text = first["Choose2"].InnerText;
        RadioButton3.Text = first["Choose3"].InnerText;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        Label12.Text = (Convert.ToInt32(Label11.Text) - ((Stack<XmlNode>)Session["stack"]).Count).ToString();
        }
        else
        {
            Response.Redirect("~/Results.aspx?t="+Label11.Text);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Stack<string> an = ((Stack<string>)Session["answer"]);
        if (RadioButton1.Checked==true||RadioButton2.Checked==true||RadioButton3.Checked==true)
        {
            int x = Convert.ToInt32(Session["result"].ToString());
            string st = ((Stack<string>)Session["answer"]).Pop();
            if (RadioButton1.Checked==true&&st=="First")
            {
                x++;
                Session["result"] = x.ToString();
            }
            if (RadioButton2.Checked == true && st== "Second")
            {
                x++;
                Session["result"] = x.ToString();
            }
            if (RadioButton3.Checked == true && st == "Third")
            {
                x++;
                Session["result"] = x.ToString();
            }
            
        }
        
            Button1_Click(sender, e);
        
    }

   
}