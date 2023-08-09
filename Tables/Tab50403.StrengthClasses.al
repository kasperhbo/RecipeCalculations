table 50403 StrengthClasses
{
    Caption = 'StrengthClasses';
    DataClassification = ToBeClassified;
    // // TableType = Temporary;

    fields
    {
        field(1; "StrengthClassNo."; Code[20])
        {
            Caption = 'StrengthClassNo.';
        }
        field(2; StrengthClassName; Text[256])
        {
            Caption = 'StrengthClassName';
        }
    }
    keys
    {
        key(PK; "StrengthClassNo.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        recNoCode: Codeunit RecNummering;
    begin
        recNoCode.GetRecNo('STRENGTHCLASS', rec."StrengthClassNo.", "StrengthClassNo.");
    end;
}
