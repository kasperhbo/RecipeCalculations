page 50404 CreateRecipeCard
{
    ApplicationArea = All;
    Caption = 'CreateRecipeCard';
    PageType = Card;
    SourceTable = Recipes;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("RecipeNO."; Rec."RecipeNO.")
                {
                    ToolTip = 'Specifies the value of the RecipeNO. field.';
                }
                field(RecipeName; Rec.RecipeName)
                {
                    ToolTip = 'Specifies the value of the RecipeName field.';
                }
                field(Consistention; Rec.Consistention)
                {
                    ToolTip = 'Specifies the value of the Consistion field.';
                }
                field(EnviromentCode; Rec.EnviromentCode)
                {
                    ToolTip = 'Specifies the value of the EnviromentCode field.';
                }
                field(StrengthClass; Rec.StrengthClass)
                {
                    ToolTip = 'Specifies the value of the StrengthClass field.';
                }
            }
        }
    }
}
