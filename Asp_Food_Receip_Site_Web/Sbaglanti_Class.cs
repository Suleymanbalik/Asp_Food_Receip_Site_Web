using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public class Sbaglanti_Class
    {
        public SqlConnection baglanti ()
        {
            SqlConnection Conncetion = new SqlConnection(@"Data Source=DESKTOP-FJEHAAO\SQLEXPRESS;Initial Catalog=Db_Asp_Net_Yemek_Sitesi;Integrated Security=True");
            Conncetion.Open ();
            return Conncetion;
        }
    }
}