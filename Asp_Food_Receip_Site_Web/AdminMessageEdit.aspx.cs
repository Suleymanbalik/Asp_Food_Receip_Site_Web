using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminMessageEdit : System.Web.UI.Page
    {

        Sbaglanti_Class Connection = new Sbaglanti_Class();
        string idmessage = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            idmessage = Request.QueryString["MessageID"];

            SqlCommand komut2 = new SqlCommand("select * from Table_Message where MessageID=@p1", Connection.baglanti());
            komut2.Parameters.AddWithValue("@p1", idmessage);
            SqlDataReader read2 = komut2.ExecuteReader();
            while (read2.Read())
            {
                TxtMessageSender.Text = read2[1].ToString();
                TxtSubject.Text = read2[2].ToString();
                TxtMailAddress.Text = read2[3].ToString();
                TxtMessage.Text = read2[4].ToString();
            }
            Connection.baglanti().Close();
        }
    }
}