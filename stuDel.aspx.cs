using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stuDel :  System.Web.UI.Page
{
    string stuID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string stuID = Context.Request.QueryString["key"];
            //lbStuDel.Text = "學號: " + stuID;
            txtKey.Text = stuID;
            txtKey.ReadOnly = true;
            ShowDelData(stuID);
        }
    }

    string mySqlString, myID;
    protected void ShowDelData(string ID)
    {
        try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            mySqlString = "SELECT  ";
            mySqlString += " * "; 
            mySqlString += " FROM " + "tbStudent ";
            mySqlString += " Where  [學號] = '" + ID + "'";

            cn.Open();
            SqlCommand cmd = new SqlCommand(mySqlString, cn);
            cmd.CommandText = mySqlString;
            SqlDataReader dr = cmd.ExecuteReader();

            lbStuDel.Text = "<table>  <tr>";
            lbStuDel.Text += "<th> 欄位名稱 </th>";
            lbStuDel.Text += "<th> 內容 </th>";
            lbStuDel.Text += "</tr>";

            while (dr.Read())
            {
                lbStuDel.Text += "<tr><td>學號:</td><td>" + dr["學號"] + "</td></tr>";
                lbStuDel.Text += "<tr><td>系級:</td><td>" + dr["系級"] + "</td></tr>";
                lbStuDel.Text += "<tr><td>姓名:</td><td>" + dr["姓名"] + "</td></tr>";
                lbStuDel.Text += "<tr><td>Email2:</td><td>" + dr["Email2"] + "</td></tr>";

            }
            lbStuDel.Text += "</table>";
            cn.Close();
            dr.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message + "<BR />" + mySqlString);
        }
    }

    protected void DelData()
    {
        try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            mySqlString = "DELETE  FROM " + "tbStudent ";
            mySqlString += " Where  [學號] = '" + txtKey.Text.Trim() + "'";
            cn.Open();
            SqlCommand cmd = new SqlCommand(mySqlString, cn);
            cmd.CommandText = mySqlString;
            cmd.ExecuteNonQuery();
            cn.Close();

            Response.Redirect("members.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message + "<br />" + mySqlString);
        }
    }

    protected void btStuDel_Click(object sender, EventArgs e)
    {
        DelData();
    }

    protected void BackToMembers(object sender, EventArgs e)
    {
        Response.Redirect("members.aspx");
    }
}