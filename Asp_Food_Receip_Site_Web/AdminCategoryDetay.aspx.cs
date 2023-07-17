using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminCategoryDetay : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        string idcategory = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            idcategory = Request.QueryString["CategoryID"];

            if (Page.IsPostBack == false)
            {


                SqlCommand komut1 = new SqlCommand("select * from Table_Category where CategoryID=@p1", Connection.baglanti());
                komut1.Parameters.AddWithValue("@p1", idcategory);
                SqlDataReader read = komut1.ExecuteReader();
                while (read.Read())
                {

                    TxtCategoryName.Text = read[1].ToString();
                    TxtNumberOfMeals.Text = read[2].ToString();

                }
                Connection.baglanti().Close();
            }

        }

        protected void ButtonUpdateCategory_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update Table_Category set CategoryName=@p1,CategoryAdet=@p2 where CategoryID=@p3", Connection.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtCategoryName.Text);
            komut2.Parameters.AddWithValue("@p2", TxtNumberOfMeals.Text);
            komut2.Parameters.AddWithValue("@p3", idcategory);
            komut2.ExecuteNonQuery();
            Connection.baglanti().Close();

        }
    }
}