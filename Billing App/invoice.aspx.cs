using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Billing_App
{
    public partial class invoice : System.Web.UI.Page
    {
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection();
        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlDataReader dr;
        DataSet1 ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "data source=.\\sqlexpress;initial catalog=db1;integrated security=true";
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select count(*)+1 from invoices";
            object o = cmd.ExecuteScalar();
            Label8.Text = o.ToString();
            DateTime dt = DateTime.Now;
            Label9.Text = dt.ToString("dd-MM-yyyy");
            if (!IsPostBack)
            {
                ds = new DataSet1();
                Session.Add("ds", ds);
            }
            else
            {
                ds = (DataSet1)Session["ds"];
            }
            GridView1.DataSource = ds.invoiceitems;
            cmd.CommandText = "select * from Activeyear";
            object b = cmd.ExecuteScalar();

            cmd.CommandText = "select fyear from financialyears where yearcode=@p1";
            cmd.Parameters.AddWithValue("p1", b);
            object c = cmd.ExecuteScalar();
            Label15.Text = c.ToString();
            cmd.Parameters.Clear();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Form1.aspx");
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {
            cmd.CommandText = "select count(*)+1 from invoices";
            object o = cmd.ExecuteScalar();
            Session.Add("InvoiceNo", o);
            double d1 = Convert.ToDouble(TextBox10.Text);
            double d2 = Convert.ToDouble(TextBox12.Text);
            double d3 = d1 * d2;
            TextBox13.Text = d3.ToString();
            Label6.Text = d3.ToString();
            Label13.Text = d3.ToString();
            System.Data.DataRow dr = ds.invoiceitems.NewRow();//data set me value save ki
            dr[0] = o.ToString();
            dr[1] = TextBox7.Text;
            dr[2] = TextBox8.Text;
            dr[3] = TextBox9.Text;
            dr[4] = TextBox10.Text;
            dr[5] = TextBox11.Text;
            dr[6] = TextBox12.Text;
            dr[7] = TextBox13.Text;
            ds.invoiceitems.Rows.Add(dr);
            GridView1.DataBind();
            cmd.CommandText = "insert into invoiceitems values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)";//dataset ki value db me save kari
            cmd.Parameters.AddWithValue("p1", o);
            cmd.Parameters.AddWithValue("p2", TextBox7.Text);
            cmd.Parameters.AddWithValue("p3", TextBox8.Text);
            cmd.Parameters.AddWithValue("p4", TextBox9.Text);
            cmd.Parameters.AddWithValue("p5", TextBox10.Text);
            cmd.Parameters.AddWithValue("p6", TextBox11.Text);
            cmd.Parameters.AddWithValue("p7", TextBox12.Text);
            cmd.Parameters.AddWithValue("p8", TextBox13.Text);
            cmd.ExecuteNonQuery();//agar yaha problem hui to db me datatype ki problem hogi

            cmd.Parameters.Clear();
            double d4 = Convert.ToDouble(TextBox13.Text) + Convert.ToDouble(Label1.Text);
            Label1.Text = d4.ToString("F2");
            Label6.Text = Label1.Text;
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox7.Focus();

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from parties where partyname=@p1";  //partdetails se value baaki textbox me dalna
            cmd.Parameters.AddWithValue("p1", TextBox4.Text);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox6.Text = dr["address"].ToString();
                Label10.Text = dr["gstin"].ToString();
                Label11.Text = dr["state"].ToString();
                if (Label10.Text != "")
                    Label12.Text = dr["GSTIN"].ToString().Substring(0, 2);
            }
            else
            {
                TextBox6.Text = "";
                Label10.Text = "";
                Label11.Text = "";
                Label12.Text = "";
            }
            cmd.Parameters.Clear();
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            cmd.CommandText = "select * from products where pname=@p1";
            cmd.Parameters.AddWithValue("p1", TextBox7.Text);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox8.Text = dr["HSNCODE"].ToString();
                TextBox11.Text = dr["UOM"].ToString();
            }
            dr.Close();
            cmd.Parameters.Clear();
           // TextBox9.Focus();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         //   Label8.Text = "";
         //   Label9.Text = "";
         //   TextBox1.Text = "";
         // //  TextBox2.Text = "";
         // //  CheckBox1.Checked ? 1 : 0 = "";
         //   TextBox3.Text = "";
         ////   pid = "";
         //   TextBox14.Text = "";
         //   TextBox15.Text = "";
         ////   TextBox16.Text = "";
         //   TextBox17.Text = "";
         //   Label1.Text = "";
         //   Label2.Text = "";
         //   Label3.Text = "";
         //   Label5.Text = "";
         //   Label4.Text = "";
         //   Label13.Text = "";
         //   TextBox23.Text = "";
         //   Label6.Text = "";
         //   TextBox24.Text = "";
         //   TextBox5.Text = "";
         //   TextBox25.Text = "";
         //   TextBox18.Text = "";
         //   Label14.Visible = false;
         //   Button1.Visible = true;
            Response.Redirect("invoice.aspx");

        }

        protected void TextBox19_TextChanged(object sender, EventArgs e)
        {
            if (TextBox19.Text != "")
            {
                double d1 = Convert.ToDouble(Label1.Text);
                double d2 = d1 * (Convert.ToDouble(TextBox19.Text) / 100);
                Label2.Text = d2.ToString();
                double d3 = d1 - d2;
                Label6.Text = d3.ToString();
            }
            else
            {
                Label2.Text = "0.00";
            }
        }

        protected void TextBox20_TextChanged(object sender, EventArgs e)
        {
            if (TextBox20.Text != "")
            {
            double d1 = Convert.ToDouble(Label1.Text);
                double d2 = Convert.ToDouble(Label2.Text);
                double d3 = d1 - d2;
                double d4 = d3 * (Convert.ToDouble(TextBox20.Text) / 100);
                Label3.Text = d4.ToString();
                double d5 = d1 + d2 + d4;
                Label6.Text = d5.ToString();
            }
            else
            {
                Label3.Text = "0.00";
            }
        }

        protected void TextBox21_TextChanged(object sender, EventArgs e)
        {
            if (TextBox21.Text != "")
            {
                double d1 = Convert.ToDouble(Label1.Text);
                double d2 = Convert.ToDouble(Label2.Text);
                double d3 = d1 - d2;
                double d4 = d3 * (Convert.ToDouble(TextBox21.Text) / 100);
                Label4.Text = d4.ToString();
                double d5 = d1 + d2 + Convert.ToDouble(Label3.Text) + d4;
                Label6.Text = d5.ToString();
            }
            else
            {
                Label4.Text = "0.00";
            }
        }

        protected void TextBox22_TextChanged(object sender, EventArgs e)
        {
            if (TextBox22.Text != "")
            {
                double d1 = Convert.ToDouble(Label1.Text);
                double d2 = Convert.ToDouble(Label2.Text);
                double d3 = d1 - d2;
                double d4 = d3 * (Convert.ToDouble(TextBox22.Text) / 100);
                Label5.Text = d4.ToString();
                double d5 = d1 + d2 + Convert.ToDouble(Label3.Text) + Convert.ToDouble(Label4.Text) + d4;
                Label6.Text = d5.ToString();
            }
            else
            {
                Label5.Text = "0.00";
            }
        }

        protected void TextBox23_TextChanged(object sender, EventArgs e)
        {
            if (TextBox23.Text != "")
            {
                double d1 = Convert.ToDouble(TextBox23.Text) + Convert.ToDouble(Label6.Text);
                Label6.Text = d1.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlTransaction tr;
            tr = con.BeginTransaction();
            cmd.Transaction = tr;


            cmd.CommandText = "SELECT COUNT(*)+1 FROM INVOICES";
            object id = cmd.ExecuteScalar();
            cmd.CommandText = "SELECT PID FROM PArties where partyname=@p1";
            cmd.Parameters.AddWithValue("p1", TextBox4.Text);
            object pid = cmd.ExecuteScalar();
            cmd.Parameters.Clear();
            cmd.CommandText = "Insert into invoices values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11,@p12,@p13,@p14,@p15,@p16,@p17,@p18,@p19,@p20,@p21,@p22,@p23,@p24)";
            cmd.Parameters.AddWithValue("p1", id);
            cmd.Parameters.AddWithValue("p2", Label8.Text);
            cmd.Parameters.AddWithValue("p3", Label9.Text);
            cmd.Parameters.AddWithValue("p4", TextBox1.Text);
            cmd.Parameters.AddWithValue("p5", TextBox2.Text);
            cmd.Parameters.AddWithValue("p6", CheckBox1.Checked ? 1 : 0);
            cmd.Parameters.AddWithValue("p7", TextBox3.Text);
            cmd.Parameters.AddWithValue("p8", pid);
            cmd.Parameters.AddWithValue("p9", TextBox14.Text);
            cmd.Parameters.AddWithValue("p10", TextBox15.Text);
            cmd.Parameters.AddWithValue("p11", TextBox16.Text);
            cmd.Parameters.AddWithValue("p12", TextBox17.Text);
            cmd.Parameters.AddWithValue("p13", Label1.Text);
            cmd.Parameters.AddWithValue("p14", Label2.Text);
            cmd.Parameters.AddWithValue("p15", Label3.Text);
            cmd.Parameters.AddWithValue("p16", Label5.Text);
            cmd.Parameters.AddWithValue("p17", Label4.Text);
            cmd.Parameters.AddWithValue("p18", Label13.Text);
            cmd.Parameters.AddWithValue("p19", TextBox23.Text);
            cmd.Parameters.AddWithValue("p20", Label6.Text);
            cmd.Parameters.AddWithValue("p21", TextBox24.Text);
            cmd.Parameters.AddWithValue("p22", TextBox5.Text);
            cmd.Parameters.AddWithValue("p23", TextBox25.Text);
            cmd.Parameters.AddWithValue("p24", TextBox18.Text);
           


            cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();
            Label14.Visible = true;
            Button1.Visible = false;
           
            tr.Commit();
            
        }

        protected void TextBox24_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("database.aspx");
        }
    }
}