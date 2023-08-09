table 50400 Recipes
{
    Caption = 'Recipes';
    DataClassification = ToBeClassified;
    TableType = Temporary;

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
        }
        field(4; StrengthClass; Code[20])
        {
            Caption = 'StrengthClass';
            TableRelation = StrengthClasses;
        }
        field(5; Consistention; Code[20])
        {
            Caption = 'Consistion';
            TableRelation = Consistentions;
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
        recNoCode.GetRecNo('Recipe', rec."RecipeNO.", "RecipeNO.");
    end;
}
