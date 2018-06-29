codeunit 50101 CustomerCode
{
    [EventSubscriber(ObjectType::Table, database::Customer,  'OnAfterInsertEvent', '', true, true)]
    local procedure OnCustommerAfterInsert(var Rec: Record Customer; RunTrigger: Boolean)
    begin
        Message('%1','some test here');

    end;
   

}