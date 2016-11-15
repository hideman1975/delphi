unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TApple, Generics.Collections, DBCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    ListBox1: TListBox;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Apple1, Apple2, Apple3: TAppleClass;
  ObjList: TList<TAppleClass>;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Apple1.Destroy;
Apple1 := nil;
//Label1.Caption := Apple1.ToString;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ListBox1.Items.Add(ObjList.Items[1].ToString);
ListBox1.Items.Add(ObjList.Items[0].ToString);
ListBox1.Items.Add(ObjList.Items[2].ToString);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  ObjList :=  TList<TAppleClass>.Create;
  Apple1 := tAppleClass.Create(0.2,'Shtref',1.5);
  Apple2 := tAppleClass.Create(0.8,'Antonovka',1.1);
  Apple3 := tAppleClass.Create(0.4,'Zvezdochka',0.8);
  Label1.Caption := Apple1.ToString;
  Label2.Caption := Apple2.ToString;
  Label3.Caption := Apple3.ToString;
  ObjList.Add(Apple1);
  ObjList.Add(Apple2);
  ObjList.Add(Apple3);
  ObjList.Items[1].Radius := 0.6;
  //  Apple1.Mass := 20;
//  Apple1.Sort := 'Antonovka';
//  Apple1.Radius := 1.2;
//Apple1.SetFields(0.2,'Shtref',1.5);
    //owMessage(Apple1.ToString);
    //Apple1.Destroy;
    //owMessage(Apple2.ToString);
    //Apple2.Destroy;
    //owMessage(Apple3.ToString);
    //Apple3.Destroy;


end;

end.
