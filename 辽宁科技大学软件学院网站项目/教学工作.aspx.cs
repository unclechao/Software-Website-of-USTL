using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 辽宁科技大学软件学院网站项目
{
    public partial class 教学工作 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //通过地址栏传递参数，使得实验室介绍页面navigate标签下的二级标签实现导航控制页面内容
            Link1.Text = "网站首页";
            Link1.NavigateUrl = "~/rjxy.aspx";
            if (Request["show"] == "教学0" || Request["show"] == null)
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
            }
            if (Request["show"] == "教学1")
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
                Link3.Text = ">>教学通知";
                Link3.NavigateUrl = "~/教学工作.aspx?show=教学1";
                Repeaterteach2.Visible = false;
                Repeaterteach3.Visible = false;
                Repeaterteach4.Visible = false;
                Repeaterteach5.Visible = false;
                Repeaterteach6.Visible = false;
                Repeaterteach7.Visible = false;
                Repeaterteach8.Visible = false;
            }
            if (Request["show"] == "教学2")
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
                Link3.Text = ">>本科教学";
                Link3.NavigateUrl = "~/教学工作.aspx?show=教学2";
                Repeaterteach1.Visible = false;
                Repeaterteach3.Visible = false;
                Repeaterteach4.Visible = false;
                Repeaterteach5.Visible = false;
                Repeaterteach6.Visible = false;
                Repeaterteach7.Visible = false;
                Repeaterteach8.Visible = false;
            }
            if (Request["show"] == "教学3")
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
                Link3.Text = ">>研究生教学";
                Link3.NavigateUrl = "~/教学工作.aspx?show=教学3";
                Repeaterteach1.Visible = false;
                Repeaterteach2.Visible = false;
                Repeaterteach4.Visible = false;
                Repeaterteach5.Visible = false;
                Repeaterteach6.Visible = false;
                Repeaterteach7.Visible = false;
                Repeaterteach8.Visible = false;
            }
            if (Request["show"] == "教学4")
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
                Link3.Text = ">>软件工程系";
                Link3.NavigateUrl = "~/教学工作.aspx?show=教学4";
                Repeaterteach1.Visible = false;
                Repeaterteach2.Visible = false;
                Repeaterteach3.Visible = false;
                Repeaterteach5.Visible = false;
                Repeaterteach6.Visible = false;
                Repeaterteach7.Visible = false;
                Repeaterteach8.Visible = false;
            }
            if (Request["show"] == "教学5")
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
                Link3.Text = ">>网络工程系";
                Link3.NavigateUrl = "~/教学工作.aspx?show=教学5";
                Repeaterteach1.Visible = false;
                Repeaterteach2.Visible = false;
                Repeaterteach3.Visible = false;
                Repeaterteach4.Visible = false;
                Repeaterteach6.Visible = false;
                Repeaterteach7.Visible = false;
                Repeaterteach8.Visible = false;
            }
            if (Request["show"] == "教学6")
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
                Link3.Text = ">>工程应用系";
                Link3.NavigateUrl = "~/教学工作.aspx?show=教学6";
                Repeaterteach1.Visible = false;
                Repeaterteach2.Visible = false;
                Repeaterteach3.Visible = false;
                Repeaterteach4.Visible = false;
                Repeaterteach5.Visible = false;
                Repeaterteach7.Visible = false;
                Repeaterteach8.Visible = false;
            }
            if (Request["show"] == "教学7")
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
                Link3.Text = ">>计算中心";
                Link3.NavigateUrl = "~/教学工作.aspx?show=教学7";
                Repeaterteach1.Visible = false;
                Repeaterteach2.Visible = false;
                Repeaterteach3.Visible = false;
                Repeaterteach4.Visible = false;
                Repeaterteach5.Visible = false;
                Repeaterteach6.Visible = false;
                Repeaterteach8.Visible = false;
            }
            if (Request["show"] == "教学8")
            {
                Link2.Text = ">>教学工作";
                Link2.NavigateUrl = "~/教学工作.aspx";
                Link3.Text = ">>资料下载";
                Link3.NavigateUrl = "~/教学工作.aspx?show=教学8";
                Repeaterteach1.Visible = false;
                Repeaterteach2.Visible = false;
                Repeaterteach3.Visible = false;
                Repeaterteach4.Visible = false;
                Repeaterteach5.Visible = false;
                Repeaterteach6.Visible = false;
                Repeaterteach7.Visible = false;
            }
        }
    }
}
