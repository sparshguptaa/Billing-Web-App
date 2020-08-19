using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Billing_App
{
    public partial class partydetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
            con.ConnectionString = "Data Source=.\\SqlExpress;initial catalog=db1;integrated security=true";
            con.Open();

            System.Data.SqlClient.SqlCommand com = new System.Data.SqlClient.SqlCommand();
            com.Connection = con;
            com.CommandText = "select count(*)+1 from parties";
            object PID = com.ExecuteScalar();

            com.CommandText = "Insert into  parties values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)";
            com.Parameters.AddWithValue("p1", PID);
            com.Parameters.AddWithValue("p2", TextBox1.Text);
            com.Parameters.AddWithValue("p3", TextBox6.Text);
            com.Parameters.AddWithValue("p4", TextBox2.Text);
            com.Parameters.AddWithValue("p5", DropDownList1.Text);
            com.Parameters.AddWithValue("p6", TextBox4.Text);
            com.Parameters.AddWithValue("p7", TextBox5.Text);
           
            com.ExecuteNonQuery();
            com.Parameters.Clear();
            TextBox1.Text = "";
            TextBox2.Text = "";
           // DropDownlist1.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
          //  TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form1.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("partydetails.aspx");
        }
    }
}