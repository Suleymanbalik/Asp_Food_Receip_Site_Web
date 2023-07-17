using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminCommentEdit : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        string idcomment = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            idcomment = Request.QueryString["CommentID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut1 = new SqlCommand("select CommentNameSurname,CommentMail,CommentIngredient,FoodName from Table_Comment inner join Table_Food  on Table_Comment.CommentFoodID=Table_Food.FoodID where CommentID=@p1", Connection.baglanti());
                komut1.Parameters.AddWithValue("@p1", idcomment);
                SqlDataReader read = komut1.ExecuteReader();
                while (read.Read())
                {
                    TxtCommentatorName.Text = read[0].ToString();
                    TxtCommentatorAddress.Text = read[1].ToString();
                    TxtCommentatorComment.Text = read[2].ToString();
                    TxtCommentatorOfferMeal.Text = read[3].ToString();
                }
                Connection.baglanti().Close();
            }
           

        }

        protected void ApproveComment_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Update Table_Comment set CommentStatus=@p1,CommentIngredient=@p2 where CommentID=@p3", Connection.baglanti());
            komut2.Parameters.AddWithValue("@p1", true);
            komut2.Parameters.AddWithValue("@p2",TxtCommentatorComment.Text);
            komut2.Parameters.AddWithValue("@p3", idcomment);
            komut2.ExecuteNonQuery();
            Connection.baglanti().Close();
        }
    }
}