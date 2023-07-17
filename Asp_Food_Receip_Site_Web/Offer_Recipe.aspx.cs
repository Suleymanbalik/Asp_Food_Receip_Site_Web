using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class Offer_Recipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Sbaglanti_Class Connection = new Sbaglanti_Class();
        protected void ButtonOffer_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Table_Recipe (RecipeName,RecipeIngredients,RecipeRoute,RecipePic,RecipeOwner,RecipeOwnerMail) values (@p1,@p2,@p3,@p4,@p5,@p6)", Connection.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtRecipeName.Text);
            komut.Parameters.AddWithValue("@p2", TxtRecipeIngredients.Text);
            komut.Parameters.AddWithValue("@p3", TxtMake.Text);
            komut.Parameters.AddWithValue("@p4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", TxtWhoOffer.Text);
            komut.Parameters.AddWithValue("@p6", TxtMail.Text);
            komut.ExecuteNonQuery();
            Connection.baglanti().Close();
            Response.Write("Your recipe has been saved!"); // neesage box gibi düşün bunu
        }
    }
}