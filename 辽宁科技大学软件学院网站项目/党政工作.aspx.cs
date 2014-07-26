using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 辽宁科技大学软件学院网站项目
{
    public partial class 党政工作 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //通过地址栏传递参数，使得实验室介绍页面navigate标签下的二级标签实现导航控制页面内容
            Link1.Text = "网站首页";
            Link1.NavigateUrl = "~/rjxy.aspx";
            if (Request["show"] == "党政0" || Request["show"] == null)
            {
                Link2.Text = ">>党政工作";
                Link2.NavigateUrl = "~/党政工作.aspx";
            }
            if (Request["show"] == "党政1")
            {
                Link2.Text = ">>党政工作";
                Link2.NavigateUrl = "~/党政工作.aspx";
                Link3.Text = ">>党委工作";
                Link3.NavigateUrl = "~/党政工作.aspx?show=党政1";
                Repeaterparty2.Visible = false;
                Repeaterparty3.Visible = false;
            }
            if (Request["show"] == "党政2")
            {
                Link2.Text = ">>党政工作";
                Link2.NavigateUrl = "~/党政工作.aspx";
                Link3.Text = ">>行政工作";
                Link3.NavigateUrl = "~/党政工作.aspx?show=党政2";
                Repeaterparty1.Visible = false;
                Repeaterparty3.Visible = false;
            }
            if (Request["show"] == "党政3")
            {
                Link2.Text = ">>党政工作";
                Link2.NavigateUrl = "~/党政工作.aspx";
                Link3.Text = ">>工会工作";
                Link3.NavigateUrl = "~/党政工作.aspx?show=党政3";
                Repeaterparty1.Visible = false;
                Repeaterparty2.Visible = false;
            }
        }
    }
}
