using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 辽宁科技大学软件学院网站项目
{
    public partial class 学科建设 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //通过地址栏传递参数，使得实验室介绍页面navigate标签下的二级标签实现导航控制页面内容
            Link1.Text = "网站首页";
            Link1.NavigateUrl = "~/rjxy.aspx";
            if (Request["show"] == "学科0" || Request["show"] == null)
            {
                Link2.Text = ">>学科建设";
                Link2.NavigateUrl = "~/学科建设.aspx";
            }
            if (Request["show"] == "学科1")
            {
                Link2.Text = ">>学科建设";
                Link2.NavigateUrl = "~/学科建设.aspx";
                Link3.Text = ">>学科状况";
                Link3.NavigateUrl = "~/学科建设.aspx?show=学科1";
                Repeatercourse2.Visible = false;
                Repeatercourse3.Visible = false;
            }
            if (Request["show"] == "学科2")
            {
                Link2.Text = ">>学科建设";
                Link2.NavigateUrl = "~/学科建设.aspx";
                Link3.Text = ">>学位分委员会";
                Link3.NavigateUrl = "~/学科建设.aspx?show=学科2";
                Repeatercourse1.Visible = false;
                Repeatercourse3.Visible = false;
            }
            if (Request["show"] == "学科3")
            {
                Link2.Text = ">>学科建设";
                Link2.NavigateUrl = "~/学科建设.aspx";
                Link3.Text = ">>学位分委员会职责";
                Link3.NavigateUrl = "~/学科建设.aspx?show=学科3";
                Repeatercourse1.Visible = false;
                Repeatercourse2.Visible = false;
            }
        }
    }
}
