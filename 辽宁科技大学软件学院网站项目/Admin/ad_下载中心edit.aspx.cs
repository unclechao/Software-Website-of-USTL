using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 辽宁科技大学软件学院网站项目.DAL.NewsTableAdapters;

namespace 辽宁科技大学软件学院网站项目.Admin
{
    public partial class ad_下载中心edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string action = Request["action"];
                if (action == "add")
                {
                    //add news
                }
                else if (action == "edit")
                {
                    //edit exits news
                    //将数据库信息绑定到控件上！
                    int id=Convert.ToInt32( Request["id"]);
                    T_NewsTableAdapter adapter = new T_NewsTableAdapter();
                    var news = adapter.GetDataById(id).Single();
                    txttittle.Text = news.Tittle;
                    txtcontent.Text = news.MainContent;
                    lbtxttypesecond.SelectedValue=news.TypeSecond;
                }
                else
                {
                    throw new Exception();
                }
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string action = Request["action"];
                if (action == "add")
                {
                    //add news to database
                    T_NewsTableAdapter adapter = new T_NewsTableAdapter();
                    adapter.Insert("下载中心", txttittle.Text, txtcontent.Text, DateTime.Now, lbtxttypesecond.SelectedValue);
                }
                else if (action == "edit")
                {
                    int id = Convert.ToInt32(Request["id"]);
                    T_NewsTableAdapter adapter = new T_NewsTableAdapter();
                    var news = adapter.GetDataById(id).Single();
                    news.Type = "下载中心";
                    news.TypeSecond = lbtxttypesecond.SelectedValue;
                    news.Tittle = txttittle.Text;
                    news.MainContent = txtcontent.Text;
                    adapter.Update(news);   //更新数据库
                    
                }
            Response.Redirect("ad_下载中心.aspx");
        }

    }
}
