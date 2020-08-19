using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Billing_App
{
    public partial class productdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form1.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = "Data Source=.\\SqlExpress;initial catalog=db1;integrated security=true";
            con.Open();

            System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand();
            com.Connection = con;
            com.CommandText = "select count(*)+1 from PRODUCTS";
            object PCODE = com.ExecuteScalar();

            com.CommandText = "Insert into  PRODUCTS values(@p1,@p2,@p3,@p4)";
            com.Parameters.AddWithValue("p1", PCODE);
            com.Parameters.AddWithValue("p2", TextBox1.Text);
            com.Parameters.AddWithValue("p3", TextBox3.Text);
            com.Parameters.AddWithValue("p4", DropDownList1.Text);
         

            com.ExecuteNonQuery();
            com.Parameters.Clear();
            TextBox1.Text = "";
          
           
            TextBox3.Text = "";
           
            
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("productdetails.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";


            TextBox3.Text = "";

        }
    }
}