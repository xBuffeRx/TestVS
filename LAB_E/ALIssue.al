table 50121 ALIssues
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;id; Integer)
        {
            DataClassification = ToBeClassified;
            
            Caption = 'id';
        }
        field(2; number; integer){
            Caption = 'number';
        }
        field(3;title;text[250]) {
            Caption = 'title';
        }
        field(4;created_at;DateTime) {
            Caption = 'Created At';
        }
        field(5;user;text[50]) {
            Caption = 'user';
        }
        field(6;state;text[30]) {
            Caption = 'state';
        }
        field(7;html_url;text[250]) {
            Caption = 'html_url';
        }

    
    }
    
    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}