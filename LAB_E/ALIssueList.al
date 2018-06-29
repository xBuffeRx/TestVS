page 50121 ALIssueList
{
    PageType = List;
    SourceTable = ALIssues;
    
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(id;id){}
                field(title;title){}
                field(created_at;created_at){}
                field(user;user){}
                field(state;state) {}
                field(html_url;html_url)
                {
                    ExtendedDatatype= URL;
                }



            }
        }
        area(factboxes)
        {
            
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}