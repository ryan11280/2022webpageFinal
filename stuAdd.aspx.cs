using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stuAdd :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string mySqlString;
    protected void btnOK_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString;

            mySqlString = "INSERT INTO tbStudent ([學號],[系級],[姓名],[Email2]) values( ";
            mySqlString += "'" + txtNum.Text + "','" + txtDC.Text + "','" + txtName.Text + "','" + txtEmail2.Text + "')";
            // Response.Write(mySqlString);

            cn.Open();
            SqlCommand cmd = new SqlCommand(mySqlString, cn);
            cmd.CommandText = mySqlString;
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("members.aspx");
        }
        catch (Exception ex)
        { Response.Write(ex.Message + "<br />" + mySqlString); }
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("members.aspx");
    }
}