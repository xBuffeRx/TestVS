page 50110 CompanyInfoWizard
{
    PageType = NavigatePage;
    SourceTable = "Company Information";
    caption = 'Company Information Wizard';

    layout
    {
        area(content)
        {
            group(StandardBanner)
            {
                Editable = false;
                Visible = TopBannerVisible and (CurrentStep < 3);
                field(MediaResourcesStandard;MediaResourcesStandard."Media Reference")
                {
                    Editable = false;
                    ShowCaption = false;

                }                
            }

            group(FinishedBanner)
            {
                Editable=false;
                ShowCaption = false;
                Visible=TopBannerVisible AND (CurrentStep = 3);
                field(MediaResourcesDone;MediaResourcesDone."Media Reference")
                {
                    Editable=false;
                    ShowCaption=false;
                }
            }

            group(Step1)
            {
                Visible = CurrentStep = 1;

                group(CompanyName)
                {
                    Caption = 'Company Name';
                    InstructionalText = 'Provide the name of your company';

                    field(Name;Name)
                    {
                        ApplicationArea = basic;
                    }
                }
            }
            group(Step2)
            {
                Visible = CurrentStep = 2; 
                group(EmailAddress)
                {
                    caption = 'Email address';
                    InstructionalText = 'Enter email here';
                    field("E-Mail";"E-Mail")
                    {
                        ApplicationArea = basic;
                    }
                }
            }
            group(Step3)
            {
                Visible = CurrentStep = 3;
                group(Alldone)
                {
                    Caption = 'All Done!';
                    InstructionalText = 'Thank you for updating';

                }
            }
        }
        
    }
actions
        {
            area(Processing)
            {
                action(ActionBack)
                {
                    ApplicationArea = basic;
                    caption = 'Back';
                    enabled = ActionBackAllowed;
                    image = PreviousRecord;
                    infooterBar = true;
                    trigger OnAction()
                    begin
                       TakeStep(-1); 
                    end;
                }
                action(ActionNext)
                {
                    ApplicationArea = basic;
                    caption = 'Next';
                    enabled = ActionNextAllowed;
                    image = NextRecord;
                    infooterBar = true;
                    trigger OnAction()
                    begin
                        TakeStep(1);
                    end;
                }
                action(ActionFinish)
                {
                    ApplicationArea = basic;
                    caption = 'Finish';
                    enabled = ActionFinishAllowed;
                    image = Approve;
                    infooterBar = true;
                    trigger OnAction()
                    begin
                        CurrPage.close;
                    end;
                }
        }
        }

    

    var 
    CurrentStep : Integer;
    ActionBackAllowed : boolean ;
    ActionNextAllowed : boolean;
    ActionFinishAllowed : boolean;
    MediaRepositoryStandard : Record "Media Repository";
    MediaRepositoryDone : Record "Media Repository";
    MediaResourcesStandard : Record "Media Resources";
    MediaResourcesDone : Record "Media Resources";
    TopBannerVisible : Boolean;

    trigger OnOpenPage()
    begin
        CurrentStep := 1;
        SetControls();
    end;

    trigger OnInit()
    begin
        LoadTopBanners();
    end;

    local procedure SetControls()
    begin
        ActionBackAllowed := CurrentStep > 1;
        ActionNextAllowed := CurrentStep < 3;
        ActionFinishAllowed := CurrentStep = 3;


    end;

    local procedure TakeStep(Step:Integer)
    begin
        CurrentStep += Step;
        SetControls();
    end;

    

    local procedure LoadTopBanners();
    begin
        if MediaRepositoryStandard.GET('AssistedSetup-NoText-400px.png',FORMAT(CURRENTCLIENTTYPE)) and
            MediaRepositoryDone.GET('AssistedSetupDone-NoText-400px.png',FORMAT(CURRENTCLIENTTYPE)) then
            if MediaResourcesStandard.GET(MediaRepositoryStandard."Media Resources Ref") and
                MediaResourcesDone.GET(MediaRepositoryDone."Media Resources Ref") then 
                TopBannerVisible := MediaResourcesDone."Media Reference".HASVALUE;
    end;


}