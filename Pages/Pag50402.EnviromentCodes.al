page 50402 EnviromentCodes
{
    ApplicationArea = All;
    Caption = 'EnviromentCodes';
    PageType = List;
    SourceTable = EnviromentCodes;
    UsageCategory = Lists;
    // CardPageId = EnviromentCodes;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("EnivomentCodeNo."; Rec."EnivomentCodeNo.")
                {
                    ToolTip = 'Specifies the value of the EnivomentCodeNo. field.';
                }
                field(EnviromentCodeName; Rec.EnviromentCodeName)
                {
                    ToolTip = 'Specifies the value of the EnviromentCodeName field.';
                }
            }
        }
    }
}
