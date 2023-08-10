page 50406 SelectRecipe
{
    ApplicationArea = All;
    Caption = 'SelectRecipe';
    PageType = Card;
    UsageCategory = Tasks;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("ConsistentionCode"; Consistention."ConsistetionNo.")
                {
                    ApplicationArea = All;
                    Caption = 'Consistention';
                    Editable = true;
                    ToolTip = 'Consistention';

                    Lookup = true;
                    LookupPageId = Consistentions;
                    TableRelation = Consistentions;
                }

                field("Consistention Name"; ConsistionName)
                {
                    ApplicationArea = All;
                    Caption = 'Consistention Name';
                    Editable = false;
                    ToolTip = 'Name of the selected Consistention';
                }


                field("EnviromentCodeValue"; EnviromentCode."EnivomentCodeNo.")
                {
                    ApplicationArea = All;
                    Caption = 'EnviromentCode';
                    Editable = true;
                    ToolTip = 'EnviromentCode';
                    Lookup = true;
                    TableRelation = EnviromentCodes;
                    LookupPageId = EnviromentCodes;
                }

                field("Eniroment Code"; EnviromentCodeName)
                {
                    ApplicationArea = All;
                    Caption = 'Enviroment Code';
                    Editable = false;
                    ToolTip = 'Code of the selected Enviroment Code';
                }

                field("StrengthClassCode"; StrengthClass."StrengthClassNo.")
                {
                    ApplicationArea = All;
                    Caption = 'StrengthClass';
                    Editable = true;
                    ToolTip = 'StrengthClass';
                    Lookup = true;
                    TableRelation = StrengthClasses;
                    LookupPageId = StrengthClasses;
                }

                field("Strength Class"; StrengthClassName)
                {
                    ApplicationArea = All;
                    Caption = 'Strength Class Code';
                    Editable = false;
                    ToolTip = 'Code of the selected Strength Class';
                }
            }

            part(Recipes; RecipeListByCriteria)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ShowMatchingRecipes)
            {
                ApplicationArea = All;
                Caption = 'Show Matching Recipes';
                Image = Aging;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'View recipes that match the selected criteria';

                trigger OnAction()
                var

                begin
                    // CurrPage.Recipes.Page.GetCurrentRecord().SetRange(Consistention, Consistention."ConsistetionNo.");
                    if (Consistention."ConsistetionNo." <> '') then
                        CurrPage.Recipes.Page.SetRangeConst(Consistention);

                    if (EnviromentCode."EnivomentCodeNo." <> '') then
                        CurrPage.Recipes.Page.SetRangeEnviroment(EnviromentCode);

                    if (StrengthClass."StrengthClassNo." <> '') then
                        CurrPage.Recipes.Page.SetRangeStrengthClass(StrengthClass);

                    CurrPage.Recipes.Page.Update();
                end;
            }
        }
    }



    var
        Consistention: Record Consistentions;
        ConsistionName: Text[30];
        EnviromentCode: Record EnviromentCodes;
        EnviromentCodeName: Text[30];
        StrengthClass: Record StrengthClasses;
        StrengthClassName: Text[30];
}

