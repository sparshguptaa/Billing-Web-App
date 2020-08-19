using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Billing_App
{
    public partial class FinanacialYear : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = "Data Source=.\\SqlExpress;initial catalog=db1;integrated security=true";
            System.Data.SqlClient.SqlDataReader dr;
            con.Open();

            System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand();
            com.Connection = con;
            com.CommandText = "Select * from FinancialYears";
            dr = com.ExecuteReader();
            dr.Close();
            com.CommandText = "Select YearCode from FinancialYears where fyear=@p1";
            com.Parameters.AddWithValue("p1", DropDownList1.SelectedItem.ToString());
            object a = com.ExecuteScalar(); 
            com.Parameters.Clear();
            com.CommandText = "Update activeyear set yearcode=@p1";
            com.Parameters.AddWithValue("p1", a);
            com.ExecuteNonQuery();
            Label1.Visible = true;
        }
    }
}