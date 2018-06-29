pageextension 50101 CustomerCardExtension extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("Paboritong Libro";"Paboritong Libro")
            {
                ApplicationArea = All;
            }
        }
    }
    
}