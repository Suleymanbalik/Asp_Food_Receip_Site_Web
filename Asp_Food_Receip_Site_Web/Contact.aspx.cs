using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        protected void ButtonSendMessage_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Table_Message (MessageSender,MessageSubject,MessageMail,MessageIngredients) values (@p1,@p2,@p3,@p4)",Connection.baglanti());
            komut.Parameters.AddWithValue("@p1",TxtMFullName.Text);
            komut.Parameters.AddWithValue("@p2",TxtMSubject.Text);
            komut.Parameters.AddWithValue("@p3",TxtMMailAddress.Text);
            komut.Parameters.AddWithValue("@p4",TxtMMessage.Text);
            komut.ExecuteNonQuery();
            Connection.baglanti().Close();
            Response.Write("Message has been sent");
        }
    }
}