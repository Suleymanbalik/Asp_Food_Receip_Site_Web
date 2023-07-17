using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Asp_Food_Receip_Site_Web
{
    public partial class FoodDetail : System.Web.UI.Page
    {

        Sbaglanti_Class Connection = new Sbaglanti_Class();
        string foodid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            foodid = Request.QueryString["FoodID"];
            SqlCommand komut = new SqlCommand("select FoodName from Table_Food where FoodID=@p1", Connection.baglanti());
            komut.Parameters.AddWithValue("@p1", foodid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            Connection.baglanti().Close();

            // Yorumları listeleme


            SqlCommand komut2 = new SqlCommand("select * from Table_Comment where CommentFoodID=@t1", Connection.baglanti());
            komut2.Parameters.AddWithValue("@t1", foodid);
            SqlDataReader rd2 = komut2.ExecuteReader();
            DataList2.DataSource = rd2;
            DataList2.DataBind();
        }

        protected void ButtonAddComment_Click(object sender, EventArgs e)         
        {
            foodid = Request.QueryString["FoodID"];
            SqlCommand komut3 = new SqlCommand("insert into Table_Comment (CommentNameSurname,CommentMail,CommentIngredient,CommentFoodID) values (@p1,@p1,@p3,@p4)",Connection.baglanti());
            komut3.Parameters.AddWithValue("@p1",TxtCommentFullName.Text);
            komut3.Parameters.AddWithValue("@p2",TxtCommentMail.Text);
            komut3.Parameters.AddWithValue("@p3", TxtCommentComment.Text);
            komut3.Parameters.AddWithValue("@p4", foodid);
            komut3.ExecuteNonQuery();
            Connection.baglanti().Close();
            Response.Write("Comment Added!");
        }
    }
}