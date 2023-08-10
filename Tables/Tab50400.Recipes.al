table 50400 Recipes
{
    Caption = 'Recipes';
    DataClassification = ToBeClassified;
    // TableType = Temporary;

    fields
    {
        field(1; "RecipeNO."; Code[20])
        {
            Caption = 'RecipeNO.';
            DataClassification = ToBeClassified;
        }
        field(2; RecipeName; Text[256])
        {
            Caption = 'RecipeName';
        }
        field(3; EnviromentCode; Code[20])
        {
            Caption = 'EnviromentCode';
            TableRelation = EnviromentCodes;
            trigger OnLookup()
            var
                isSet: Boolean;
            begin
                isSet := EnviromentCodeLookup();
                if not isSet then begin
                    //Do some error/reseting handling here in the future
                end
                else begin
                    //run here the code if the enviroment code is set
                end;
            end;
        }
        field(4; StrengthClass; Code[20])
        {
            Caption = 'StrengthClass';
            TableRelation = StrengthClasses;
            trigger OnLookup()
            var
                isSet: Boolean;
            begin
                isSet := StrengthClassLookup();
                if not isSet then begin
                    //Do some error/reseting handling here in the future
                end
                else begin
                    //run here the code if the enviroment code is set
                end;
            end;
        }
        field(5; Consistention; Code[20])
        {
            Caption = 'Consistion';
            TableRelation = Consistentions;
            trigger OnLookup()
            var
                isSet: Boolean;
            begin
                isSet := ConsistentionsLookup();
                if not isSet then begin
                    //Do some error/reseting handling here in the future
                end
                else begin
                    //run here the code if the enviroment code is set

                    //Set the consisten name


                end;
            end;
        }

        field(6; EnviromentCodeName; Text[256])
        {
            Caption = 'EnviromentCodeName';
            Editable = false;
        }
        field(7; StrengthClassName; Text[256])
        {
            Caption = 'StrengthClassName';
            Editable = false;
        }
        field(8; ConsistentionsName; Text[256])
        {
            Caption = 'ConsistentionsName';
            Editable = false;
        }


    }
    keys
    {
        key(PK; "RecipeNO.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        recNoCode: Codeunit RecNummering;
    begin
        recNoCode.GetRecNo('RECIPE', rec."RecipeNO.", "RecipeNO.");
    end;

    //TODO: Find a way to make this better bc there is a lot of code duplication
    procedure EnviromentCodeLookup(): Boolean
    var
        _enviromentLookUpPage: Page EnviromentCodes;
        _envCodeRec: Record EnviromentCodes;
    begin
        if _enviromentLookUpPage.LookupMode(true) then;
        if _enviromentLookUpPage.RunModal() = ACTION::LookupOK then begin
            _enviromentLookUpPage.GetRecord(_envCodeRec);
            EnviromentCode := _envCodeRec."EnivomentCodeNo.";
            EnviromentCodeName := _envCodeRec.EnviromentCodeName;
            exit(true);
        end else
            exit(false);
    end;

    procedure ConsistentionsLookup(): Boolean
    var
        _consistentionLookUpPage: Page Consistentions;
        _consistionRec: Record Consistentions;
    begin
        if _consistentionLookUpPage.LookupMode(true) then;
        if _consistentionLookUpPage.RunModal() = ACTION::LookupOK then begin
            _consistentionLookUpPage.GetRecord(_consistionRec);
            Consistention := _consistionRec."ConsistetionNo.";
            ConsistentionsName := _consistionRec.ConsistentionName;
            exit(true);
        end else
            exit(false);
    end;

    procedure StrengthClassLookup(): Boolean
    var
        _strengthClassesLookUpPage: Page StrengthClasses;
        _strengthClassRec: Record StrengthClasses;
    begin
        if _strengthClassesLookUpPage.LookupMode(true) then;
        if _strengthClassesLookUpPage.RunModal() = ACTION::LookupOK then begin
            _strengthClassesLookUpPage.GetRecord(_strengthClassRec);
            StrengthClass := _strengthClassRec."StrengthClassNo.";
            StrengthClassName := _strengthClassRec.StrengthClassName;
            exit(true);
        end else
            exit(false);
    end;
}
