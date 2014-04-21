unit UfrmConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;


type
  TFrmConfig = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
     function getCodTeste: integer;
     function getCodTeste2: integer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;
  CodigoTeste:integer;

implementation

{$R *.dfm}

uses UdmFicha, Data.DBXCommon;

{ TForm1 }

procedure TFrmConfig.Button1Click(Sender: TObject);
begin
  ShowMessage('Codigo = '+IntToStr(getCodTeste));
end;

procedure TFrmConfig.FormCreate(Sender: TObject);
begin
 if not assigned(dmFicha) then
    begin
      dmFicha:=TdmFicha.Create(Self);
      dmFicha.cdsCadPessoal.Open;
    end;
end;

procedure TFrmConfig.FormDestroy(Sender: TObject);
begin
 dmFicha.Free;
  dmFicha:=nil;
end;

function TFrmConfig.getCodTeste: integer;
begin
  dmFicha.SQLQueryPessoal.Open;
  Result:=dmFicha.SQLQueryPessoalCODIGO.Value;
end;

function TFrmConfig.getCodTeste2: integer;
var
 DBXConn: TDBXConnection;
 DBXCmd: TDBXCommand;
 DBXReader: TDBXReader;
begin
  begin
   DBXConn:=TDBXConnectionFactory.GetConnectionFactory.GetConnection('FBCONNECTION','SYSDBA','masterkey');
   DBXCmd:=DBXConn.CreateCommand;
   DBXCmd.Text:='select gen_id(gen_pessoal_id,0)as Codigo from RDB$DATABASE';
   DBXReader:=DBXCmd.ExecuteQuery;
   if DBXReader.Next then
     Result:=DBXReader.Value['Codigo'].AsInt32
   else
     Result:=0;
  end;
end;


end.
