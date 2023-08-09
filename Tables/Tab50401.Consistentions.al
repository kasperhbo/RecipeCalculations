table 50401 Consistentions
{
    Caption = 'Consistentions';
    DataClassification = ToBeClassified;
    // // TableType = Temporary;

    fields
    {
        field(1; "ConsistetionNo."; Code[20])
        {
            Caption = 'ConsistetionNo.';
        }
        field(2; ConsistentionName; Text[256])
        {
            Caption = 'ConsistentionName';
        }
    }
    keys
    {
        key(PK; "ConsistetionNo.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        recNoCode: Codeunit RecNummering;
    begin
        recNoCode.GetRecNo('CONSISTENTION', rec."ConsistetionNo.", "ConsistetionNo.");
    end;
}
