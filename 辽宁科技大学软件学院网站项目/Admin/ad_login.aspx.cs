using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 辽宁科技大学软件学院网站项目.DAL.AdminDataSetTableAdapters;

namespace 辽宁科技大学软件学院网站项目.Admin
{
    public partial class ad_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/rjxy.aspx");
        }

        protected void btn_clear(object sender, EventArgs e)
        {
            txtusername.Text = "";
            txtpassword.Text = "";
            Label.Visible = false;
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            T_AdminInfoTableAdapter adapter = new T_AdminInfoTableAdapter();
            var data=adapter.GetDataByUserName(txtusername.Text);
            if (data.Count < 1)
            {
                Label.Text = "用户名不存在！";
                Label.Visible = true;
            }
            else
            {
                //user exist
                var user = data.Single();
                if (user.Password == txtpassword.Text)
                {
                    Session["IsLogin"] = "true";    //登陆成功创建session
                    Session.Timeout = 30;    //session有效期30分钟
                    Response.Redirect("ad_manage.aspx");  //success,进入后台管理
                }
                else
                {
                    //passwd error
                    Label.Text = "密码错误！";
                    Label.Visible = true;
                }
            }
        }
    }
}
