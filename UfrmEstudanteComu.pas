unit UfrmEstudanteComu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Imaging.pngimage, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEstudanteComu = class(TForm)
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstudanteComu: TfrmEstudanteComu;
  cont:integer;
implementation

{$R *.dfm}

uses UdmEstudantecomu, UfrmFichaEstudantes;



end.
