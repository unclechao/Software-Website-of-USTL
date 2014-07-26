using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 辽宁科技大学软件学院网站项目
{
    public partial class 师资队伍 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //通过地址栏传递参数，使得实验室介绍页面navigate标签下的二级标签实现导航控制页面内容
            Link1.Text = "网站首页";
            Link1.NavigateUrl = "~/rjxy.aspx";
            if (Request["show"] == "师资0" || Request["show"] == null)
            {
                Link2.Text = ">>师资队伍";
                Link2.NavigateUrl = "~/师资队伍.aspx";
            }
            if (Request["show"] == "师资1")
            {
                Link2.Text = ">>师资队伍";
                Link2.NavigateUrl = "~/师资队伍.aspx";
                Link3.Text = ">>师资概况";
                Link3.NavigateUrl = "~/师资队伍.aspx?show=师资1";
                Repeaterteacher2.Visible = false;
                Repeaterteacher3.Visible = false;
            }
            if (Request["show"] == "师资2")
            {
                Link2.Text = ">>师资队伍";
                Link2.NavigateUrl = "~/师资队伍.aspx";
                Link3.Text = ">>教授简介";
                Link3.NavigateUrl = "~/师资队伍.aspx?show=师资2";
                Repeaterteacher1.Visible = false;
                Repeaterteacher3.Visible = false;
            }
            if (Request["show"] == "师资3")
            {
                Link2.Text = ">>师资队伍";
                Link2.NavigateUrl = "~/师资队伍.aspx";
                Link3.Text = ">>教师简介";
                Link3.NavigateUrl = "~/师资队伍.aspx?show=师资3";
                Repeaterteacher1.Visible = false;
                Repeaterteacher2.Visible = false;
            }
        }
    }
}

            