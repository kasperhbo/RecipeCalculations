page 50405 RecipeLineCardPart
{
    ApplicationArea = All;
    Caption = 'RecipeLineCardPart';
    PageType = ListPart;
    SourceTable = RecipeLine;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("RecipeLineNo."; Rec."RecipeLineNo.")
                {
                    ToolTip = 'Specifies the value of the RecipeLineNo. field.';
                }
                field("RecipeNo."; Rec."RecipeNo.")
                {
                    ToolTip = 'Specifies the value of the RecipeNo. field.';
                }
                field(Item; Rec.Item)
                {
                    ToolTip = 'Specifies the value of the Item field.';
                }
            }
        }
    }

    var
        FilterRecipes: Boolean;
}
