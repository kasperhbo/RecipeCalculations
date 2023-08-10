table 50404 RecipeLine
{
    Caption = 'RecipeLine';
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; "RecipeLineNo."; Code[20])
        {
            Caption = 'RecipeLineNo.';
        }
        field(2; "RecipeNo."; Code[20])
        {
            Caption = 'RecipeNo.';
        }
        field(3; Item; Code[20])
        {
            Caption = 'Item';
            TableRelation = Item;
        }
    }
    keys
    {
        key(PK; "RecipeLineNo.")
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    var
        recNoCode: Codeunit RecNummering;
        recipeTracker: Codeunit RecipeTracker;
    begin
        recNoCode.GetRecNo('RECIPE_LINE', rec."RecipeLineNo.", "RecipeLineNo.");
        rec."RecipeNo." := recipeTracker.GetCurrentRecipe()."RecipeNO.";
    end;
}
