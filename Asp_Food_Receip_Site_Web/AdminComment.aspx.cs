using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminComment : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            // onaylı yoru listesi
            SqlCommand komut1 = new SqlCommand("select * from Table_Comment where  CommentStatus=1", Connection.baglanti());
            SqlDataReader read1 = komut1.ExecuteReader();
            DataList1.DataSource = read1;
            DataList1.DataBind();

            // onaylamayı bekleyen yorum listesi
            SqlCommand komut2 = new SqlCommand("select * from Table_Comment  where CommentStatus =0", Connection.baglanti());
            SqlDataReader read2 = komut2.ExecuteReader();
            DataList2.DataSource = read2;
            DataList2.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}