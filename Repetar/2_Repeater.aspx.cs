using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Repetar
{
    public partial class _2_Repeater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            {
                SqlDataAdapter da = new SqlDataAdapter("Select FirstName+' '+LastName as AdSoyad,HomePhone from Employees","Server=.;Database=Northwind;UID=sa;PWD:1234;");


                DataTable dt = new DataTable();
                da.Fill(dt);

                Repeater1.DataSource = dt;
                Repeater1.DataBind();

            }

        }
    }
}