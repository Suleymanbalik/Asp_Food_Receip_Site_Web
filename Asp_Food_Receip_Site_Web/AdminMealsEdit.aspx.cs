using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminMealsEdit : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        string idfood = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            // verileri veri tabanından FoodID kullanarak burdaki txtbox lara çekme
            idfood = Request.QueryString["FoodID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select * from Table_Food where FoodID=@p1", Connection.baglanti());
                komut1.Parameters.AddWithValue("@p1", idfood);
                SqlDataReader read1 = komut1.ExecuteReader();
                while (read1.Read())
                {
                    TxtMealName.Text = read1[1].ToString();
                    TxtMealIngredients.Text = read1[2].ToString();
                    TxtMealRecipe.Text = read1[3].ToString();
                }

                Connection.baglanti().Close();
            }


            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("select * from Table_Category", Connection.baglanti());
                SqlDataReader read2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";
                DropDownList1.DataSource = read2;
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/FoodImages/" + FileUpload1.FileName));

            SqlCommand komut3 = new SqlCommand(" Update Table_Food set FoodName=@p1,FoodIngredients=@p2,FoodRecipe=@p3,FoodCategoriID=@p4, FoodImage=@p6 where FoodID=@p5", Connection.baglanti());
            komut3.Parameters.AddWithValue("@p1", TxtMealName.Text);
            komut3.Parameters.AddWithValue("@p2", TxtMealIngredients.Text);
            komut3.Parameters.AddWithValue("@p3", TxtMealRecipe.Text);
            komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut3.Parameters.AddWithValue("@p6", "~/FoodImages/" + FileUpload1.FileName);
            komut3.Parameters.AddWithValue("@p5", idfood);

            komut3.ExecuteNonQuery();
            Connection.baglanti().Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            // tum yemeklerin durumunu false yapar
            SqlCommand komut4 = new SqlCommand("Update Table_Food set FoodStatus=0", Connection.baglanti());
            komut4.ExecuteNonQuery();
            Connection.baglanti().Close();

            // istenilen emeği true yapar FoodID ye göre

            SqlCommand komut5 = new SqlCommand("Update Table_Food set FoodStatus=1 where FoodID=@p1", Connection.baglanti());
            komut5.Parameters.AddWithValue("@p1", idfood);
            komut5.ExecuteNonQuery();
            Connection.baglanti().Close();
        }
    }
}