using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlTypes;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class Meal_Of_The_Day : System.Web.UI.Page
    {
        Sbaglanti_Class connection = new Sbaglanti_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Table_Food where FoodStatus=1", connection.baglanti());
            SqlDataReader read = komut.ExecuteReader();
            DataList2.DataSource = read;
            DataList2.DataBind();
        }
    }
}