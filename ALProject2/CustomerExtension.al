tableextension 50100 CustomerBookExtension extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50100;"Paboritong Libro";Code[20])
        {
            Caption = 'Favorite Book';
            TableRelation = Book;
        }
    }    
    
}