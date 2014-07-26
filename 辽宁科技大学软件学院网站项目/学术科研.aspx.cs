using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 辽宁科技大学软件学院网站项目
{
    public partial class 学术科研 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //通过地址栏传递参数，使得实验室介绍页面navigate标签下的二级标签实现导航控制页面内容
            Link1.Text = "网站首页";
            Link1.NavigateUrl = "~/rjxy.aspx";
            if (Request["show"] == "学术0" || Request["show"] == null)
            {
                Link2.Text = ">>学术科研";
                Link2.NavigateUrl = "~/学术科研.aspx";
            }
            if (Request["show"] == "学术1")
            {
                Link2.Text = ">>学术科研";
                Link2.NavigateUrl = "~/学术科研.aspx";
                Link3.Text = ">>研究方向";
                Link3.NavigateUrl = "~/学术科研.aspx?show=学术1";
                Repeaterscience2.Visible = false;
                Repeaterscience3.Visible = false;
                Repeaterscience4.Visible = false;
            }
            if (Request["show"] == "学术2")
            {
                Link2.Text = ">>学术科研";
                Link2.NavigateUrl = "~/学术科研.aspx";
                Link3.Text = ">>科研成果";
                Link3.NavigateUrl = "~/学术科研.aspx?show=学术2";
                Repeaterscience1.Visible = false;
                Repeaterscience3.Visible = false;
                Repeaterscience4.Visible = false;
            }
            if (Request["show"] == "学术3")
            {
                Link2.Text = ">>学术科研";
                Link2.NavigateUrl = "~/学术科研.aspx";
                Link3.Text = ">>主要著作";
                Link3.NavigateUrl = "~/学术科研.aspx?show=学术3";
                Repeaterscience1.Visible = false;
                Repeaterscience2.Visible = false;
                Repeaterscience4.Visible = false;
            }
            if (Request["show"] == "学术4")
            {
                Link2.Text = ">>学术科研";
                Link2.NavigateUrl = "~/学术科研.aspx";
                Link3.Text = ">>推广项目";
                Link3.NavigateUrl = "~/学术科研.aspx?show=学术4";
                Repeaterscience1.Visible = false;
                Repeaterscience2.Visible = false;
                Repeaterscience3.Visible = false;

            }
        }
    }
}
