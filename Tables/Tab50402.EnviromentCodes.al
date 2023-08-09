table 50402 EnviromentCodes
{
    Caption = 'EnviromentCodes';
    DataClassification = ToBeClassified;
    // // TableType = Temporary;

    fields
    {
        field(1; "EnivomentCodeNo."; Code[20])
        {
            Caption = 'EnivomentCodeNo.';
        }
        field(2; EnviromentCodeName; Text[256])
        {
            Caption = 'EnviromentCodeName';
        }
    }
    keys
    {
        key(PK; "EnivomentCodeNo.")
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    var
        recNoCode: Codeunit RecNummering;
    begin
        recNoCode.GetRecNo('ENVIROMENTCODE', rec."EnivomentCodeNo.", "EnivomentCodeNo.");
    end;
}
