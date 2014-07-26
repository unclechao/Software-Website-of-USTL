﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 辽宁科技大学软件学院网站项目.DAL.NewsTableAdapters;

namespace 辽宁科技大学软件学院网站项目.Admin
{
    public partial class ad_实验室介绍edit : System.Web.UI.Page
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
                    lbtestroom.SelectedValue = news.TypeSecond;
                    txtcontent.Text = news.MainContent;
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
                    adapter.Insert("实验室介绍", txttittle.Text, txtcontent.Text, DateTime.Now, lbtestroom.SelectedValue);
                }
                else if (action == "edit")
                {
                    int id = Convert.ToInt32(Request["id"]);
                    T_NewsTableAdapter adapter = new T_NewsTableAdapter();
                    var news = adapter.GetDataById(id).Single();
                    news.Type = "实验室介绍";
                    news.TypeSecond = lbtestroom.SelectedValue; 
                    news.Tittle = txttittle.Text;
                    news.MainContent = txtcontent.Text;
                    adapter.Update(news);   //更新数据库
                    
                }
            Response.Redirect("ad_实验室介绍.aspx");
        }
    }
}
