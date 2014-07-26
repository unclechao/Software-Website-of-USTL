﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using 辽宁科技大学软件学院网站项目.DAL.NewsTableAdapters;

namespace 辽宁科技大学软件学院网站项目
{
    public partial class show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //通过地址栏传参使show页面显示用户请求页面
                int id = Convert.ToInt32(Request["Id"]);
                T_NewsTableAdapter adapter = new T_NewsTableAdapter();
                var table=adapter.GetDataById(id);
                if (table.Count < 1)
                {
                    Response.Redirect("rjxy.aspx");  
                }
                else
                {
                    //数据绑定到show页面
                    var news = table.Single();
                    LiteralTittle.Text = news.Tittle;
                    LiteralCreatTime.Text = news.CreatDate.ToShortDateString();
                    LiteralMainContent.Text = news.MainContent;                  
                }
                //通过地址栏传参使show页面navigate下显示“您当前所在位置”    重复性代码极多，效率极低
                Link1.Text = "网站首页";
                Link1.NavigateUrl = "~/rjxy.aspx";
                if (Convert.ToString(Request["from"]) == "homenews")
                {
                    Link2.Text = ">>最新新闻";
                }
                if (Convert.ToString(Request["from"]) == "homeinform")
                {
                    Link2.Text = ">>通知公告";
                    Link2.NavigateUrl = "~/通知公告.aspx";
                }
                if (Convert.ToString(Request["type"]) == "下载中心")
                {
                    Link2.Text = ">>下载中心";
                    Link2.NavigateUrl = "~/下载中心.aspx";
                }
                if (Convert.ToString(Request["type"]) == "实验室中心概况")
                {
                    Link2.Text = ">>实验室介绍";
                    Link2.NavigateUrl = "~/实验室介绍.aspx";
                    Link3.Text = ">>实验室中心概况";
                    Link3.NavigateUrl = "~/实验室介绍.aspx?show=实验室1";
                }
                if (Convert.ToString(Request["type"]) == "实验室开放")
                {
                    Link2.Text = ">>实验室介绍";
                    Link2.NavigateUrl = "~/实验室介绍.aspx";
                    Link3.Text = ">>实验室开放";
                    Link3.NavigateUrl = "~/实验室介绍.aspx?show=实验室2";
                }
                if (Convert.ToString(Request["type"]) == "实验室执行计划")
                {
                    Link2.Text = ">>实验室介绍";
                    Link2.NavigateUrl = "~/实验室介绍.aspx";
                    Link3.Text = ">>实验室执行计划";
                    Link3.NavigateUrl = "~/实验室介绍.aspx?show=实验室3";
                }
                if (Convert.ToString(Request["type"]) == "党委工作")
                {
                    Link2.Text = ">>党政工作";
                    Link2.NavigateUrl = "~/党政工作.aspx";
                    Link3.Text = ">>党委工作";
                    Link3.NavigateUrl = "~/党政工作.aspx?show=党政1";
                }
                if (Convert.ToString(Request["type"]) == "行政工作")
                {
                    Link2.Text = ">>党政工作";
                    Link2.NavigateUrl = "~/党政工作.aspx";
                    Link3.Text = ">>行政工作";
                    Link3.NavigateUrl = "~/党政工作.aspx?show=党政2";
                }
                if (Convert.ToString(Request["type"]) == "工会工作")
                {
                    Link2.Text = ">>党政工作";
                    Link2.NavigateUrl = "~/党政工作.aspx";
                    Link3.Text = ">>工会工作";
                    Link3.NavigateUrl = "~/党政工作.aspx?show=党政3";
                }
                if (Convert.ToString(Request["type"]) == "师资概况")
                {
                    
                    Link2.Text = ">>师资队伍";
                    Link2.NavigateUrl = "~/师资队伍.aspx";
                    Link3.Text = ">>师资概况";
                    Link3.NavigateUrl = "~/师资队伍.aspx?show=师资1";
                }
                if (Convert.ToString(Request["type"]) == "教授简介")
                {
                    
                    Link2.Text = ">>师资队伍";
                    Link2.NavigateUrl = "~/师资队伍.aspx";
                    Link3.Text = ">>教授简介";
                    Link3.NavigateUrl = "~/师资队伍.aspx?show=师资2";
                }
                if (Convert.ToString(Request["type"]) == "教师简介")
                {
                   
                    Link2.Text = ">>师资队伍";
                    Link2.NavigateUrl = "~/师资队伍.aspx";
                    Link3.Text = ">>教师简介";
                    Link3.NavigateUrl = "~/师资队伍.aspx?show=师资3";
                }
                if (Convert.ToString(Request["type"]) == "研究方向")
                {
                    Link2.Text = ">>学术科研";
                    Link2.NavigateUrl = "~/学术科研.aspx";
                    Link3.Text = ">>研究方向";
                    Link3.NavigateUrl = "~/学术科研.aspx?show=学术1";
                }
                if (Convert.ToString(Request["type"]) == "科研成果")
                {
                    Link2.Text = ">>学术科研";
                    Link2.NavigateUrl = "~/学术科研.aspx";
                    Link3.Text = ">>科研成果";
                    Link3.NavigateUrl = "~/学术科研.aspx?show=学术2";
                }
                if (Convert.ToString(Request["type"]) == "主要著作")
                {
                    Link2.Text = ">>学术科研";
                    Link2.NavigateUrl = "~/学术科研.aspx";
                    Link3.Text = ">>主要著作";
                    Link3.NavigateUrl = "~/学术科研.aspx?show=学术3";
                }
                if (Convert.ToString(Request["type"]) == "推广项目")
                {
                    Link2.Text = ">>学术科研";
                    Link2.NavigateUrl = "~/学术科研.aspx";
                    Link3.Text = ">>推广项目";
                    Link3.NavigateUrl = "~/学术科研.aspx?show=学术4";
                }
                if (Convert.ToString(Request["type"]) == "学科状况")
                {
                    Link2.Text = ">>学科建设";
                    Link2.NavigateUrl = "~/学科建设.aspx";
                    Link3.Text = ">>学科状况";
                    Link3.NavigateUrl = "~/学科建设.aspx?show=学科1";
                }
                if (Convert.ToString(Request["type"]) == "学位分委员会")
                {
                    Link2.Text = ">>学科建设";
                    Link2.NavigateUrl = "~/学科建设.aspx";
                    Link3.Text = ">>学位分委员会";
                    Link3.NavigateUrl = "~/学科建设.aspx?show=学科2";
                }
                if (Convert.ToString(Request["type"]) == "学位分委员会职责")
                {
                    Link2.Text = ">>学科建设";
                    Link2.NavigateUrl = "~/学科建设.aspx";
                    Link3.Text = ">>学位分委员会职责";
                    Link3.NavigateUrl = "~/学科建设.aspx?show=学科3";
                }
                if (Convert.ToString(Request["type"]) == "学院简介")
                {
                    Link2.Text = ">>学院概况";
                    Link2.NavigateUrl = "~/学院概况.aspx";
                    Link3.Text = ">>学院简介";
                    Link3.NavigateUrl = "~/学院概况.aspx?show=学院1";
                }
                if (Convert.ToString(Request["type"]) == "组织机构")
                {
                    Link2.Text = ">>学院概况";
                    Link2.NavigateUrl = "~/学院概况.aspx";
                    Link3.Text = ">>组织机构";
                    Link3.NavigateUrl = "~/学院概况.aspx?show=学院2";
                }
                if (Convert.ToString(Request["type"]) == "学院风采")
                {
                    Link2.Text = ">>学院概况";
                    Link2.NavigateUrl = "~/学院概况.aspx";
                    Link3.Text = ">>学院风采";
                    Link3.NavigateUrl = "~/学院概况.aspx?show=学院3";
                }
                if (Convert.ToString(Request["type"]) == "现任领导")
                {
                    Link2.Text = ">>学院概况";
                    Link2.NavigateUrl = "~/学院概况.aspx";
                    Link3.Text = ">>现任领导";
                    Link3.NavigateUrl = "~/学院概况.aspx?show=学院4";
                }
                if (Convert.ToString(Request["type"]) == "精品课程")
                {
                    Link2.Text = ">>学院概况";
                    Link2.NavigateUrl = "~/学院概况.aspx";
                    Link3.Text = ">>精品课程";
                    Link3.NavigateUrl = "~/学院概况.aspx?show=学院5";
                }
                if (Convert.ToString(Request["type"]) == "校友联络")
                {
                    Link2.Text = ">>学院概况";
                    Link2.NavigateUrl = "~/学院概况.aspx";
                    Link3.Text = ">>校友联络";
                    Link3.NavigateUrl = "~/学院概况.aspx?show=学院6";
                }
                if (Convert.ToString(Request["type"]) == "教学通知")
                {
                    Link2.Text = ">>教学工作";
                    Link2.NavigateUrl = "~/教学工作.aspx";
                    Link3.Text = ">>教学通知";
                    Link3.NavigateUrl = "~/教学工作.aspx?show=教学1";
                }
                if (Convert.ToString(Request["type"]) == "本科教学")
                {
                    Link2.Text = ">>教学工作";
                    Link2.NavigateUrl = "~/教学工作.aspx";
                    Link3.Text = ">>本科教学";
                    Link3.NavigateUrl = "~/教学工作.aspx?show=教学2";
                }
                if (Convert.ToString(Request["type"]) == "研究生教学")
                {
                    Link2.Text = ">>教学工作";
                    Link2.NavigateUrl = "~/教学工作.aspx";
                    Link3.Text = ">>研究生教学";
                    Link3.NavigateUrl = "~/教学工作.aspx?show=教学3";
                }
                if (Convert.ToString(Request["type"]) == "软件工程系")
                {
                    Link2.Text = ">>教学工作";
                    Link2.NavigateUrl = "~/教学工作.aspx";
                    Link3.Text = ">>软件工程系";
                    Link3.NavigateUrl = "~/教学工作.aspx?show=教学4";
                }
                if (Convert.ToString(Request["type"]) == "网络工程系")
                {
                    Link2.Text = ">>教学工作";
                    Link2.NavigateUrl = "~/教学工作.aspx";
                    Link3.Text = ">>网络工程系";
                    Link3.NavigateUrl = "~/教学工作.aspx?show=教学5";
                }
                if (Convert.ToString(Request["type"]) == "工程应用系")
                {
                    Link2.Text = ">>教学工作";
                    Link2.NavigateUrl = "~/教学工作.aspx";
                    Link3.Text = ">>工程应用系";
                    Link3.NavigateUrl = "~/教学工作.aspx?show=教学6";
                }
                if (Convert.ToString(Request["type"]) == "计算中心")
                {
                    Link2.Text = ">>教学工作";
                    Link2.NavigateUrl = "~/教学工作.aspx";
                    Link3.Text = ">>计算中心";
                    Link3.NavigateUrl = "~/教学工作.aspx?show=教学7";
                }
                if (Convert.ToString(Request["type"]) == "资料下载")
                {
                    Link2.Text = ">>教学工作";
                    Link2.NavigateUrl = "~/教学工作.aspx";
                    Link3.Text = ">>资料下载";
                    Link3.NavigateUrl = "~/教学工作.aspx?show=教学8";
                }
                if (Convert.ToString(Request["Type"]) == "通知公告")
                {
                    Link2.Text = ">>通知公告";
                    Link2.NavigateUrl = "~/通知公告.aspx";
                }
            }
        }
    }
}
