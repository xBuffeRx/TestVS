page 50111 TestHTTP
{
    PageType = Card;
    SourceTable = Integer;
    
    layout
    {
        area(content)
        {
            group(General)
            {
               
            }
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        SiteResponse:   Text;
        HttpCliient :HttpClient;
        
}