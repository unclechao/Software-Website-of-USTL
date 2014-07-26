using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 辽宁科技大学软件学院网站项目.Admin
{
    public partial class ad_manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //验证是否已经登陆
            Object obj = Session["IsLogin"];
            if (obj == null || Convert.ToBoolean(obj) == false)
            {
                 Response.Redirect("ad_login.aspx");
            }
        }
    }
}
