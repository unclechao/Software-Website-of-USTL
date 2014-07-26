using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace 辽宁科技大学软件学院网站项目
{
    public partial class 实验室介绍 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //通过地址栏传递参数，使得实验室介绍页面navigate标签下的二级标签实现导航控制页面内容
            Link1.Text = "网站首页";
            Link1.NavigateUrl = "~/rjxy.aspx";
            if (Request["show"] == "实验室0"||Request["show"]==null)
            {
                Link2.Text = ">>实验室介绍";
                Link2.NavigateUrl = "~/实验室介绍.aspx";
            }
            if (Request["show"] == "实验室1")
            {
                Link2.Text = ">>实验室介绍";
                Link2.NavigateUrl = "~/实验室介绍.aspx";
                Link3.Text = ">>实验室中心概况";
                Link3.NavigateUrl = "~/实验室介绍.aspx?show=实验室1";
                Repeatertextroom2.Visible = false;
                Repeatertextroom3.Visible = false;
            }
            if (Request["show"] == "实验室2")
            {
                Link2.Text = ">>实验室介绍";
                Link2.NavigateUrl = "~/实验室介绍.aspx";
                Link3.Text = ">>实验室开放";
                Link3.NavigateUrl = "~/实验室介绍.aspx?show=实验室2";
                Repeatertextroom1.Visible = false;
                Repeatertextroom3.Visible = false;
            }
            if (Request["show"] == "实验室3")
            {
                Link2.Text = ">>实验室介绍";
                Link2.NavigateUrl = "~/实验室介绍.aspx";
                Link3.Text = ">>实验室执行计划";
                Link3.NavigateUrl = "~/实验室介绍.aspx?show=实验室3";
                Repeatertextroom1.Visible = false;
                Repeatertextroom2.Visible = false;
            }

        }
    }
}
