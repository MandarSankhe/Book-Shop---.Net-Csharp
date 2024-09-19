using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Book
{
    public int BookID { get; set; }

    public string Title { get; set; }

    public string Author { get; set; }

    public int PublicationYear { get; set; }

    public int GenreID { get; set; }

    public decimal Price { get; set;}

    public string ImageFile { get; set; }
}
