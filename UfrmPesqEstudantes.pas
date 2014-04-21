unit UfrmPesqEstudantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,ComObj;

type
  TfrmPesqEstudantes = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    edtLocalizarPront: TEdit;
    btnCadastro: TBitBtn;
    btnExportar: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    DBGPaciente: TDBGrid;
    DSLocEstudantes: TDataSource;
    procedure btnCadastroClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGPacienteDblClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqEstudantes: TfrmPesqEstudantes;

implementation

{$R *.dfm}

uses UdmFichaEstudante;

procedure Localizado;
begin
  with dmFichaEstudante.cdsCadEstudante do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ESTU_NUMPRONT').AsString:=dmFichaEstudante.cdsLocEstudanteESTU_NUMPRONT.AsString;
    Open;
  end;
end;

procedure TfrmPesqEstudantes.BitBtn1Click(Sender: TObject);
begin
  With dmFichaEstudante.cdsLocEstudante do
  begin
    close;
    FetchParams;
    Params.ParamByName('ESTU_NUMPRONT').AsString:=edtLocalizarPront.Text;
    open;
  end;
end;

procedure TfrmPesqEstudantes.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesqEstudantes.btnCadastroClick(Sender: TObject);
begin
  Localizado;
  Close;
end;

procedure TfrmPesqEstudantes.btnExportarClick(Sender: TObject);
var
 linha, coluna : integer;
 planilha : variant;
 valorcampo : string;
begin
 planilha:= CreateoleObject('Excel.Application');
 planilha.WorkBooks.add(1);
 planilha.caption := 'Exportado do HANSYS para o Excel';
 planilha.visible := true;
 dmFichaEstudante.cdsLocEstudante.First;
 for linha := 0 to dmFichaEstudante.cdsLocEstudante.RecordCount - 1 do
 begin
   for coluna := 1 to dmFichaEstudante.cdsLocEstudante.FieldCount do
   begin
     valorcampo := dmFichaEstudante.cdsLocEstudante.Fields[coluna - 1].AsString;
     planilha.cells[linha + 2,coluna] := valorCampo;
   end;
   dmFichaEstudante.cdsLocEstudante.Next;
 end;
 for coluna := 1 to dmFichaEstudante.cdsLocEstudante.FieldCount do
 begin
   valorcampo := dmFichaEstudante.cdsLocEstudante.Fields[coluna - 1].DisplayLabel;
   planilha.cells[1,coluna] := valorcampo;
 end;
 planilha.columns.Autofit;
end;

procedure TfrmPesqEstudantes.DBGPacienteDblClick(Sender: TObject);
begin
  Localizado;
  Close;
end;

end.
