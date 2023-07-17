using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminOfferEdit : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        string idrecipe = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            idrecipe = Request.QueryString["RecipeID"];

            if (Page.IsPostBack == false )
            {
                SqlCommand komut1 = new SqlCommand("select * from Table_Recipe where RecipeID=@p1", Connection.baglanti());
                komut1.Parameters.AddWithValue("@p1", idrecipe);
                SqlDataReader read1 = komut1.ExecuteReader();
                while (read1.Read()) 
                {
                    TxtRecipeName.Text = read1[1].ToString();
                    TxtRecipeIngredients.Text = read1[2].ToString();
                    TxtRecipeRoute.Text = read1[3].ToString();
                    TxtRecipeOwnerMail.Text = read1[6].ToString();
                    TxtRecipeOwner.Text = read1[5].ToString();
                }
                Connection.baglanti().Close();

            }

            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("select * from Table_Category", Connection.baglanti());
                SqlDataReader read2 =komut2.ExecuteReader();
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";

                DropDownList1.DataSource = read2;
                DropDownList1.DataBind();

                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            // Durum Guncelleme
            SqlCommand komut3 = new SqlCommand("Update Table_Recipe set RecipeStatus=1 where RecipeID=@p1", Connection.baglanti());
            komut3.Parameters.AddWithValue("@p1", idrecipe);
            komut3.ExecuteNonQuery();
            Connection.baglanti().Close();


            // yemek ekleme Table_Food a
            SqlCommand komut4 = new SqlCommand("insert into Table_Food (FoodName,FoodIngredients,FoodRecipe,FoodCategoriID) values (@p1,@p2,@p3,@p4)", Connection.baglanti());
            komut4.Parameters.AddWithValue("@p1",TxtRecipeName.Text);
            komut4.Parameters.AddWithValue("@p2", TxtRecipeIngredients.Text);
            komut4.Parameters.AddWithValue("@p3",TxtRecipeRoute.Text);
            komut4.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut4.ExecuteNonQuery();
            Connection.baglanti().Close();
        }
    }
}