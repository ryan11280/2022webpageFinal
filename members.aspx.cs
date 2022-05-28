using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    string mySqlString, myCondition;
    protected void ShowData()
    {
        try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            mySqlString = "SELECT TOP 100 ";
            mySqlString += " * "; 
            mySqlString += " FROM " + "tbStudent ";
            myCondition = " [學號] Like '%" + qryStr.Text.Trim() + "%'";
            myCondition += " OR [姓名] Like '%" + qryStr.Text.Trim() + "%'";
            myCondition += " OR [Email2] Like '%" + qryStr.Text.Trim() + "%'";
            mySqlString += " Where " + myCondition;
            Response.Write(mySqlString);

            cn.Open();
            SqlCommand cmd = new SqlCommand(mySqlString, cn);
            cmd.CommandText = mySqlString;

            SqlDataReader dr = cmd.ExecuteReader();

            lbStudents.Text = "<table>  <tr>";
            lbStudents.Text += "<th> 學號</th>";
            lbStudents.Text += "<th> 姓名 </th>";
            lbStudents.Text += "<th> 系級</th>";
            lbStudents.Text += "<th> Email </th>";
            lbStudents.Text += "<th> Email2 </th > ";
            lbStudents.Text += "<th> 修改 </th>";
            lbStudents.Text += "<th> 刪除 </th></tr>";
            string strStuDel = "";
            string strStuUpdate = "修改Link";

            while (dr.Read())
            {
                lbStudents.Text += "<tr><td>" + dr["學號"] + "</td>";
                lbStudents.Text += "<td>" + dr["姓名"] + "</td>";
                lbStudents.Text += "<td>" + dr["系級"] + "</td>";
                lbStudents.Text += "<td>" + dr["Email"] + "</td>";
                lbStudents.Text += "<td>" + dr["Email2"] + "</td>";
                strStuUpdate = "<a href='stuUpdate.aspx'>修改</a>";
                lbStudents.Text += "<td>" + strStuUpdate + "</td>";
                strStuDel = "<a href=stuDel.aspx?key=" + dr["學號"] + ">刪除</a>";
                lbStudents.Text += "<td>" + strStuDel + "</td> </ tr > ";
            }
            lbStudents.Text += "</table>";

            dr.Close();
            cn.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message + "<br />" + mySqlString);
        }
        

    }

    protected void btnQry_Click(object sender, EventArgs e)
    {
        ShowData();
    }

    protected void btnADD_Click(object sender, EventArgs e)
    {
        Response.Redirect("stuADD.aspx");
    }
}