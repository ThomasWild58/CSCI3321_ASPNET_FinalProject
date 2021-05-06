using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //1. Create a Sql Conncetion object
            //2. Create a SqlCommand object
            //3. Open the connection
            //4. Execute the SqlCommand
            //5. Close the connection

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            //INSERT INTO Books VALUES (Title_fromUser, AuthorID_fromUser,Price_fromUser,PublishDate_fromUser,PublisherID_fromUser,GenreID_fromUser)
            cmd.CommandText = "INSERT INTO Books (Title, AuthorID, Price, PublishDate, PublisherID, GenreID) VALUES ('" + txtBookTitle.Text + "'," +
                ddlAuthorFirst.SelectedValue + "," + txtPrice.Text + ",'" + txtPublishDate.Text + "'," + ddlPublisher.SelectedValue + "," + ddlGenre.SelectedValue + ")";

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("MyBooks.aspx");
        }
    }
}