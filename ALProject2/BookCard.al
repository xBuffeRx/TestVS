page 50100 BookCard
{
    PageType = Card;
    SourceTable = Book;
    Caption = 'Book Card';
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("No.";"No.")
                {
                    ApplicationArea = All;
                }
                field(Title;Title)
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                field(Author;Author)
                {
                    ApplicationArea = All;
                }
                field(Hardcover;Hardcover) 
                {
                    ApplicationArea = All;
                }
                field("Page Count";"Page Count") 
                {
                    ApplicationArea = All;
                }


            }
        }
    }
}