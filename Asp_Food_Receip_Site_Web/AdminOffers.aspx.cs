using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminOffers : System.Web.UI.Page
    {

        Sbaglanti_Class Connection= new Sbaglanti_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("select * from Table_Recipe where RecipeStatus=1", Connection.baglanti());
            SqlDataReader read1 = komut1.ExecuteReader();
           
            DataList1.DataSource = read1;
            DataList1.DataBind();


            SqlCommand komut2 = new SqlCommand("select * from Table_Recipe where RecipeStatus=0", Connection.baglanti());
            SqlDataReader read2 = komut2.ExecuteReader();

            DataList2.DataSource = read2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}