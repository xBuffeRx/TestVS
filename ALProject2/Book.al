table 50101 Book
{
    DataClassification = ToBeClassified;
    LookupPageId = "Book List";

    fields
    {
        field(1;"No."; Code[10])
        {
            Caption = 'No.';            
        }
        field(2; Title; Text[50])
        {
            Caption = 'Title';
        }
        field(3; Author; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Author';
        }
        field(4; Hardcover; Boolean)
        {
            DataClassification = ToBeClassified;
            caption = 'Hardcover';
        }
        field(5; "Page Count"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Page Count';

        }

    }
    keys
    {
        key(PK; "No.")
        {
        Clustered  = true;

        }
    }   
    
}
