page 50407 RecipeListByCriteria
{
    ApplicationArea = All;
    Caption = 'Recipes Filter';
    SourceTable = Recipes;
    Editable = false;
    PageType = ListPart;

    layout
    {
        area(Content)
        {
            repeater(REP)
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

    procedure GetCurrentRecord(): Record Recipes;
    begin
        exit(Rec);
    end;

    procedure SetRangeConst(_consRec: Record Consistentions);
    begin
        // Message(rec.Consistenti);
        rec.SetRange(Rec."Consistention", _consRec."ConsistetionNo.");
    end;

    internal procedure SetRangeEnviroment(_envCodeRec: Record EnviromentCodes)
    begin
        rec.SetRange(Rec."EnviromentCode", _envCodeRec."EnivomentCodeNo.");
    end;

    internal procedure SetRangeStrengthClass(_strClassRec: Record StrengthClasses)
    begin
        rec.SetRange(Rec.StrengthClass, _strClassRec."StrengthClassNo.");
    end;
}

