using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AdminMessage : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

            SqlCommand komut1 = new SqlCommand("select * from Table_Message", Connection.baglanti());
            SqlDataReader read1= komut1.ExecuteReader();
            DataList1.DataSource = read1;
            DataList1.DataBind();

            
        }
    }
}