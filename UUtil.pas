unit UUtil;

interface

uses vcl.ExtCtrls, Vcl.Controls, Vcl.StdCtrls;

type
  TUtil = class
  private
    public
      class procedure LimparForm(aControl: TWinControl);
  end;

implementation

{ TUtil }

class procedure TUtil.LimparForm(aControl: TWinControl);
  var I: Integer;
begin
  for I := 0 to aControl.ControlCount - 1 do
  begin
    if not Assigned(aControl) then
      exit;

    if aControl.Controls[I] is TCustomEdit then
    begin
       TCustomEdit(aControl.Controls[I]).Clear;
    end;

    if aControl.Controls[I] is TWinControl then
    begin
      LimparForm(TWinControl(aControl.Controls[I]));
    end;
  end;
end;

end.
