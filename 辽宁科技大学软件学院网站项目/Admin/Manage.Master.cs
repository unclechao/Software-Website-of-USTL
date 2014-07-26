using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 辽宁科技大学软件学院网站项目.Admin
{
    public partial class Manage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //验证是否已经登陆
            Object obj = Session["IsLogin"];
            if (obj == null || Convert.ToBoolean(obj) == false)  //管理员未进行登录
            {
                Response.Redirect("ad_login.aspx");
            }
            else
            {
                Session.Timeout = 30;    //设置session的有效期限
            }
        }
    }
}
