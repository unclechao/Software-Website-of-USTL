using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 辽宁科技大学软件学院网站项目
{
    public partial class 学院概况 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //通过地址栏传递参数，使得实验室介绍页面navigate标签下的二级标签实现导航控制页面内容
            Link1.Text = "网站首页";
            Link1.NavigateUrl = "~/rjxy.aspx";
            if (Request["show"] == "学院0" || Request["show"] == null)
            {
                Link2.Text = ">>学院概况";
                Link2.NavigateUrl = "~/学院概况.aspx";
            }
            if (Request["show"] == "学院1")
            {
                Link2.Text = ">>学院概况";
                Link2.NavigateUrl = "~/学院概况.aspx";
                Link3.Text = ">>学院简介";
                Link3.NavigateUrl = "~/学院概况.aspx?show=学院1";
                Repeatercollege2.Visible = false;
                Repeatercollege3.Visible = false;
                Repeatercollege4.Visible = false;
                Repeatercollege5.Visible = false;
                Repeatercollege6.Visible = false;
            }
            if (Request["show"] == "学院2")
            {
                Link2.Text = ">>学院概况";
                Link2.NavigateUrl = "~/学院概况.aspx";
                Link3.Text = ">>组织机构";
                Link3.NavigateUrl = "~/学院概况.aspx?show=学院2";
                Repeatercollege1.Visible = false;
                Repeatercollege3.Visible = false;
                Repeatercollege4.Visible = false;
                Repeatercollege5.Visible = false;
                Repeatercollege6.Visible = false;
            }
            if (Request["show"] == "学院3")
            {
                Link2.Text = ">>学院概况";
                Link2.NavigateUrl = "~/学院概况.aspx";
                Link3.Text = ">>学院风采";
                Link3.NavigateUrl = "~/学院概况.aspx?show=学院3";
                Repeatercollege1.Visible = false;
                Repeatercollege2.Visible = false;
                Repeatercollege4.Visible = false;
                Repeatercollege5.Visible = false;
                Repeatercollege6.Visible = false;
            }
            if (Request["show"] == "学院4")
            {
                Link2.Text = ">>学院概况";
                Link2.NavigateUrl = "~/学院概况.aspx";
                Link3.Text = ">>现任领导";
                Link3.NavigateUrl = "~/学院概况.aspx?show=学院4";
                Repeatercollege1.Visible = false;
                Repeatercollege2.Visible = false;
                Repeatercollege3.Visible = false;
                Repeatercollege5.Visible = false;
                Repeatercollege6.Visible = false;
            }
            if (Request["show"] == "学院5")
            {
                Link2.Text = ">>学院概况";
                Link2.NavigateUrl = "~/学院概况.aspx";
                Link3.Text = ">>精品课程";
                Link3.NavigateUrl = "~/学院概况.aspx?show=学院5";
                Repeatercollege1.Visible = false;
                Repeatercollege2.Visible = false;
                Repeatercollege3.Visible = false;
                Repeatercollege4.Visible = false;
                Repeatercollege6.Visible = false;
            }
            if (Request["show"] == "学院6")
            {
                Link2.Text = ">>学院概况";
                Link2.NavigateUrl = "~/学院概况.aspx";
                Link3.Text = ">>校友联络";
                Link3.NavigateUrl = "~/学院概况.aspx?show=学院6";
                Repeatercollege1.Visible = false;
                Repeatercollege2.Visible = false;
                Repeatercollege3.Visible = false;
                Repeatercollege4.Visible = false;
                Repeatercollege5.Visible = false;
            }
        }
    }
}
