codeunit 50400 RecNummering
{

    procedure GetRecNo(NoSeriesCode: Code[20]; var RecNO: Code[20]; var newNo: Code[20])
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        NewNoSeriesCode: Code[20];
    begin
        // Check if the "Document No." field is empty
        if RecNO = '' then
            // If it's empty, initialize a new series using the NoSeriesManagement codeunit
            NoSeriesMgt.InitSeries(NoSeriesCode, '', Today(), newNo, NewNoSeriesCode);
    end;
}
