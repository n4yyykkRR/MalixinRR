unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ActnList, Menus;

type

  { TForm4 }

  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation
uses Unit1, Unit2, Unit3;
{$R *.lfm}

{ TForm4 }

procedure TForm4.FormCreate(Sender: TObject);
begin

end;

procedure TForm4.MenuItem1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm4.MenuItem2Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm4.MenuItem3Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm4.MenuItem4Click(Sender: TObject);
begin
  Close;
end;

end.

