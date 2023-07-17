using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Asp_Food_Receip_Site_Web
{
    public partial class AddCategory : System.Web.UI.Page
    {
        Sbaglanti_Class Connection = new Sbaglanti_Class();
        string idcategory = ""; // burayı da burdan alıyoruz : <a href ="AddCategory.aspx?CategoryID=<%#Eval("CategoryID") %> (aşşadakinden)
        string process = ""; // burayı urlden aldık şurdan : <a href ="AddCategory.aspx?CategoryID=<%#Eval("CategoryID") %>&process=delete"><asp:Image ID="Image2" runat="server" ImageUrl="~/Icons/delete.png" /></a>
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                idcategory = Request.QueryString["CategoryID"];
                process = Request.QueryString["process"];
            }
            SqlCommand komut1 = new SqlCommand("select * from Table_Category", Connection.baglanti());
            SqlDataReader read = komut1.ExecuteReader();
            DataList1.DataSource = read;
            DataList1.DataBind();
            Connection.baglanti().Close();

            // silme işlemi

            if (process == "delete")
            {
                SqlCommand komut3 = new SqlCommand("Delete From Table_Category where CategoryID=@p1", Connection.baglanti());
                komut3.Parameters.AddWithValue("@p1", idcategory);
                komut3.ExecuteNonQuery();
                Connection.baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void ButtonAddCategory_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("insert into Table_Category (CategoryName) values (@p1)", Connection.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtCategoryName.Text);

            komut2.ExecuteNonQuery();
            Connection.baglanti().Close();
            Response.Write("Information hass beed Added!");
        }
    }
}