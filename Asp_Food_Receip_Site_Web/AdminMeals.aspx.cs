using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminMeals : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();

        string idfood = "";
        string process = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            // Yemek Listesi
            SqlCommand komut1 = new SqlCommand("select * from Table_Food",Connection.baglanti());
            SqlDataReader read1 = komut1.ExecuteReader();
            DataList1.DataSource = read1;
            DataList1.DataBind();
            Connection.baglanti().Close();

            // Kategori listsi
            // guncellemelerde alltaki komutu kullan ki çalışsın


            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("select * from Table_Category", Connection.baglanti());
                SqlDataReader read2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";

                DropDownList1.DataSource = read2;
                DropDownList1.DataBind();
            }

            // bu sayfada silem işlemi için page.postbac içine  değişkenleri tanımla
            if (Page.IsPostBack == false)
            {
                idfood = Request.QueryString["FoodID"];
                process = Request.QueryString["process"];
            }

            if (process== "delete")
            {
                SqlCommand komut3 = new SqlCommand("delete from Table_Food where FoodID=@p1", Connection.baglanti());
                komut3.Parameters.AddWithValue("@p1", idfood);
                komut3.ExecuteNonQuery();
                Connection.baglanti().Close();
            }
            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void buttonAdd_Click(object sender, EventArgs e)
        {
            // yemek eklemem kısmı

            SqlCommand komut3 = new SqlCommand("insert into Table_Food (FoodName,FoodIngredients,FoodRecipe,FoodCategoriID) values (@p1,@p2,@p3,@p4)", Connection.baglanti());
            komut3.Parameters.AddWithValue("@p1", TxtMealName.Text);
            komut3.Parameters.AddWithValue("@p2", TxtIngredients.Text);
            komut3.Parameters.AddWithValue("@p3",TxtFoodRecipe.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            Connection.baglanti().Close();
            Response.Write("Meal Added!");

            // yemek ekleyince o kategorideki yemek sayısı artsın kodu
            SqlCommand komut4 = new SqlCommand(" update Table_Category set CategoryAdet=CategoryAdet +1 where CategoryID=@p1", Connection.baglanti());
            komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut4.ExecuteNonQuery();
            Connection.baglanti().Close();
        }
    }
}