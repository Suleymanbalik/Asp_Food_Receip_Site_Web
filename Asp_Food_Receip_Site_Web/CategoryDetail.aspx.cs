using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class CategoryDetail : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        string ctgryid = "";
 protected void Page_Load(object sender, EventArgs e)
        {
            ctgryid = Request.QueryString["CategoryID"];
            SqlCommand komut = new SqlCommand("select * from Table_Food where FoodCategoriID=@p1", Connection.baglanti());
            komut.Parameters.AddWithValue("@p1", ctgryid);
            SqlDataReader read = komut.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();
            Connection.baglanti().Close();
            
        }
    }
}