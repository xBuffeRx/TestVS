codeunit 50140 HttpDownloadMgt
{
    procedure DownloadPicture(Url:Text;var TempBlob:Record TempBlob temporary)
    var
        locClient: HttpClient;
        locResponse: HttpResponseMessage;
        InStr: InStream;
        OutStr: OutStream;
    begin   
        locClient.get(Url,locResponse);
        locResponse.Content().ReadAs(InStr);
        TempBlob.Blob.CreateOutStream(OutStr);
        CopyStream(OutStr,InStr)
    end;
}