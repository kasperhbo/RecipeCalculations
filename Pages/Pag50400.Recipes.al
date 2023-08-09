page 50400 Recipes
{
    ApplicationArea = All;
    Caption = 'Recipes';
    PageType = List;
    SourceTable = Recipes;
    UsageCategory = Lists;
    CardPageId = CreateRecipeCard;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("RecipeNO."; Rec."RecipeNO.")
                {
                    ToolTip = 'Specifies the value of the RecipeNO. field.';
                }
                field(RecipeName; Rec.RecipeName)
                {
                    ToolTip = 'Specifies the value of the RecipeName field.';
                }
                field(StrengthClass; Rec.StrengthClass)
                {
                    ToolTip = 'Specifies the value of the StrengthClass field.';
                }

                field(EnviromentCode; Rec.EnviromentCode)
                {
                    ToolTip = 'Specifies the value of the EnviromentCode field.';
                }
                field(Consistention; Rec.Consistention)
                {
                    ToolTip = 'Specifies the value of the Consistion field.';
                }
            }
        }
    }
}
