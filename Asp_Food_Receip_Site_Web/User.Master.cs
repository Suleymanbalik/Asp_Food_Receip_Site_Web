﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class User : System.Web.UI.MasterPage
    {
       Sbaglanti_Class Connection = new Sbaglanti_Class();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Table_Category", Connection.baglanti());
            SqlDataReader read = komut.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();

        }
    }
}