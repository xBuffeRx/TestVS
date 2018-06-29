codeunit 50100 Today 
{
    trigger OnRun()
    var
        vDay : Date;
    begin
        vDay := Today();
        
        Message('%1',vDay);
    end;
}