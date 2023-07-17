using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminAboutUs : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false)
            {
                SqlCommand komut1 = new SqlCommand("select * from Table_AboutUs", Connection.baglanti());
                komut1.ExecuteNonQuery();
                SqlDataReader read1 = komut1.ExecuteReader();
                while (read1.Read())
                {
                    TextBox1.Text = read1[0].ToString();
                }
            }
            Connection.baglanti().Close();
           
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update Table_AboutUs set AboutUs=@p1", Connection.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut2.ExecuteNonQuery();
            Connection.baglanti().Close();
        }
    }
}