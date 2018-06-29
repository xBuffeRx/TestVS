report 50100 BookReport
{
    WordLayout = 'Bookreport.docx';
    dataset
    {
        dataitem(DataItemName; Book)
        {
            column(No_;"No.")  {}
            column(Title;Title){}
            column(Author;Author) {}
            column(Page_Count;"Page Count") {}
            column(Hardcover;Hardcover) {}

        }
    }
    
}