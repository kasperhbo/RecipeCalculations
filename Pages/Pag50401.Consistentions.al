page 50401 Consistentions
{
    ApplicationArea = All;
    Caption = 'Consistentions';
    PageType = List;
    SourceTable = Consistentions;
    UsageCategory = Lists;
    // CardPageId = Consistentions;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ConsistetionNo."; Rec."ConsistetionNo.")
                {
                    ToolTip = 'Specifies the value of the ConsistetionNo. field.';
                }
                field(ConsistentionName; Rec.ConsistentionName)
                {
                    ToolTip = 'Specifies the value of the ConsistentionName field.';
                }
            }
        }
    }
}
