//277_Mandar

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mandar_Sankhe_BSS9_277
{
    /// <summary>
    /// Code-behind class for The_Admin_Sec9.aspx, handling genre and book management functionalities.
    /// </summary>
    public partial class The_Admin_Sec9 : System.Web.UI.Page
    {
        /// <summary>
        /// Event triggered when the page is loaded.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The event data.</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialize page components or perform any necessary operations on page load.
        }

        /// <summary>
        /// Event triggered when the selected index of the DropDownListGenres_277 changes.
        /// This rebinds the DataListBooks control based on the selected genre.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The event data.</param>
        protected void DropDownListGenres_277_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                // Rebind the DataListBooks control to reflect the selected genre.
                DataListBooks.DataBind();
            }
            catch (Exception ex)
            {
                // Rethrow exception to allow higher-level handling or logging.
                throw ex;
            }
        }

        /// <summary>
        /// Event triggered when the Add Genre button is clicked.
        /// Inserts a new genre into the database using the SqlDataSourceGenresCRUD_0277 control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The event data.</param>
        protected void ButtonAddGenre_77_Click(object sender, EventArgs e)
        {
            try
            {
                // Ensure the SqlDataSource for genres is available.
                if (SqlDataSourceGenresCRUD_0277 == null)
                {
                    LabelGenreError.Text = "Error: SqlDataSource not found. | Mandar";
                    return;
                }

                // Validate that the necessary input fields are not empty.
                if (string.IsNullOrWhiteSpace(TextBoxGenreName.Text) ||
                    string.IsNullOrWhiteSpace(TextBoxLongName.Text) ||
                    string.IsNullOrWhiteSpace(TextBoxGenreID.Text))
                {
                    LabelGenreError.Text = "Genre name cannot be empty. | Mandar";
                    return;
                }

                // Set the insert parameters for the SqlDataSource and perform the insert operation.
                SqlDataSourceGenresCRUD_0277.InsertParameters["GenreName"].DefaultValue = TextBoxGenreName.Text;
                SqlDataSourceGenresCRUD_0277.InsertParameters["LongName"].DefaultValue = TextBoxLongName.Text;
                SqlDataSourceGenresCRUD_0277.InsertParameters["GenreID"].DefaultValue = TextBoxGenreID.Text;
                SqlDataSourceGenresCRUD_0277.Insert();

                // Display success message and refresh the GridView.
                LabelGenreError.Text = "Genre added successfully!";
                GridViewGenres_277.DataBind();
            }
            catch (Exception ex)
            {
                // Display error message with exception details.
                LabelGenreError.Text = $"Error: {ex.Message}. Mandar.";
            }
        }

        /// <summary>
        /// Event triggered when a book is selected in the GridViewBooks_277 control.
        /// This rebinds the DetailsViewBooks_277 control to display detailed information about the selected book.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The event data.</param>
        protected void GridViewBooks_277_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                // Rebind the DetailsViewBooks control to reflect the selected book.
                DetailsViewBooks_277.DataBind();
            }
            catch (Exception ex)
            {
                // Rethrow exception to allow higher-level handling or logging.
                throw ex;
            }
        }
    }
}
