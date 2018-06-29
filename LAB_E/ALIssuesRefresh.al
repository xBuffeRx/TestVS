codeunit 50122 RefreshALIssueCode
{
    procedure Refresh()
    var
        locALIssue : record ALIssues;
        locHttpclient : HttpClient;
        locResponse : HttpResponseMessage;
        locJSToken : JsonToken;
        locJSValue: JsonValue;
        locJSArr : JsonArray;
        locJSObj : JsonObject;
        locText :Text;
        locInt :Integer;

    begin
        locALIssue.Deleteall;
        locHttpclient.DefaultRequestHeaders.Add('User-Agent','Dynamics 365');
        if not locHttpclient.Get('https://api.github.com/repos/Microsoft/AL/issues',locResponse) then
            Error('The call to the web service failed.');
        
        
    end;
}