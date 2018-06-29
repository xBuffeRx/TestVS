pageextension 50140 ItemCardExt extends "Item Card"
{
    actions
    {
        addfirst(Item)
        {
            action(DownloadPicture)
            {
                Caption = 'Download Picture';
                Image = Picture;
                trigger OnAction()
                var
                    locDownloadMgt: Codeunit HttpDownloadMgt;
                    locTempBlob: Record TempBlob temporary;
                    locInstr: InStream;
                begin
                    locDownloadMgt.DownloadPicture(
                        'http://vjeko.com/demo/bicycle.jpg',locTempBlob
                    );
                    locTempBlob.Blob.CreateInStream(locInstr);
                    rec.Picture.ImportStream(locInstr,'Default Image');
                    CurrPage.Update(true);
                end;
            }
        }
    }
}