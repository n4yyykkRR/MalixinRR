unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, DBGrids,
  ZConnection, ZDataset;

type

  { TForm3 }

  TForm3 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZTable1: TZTable;
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

end.

