
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
                field(ConsistentionsName; Rec.ConsistentionsName)
                {
                    ToolTip = 'Specifies the value of the ConsistentionsName field.';
                }
                field(EnviromentCode; Rec.EnviromentCode)
                {
                    ToolTip = 'Specifies the value of the EnviromentCode field.';
                }
                field(EnviromentName; Rec.EnviromentCodeName)
                {
                    ToolTip = 'Specifies the value of the EnviromentName field.';
                }
                field(StrengthClass; Rec.StrengthClass)
                {
                    ToolTip = 'Specifies the value of the StrengthClass field.';
                }
                field(StrengthClassName; Rec.StrengthClassName)
                {
                    ToolTip = 'Specifies the value of the StrengthClassName field.';
                }
            }

            group(Lines)
            {
                Caption = 'Lines';
                part(RecipeLines; RecipeLineCardPart)
                {
                    ApplicationArea = All;
                    SubPageLink = "RecipeNo." = FIELD("RecipeNo.");
                }
            }
        }
    }

    trigger OnOpenPage();
    var
        RecipeTracker: Codeunit "RecipeTracker";
    begin
        RecipeTracker.SetCurrentRecipe(Rec);
    end;
}
