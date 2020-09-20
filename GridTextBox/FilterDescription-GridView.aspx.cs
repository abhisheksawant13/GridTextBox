using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.WebSockets;

namespace GridTextBox
{
    public partial class FilterDescription_GridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainConn = ConfigurationManager.ConnectionStrings["TestTableConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainConn);
            string sqlquery = "select * from ITEM_DATA";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery,sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            SqlDataAdapter sdr = new SqlDataAdapter(sqlcomm);
            sdr.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void buttonSearch_Click(object sender, EventArgs e)
        {
            string mainConn = ConfigurationManager.ConnectionStrings["TestTableConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainConn);
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand();
            string sqlquery = "select * from ITEM_DATA where [Description] like '%'+@Description+'%'";
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = sqlconn;
            sqlcomm.Parameters.AddWithValue("Description", descSearch.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
                
        }

        protected void descSearch_TextChanged(object sender, EventArgs e)
        {
            string mainConn = ConfigurationManager.ConnectionStrings["TestTableConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainConn);
            string sqlquery = "select * from ITEM_DATA where [Description] like '"+descSearch.Text+"%'";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            DataTable dt = new DataTable();
            SqlDataAdapter sdr = new SqlDataAdapter(sqlcomm);
            sdr.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void RateChanged(object sender, EventArgs e)
        {
            string mainConn = ConfigurationManager.ConnectionStrings["TestTableConnectionString"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainConn);
            string sqlquery = "";
            var optionselected = DropDownList1.Text;
            switch (optionselected)
                {
                case "lessthen":
                    sqlquery = "select * from ITEM_DATA where Rate < 100";
                    break;
                case "between":
                    sqlquery = "select * from ITEM_DATA where Rate between 101 AND 1000";
                    break;
                case "greterthan":
                    sqlquery = "select * from ITEM_DATA where Rate >1001";
                    break;
                case "none":
                    sqlquery = "select * from ITEM_DATA";
                    break;
            }
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            DataTable dt = new DataTable();
            SqlDataAdapter sdr = new SqlDataAdapter(sqlcomm);
            sdr.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}