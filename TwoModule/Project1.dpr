program Project1;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {Main},
  MyUnit in 'MyUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
