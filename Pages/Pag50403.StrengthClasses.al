page 50403 StrengthClasses
{
    ApplicationArea = All;
    Caption = 'StrengthClasses';
    PageType = List;
    SourceTable = StrengthClasses;
    UsageCategory = Lists;
    // CardPageId = StrengthClasses;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("StrengthClassNo."; Rec."StrengthClassNo.")
                {
                    ToolTip = 'Specifies the value of the StrengthClassNo. field.';
                }
                field(StrengthClassName; Rec.StrengthClassName)
                {
                    ToolTip = 'Specifies the value of the StrengthClassName field.';
                }
            }
        }
    }
}
