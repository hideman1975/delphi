unit TApple;

interface

uses SysUtils;

type
  TAppleClass = class
  public
    Mass: double;
    Sort: string;
    Radius: double;

    procedure SetFields(NewMass: double; NewSort: string; NewRadius: double);
    function ToString: string;
    constructor Create(NewMass: double; NewSort: string; NewRadius: double);

  end;

implementation

{ TAppleClass }

constructor TAppleClass.Create(NewMass: double; NewSort: string;
  NewRadius: double);
begin
  Self.Mass := NewMass;
  Self.Sort := NewSort;
  Self.Radius := NewRadius;
end;

procedure TAppleClass.SetFields(NewMass: double; NewSort: string;
  NewRadius: double);
begin
  Self.Mass := NewMass;
  Self.Sort := NewSort;
  Self.Radius := NewRadius;
end;

function TAppleClass.ToString: string;
begin
  result := 'Apple, Mass:' + FloatToStr(Mass)
    + ', Sort: ' + Sort + ',Radius: ' + FloatToStr(Radius);
end;

end.
