unit UfrmPesqDadosPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,ComObj;

type
  TfrmPesqDadosPaciente = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    edtLocalizarPront: TEdit;
    edtLocalizarNome: TEdit;
    Label2: TLabel;
    btnLocalizar: TBitBtn;
    btnCadastro: TBitBtn;
    btnExportar: TBitBtn;
    BitBtn4: TBitBtn;
    StatusBar1: TStatusBar;
    DBGPaciente: TDBGrid;
    DsLocalizarPaciente: TDataSource;
    BitBtn1: TBitBtn;
    procedure btnLocalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqDadosPaciente: TfrmPesqDadosPaciente;

implementation

{$R *.dfm}

uses UdmFicha, UfrmFichadeCadastro;

procedure Localizado;
begin
  with dmFicha.cdsCadPESSOAL do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
    Open;
    end;
     with dmFicha.cdsCadDomiciliar do
      begin
       Close;
       FetchParams;
       Params.ParamByName('DOMI_COD_PESS').AsInteger:=dmFicha.cdsLocPessoalDOMI_COD_PESS.AsInteger;
       Open;
      end;
       with dmFicha.cdsCadContHans do
        begin
       Close;
       FetchParams;
       Params.ParamByName('CONT_HANS_COD_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
       Open;
      end;
       with dmFicha.cdsCadContHansPess do
        begin
        Close;
        FetchParams;
        Params.ParamByName('ID_CONTATO_HANSENIASE_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
        Open;
       end;
        with dmFicha.cdsCadDiagnostico do
        begin
        Close;
        FetchParams;
        Params.ParamByName('DIAG_COD_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
        Open;
       end;
        with dmFicha.cdsCadLaboratorio do
        begin
        Close;
        FetchParams;
        Params.ParamByName('LAB_COD_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
        Open;
       end;
        with dmFicha.cdsCadTrat do
        begin
        Close;
        FetchParams;
        Params.ParamByName('TRAT_COD_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
        Open;
       end;
        with dmFicha.cdsCadRecidiva do
        begin
        Close;
        FetchParams;
        Params.ParamByName('REC_COD_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
        Open;
       end;
        with dmFicha.cdsCadCOMUNICANTE do
        begin
        Close;
        FetchParams;
        Params.ParamByName('COMU_COD_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
        Open;
       end;
         with dmFicha.cdsCadNeuro do
        begin
        Close;
        FetchParams;
        Params.ParamByName('NEUR_COD_PESS').AsInteger:=dmFicha.cdsLocPessoalID_PESS.AsInteger;
        Open;
       end;
end;

procedure TfrmPesqDadosPaciente.BitBtn1Click(Sender: TObject);
begin
dmFicha.sdsLocPessoal.CommandText:='Select* FROM pessoal left join domiciliar ON PESSOAL.id_pess=DOMICILIAR.domi_cod_pess left join '+
 'diagnostico ON PESSOAL.id_pess=DIAGNOSTICO.diag_cod_pess left join '+
 'laboratorio ON pessoal.id_pess=LABORATORIO.lab_cod_pess left join '+
 'tratamento ON pessoal.id_pess=TRATAMENTO.trat_cod_pess left join '+
 'neurologica ON pessoal.id_pess=NEUROLOGICA.neur_cod_pess where PESS_NOME CONTAINING :PESS_NOME Order by PESSOAL.id_pess ASC';
dmFicha.sdsLocPessoal.Params[0].AsString:='PESS_NOME';
dmFicha.sdsLocPessoal.Active:=true;
  With dmFicha.cdsLocPessoal do
  begin
    close;
    FetchParams;
    Params.ParamByName('PESS_NOME').AsString:=edtLocalizarNOME.Text;
    open;
  end;
end;

procedure TfrmPesqDadosPaciente.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesqDadosPaciente.btnCadastroClick(Sender: TObject);
begin
  Localizado;
  Close;
   try
    frmFichadeCadastro:=TfrmFichadeCadastro.Create(Self);
    frmFichadeCadastro.ShowModal;
  finally
    frmFichadeCadastro:=nil;
  end;
end;

procedure TfrmPesqDadosPaciente.btnExportarClick(Sender: TObject);
var
 linha, coluna : integer;
 planilha : variant;
 valorcampo : string;
begin
 planilha:= CreateoleObject('Excel.Application');
 planilha.WorkBooks.add(1);
 planilha.caption := 'Exportando dados do HANSYS para o Excel';
 planilha.visible := true;
 dmFicha.cdsLocPessoal.First;
 for linha := 0 to dmFicha.cdsLocPessoal.RecordCount - 1 do
 begin
   for coluna := 1 to dmFicha.cdsLocPessoal.FieldCount do
   begin
     valorcampo := dmFicha.cdsLocPessoal.Fields[coluna - 1].AsString;
     planilha.cells[linha + 2,coluna] := valorCampo;
   end;
   dmFicha.cdsLocPessoal.Next;
 end;
 for coluna := 1 to dmFicha.cdsLocPessoal.FieldCount do
 begin
   valorcampo := dmFicha.cdsLocPessoal.Fields[coluna - 1].DisplayLabel;
   planilha.cells[1,coluna] := valorcampo;
 end;
 planilha.columns.Autofit;

end;

procedure TfrmPesqDadosPaciente.btnLocalizarClick(Sender: TObject);
begin
dmFicha.sdsLocPessoal.CommandText:='Select* FROM pessoal left join domiciliar ON PESSOAL.id_pess=DOMICILIAR.domi_cod_pess left join '+
 'diagnostico ON PESSOAL.id_pess=DIAGNOSTICO.diag_cod_pess left join '+
 'laboratorio ON pessoal.id_pess=LABORATORIO.lab_cod_pess left join '+
 'tratamento ON pessoal.id_pess=TRATAMENTO.trat_cod_pess left join '+
 'neurologica ON pessoal.id_pess=NEUROLOGICA.neur_cod_pess where PESS_NUMPRONT CONTAINING :PESS_NUMPRONT Order by PESSOAL.id_pess ASC';
dmFicha.sdsLocPessoal.Params[0].AsString:='PESS_NUMPRONT';
dmFicha.sdsLocPessoal.Active:=true;
  With dmFicha.cdsLocPessoal do
  begin
    close;
    FetchParams;
    Params.ParamByName('PESS_NUMPRONT').AsString:=edtLocalizarPRONT.Text;
    open;
  end;
end;

procedure TfrmPesqDadosPaciente.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmFicha.cdsLocPessoal.close;
end;

procedure TfrmPesqDadosPaciente.FormCreate(Sender: TObject);
begin
 if not assigned(dmFicha) then
   dmFicha:=TdmFicha.Create(Self);
   dmFicha.cdsLocPessoal.Open;
end;

procedure TfrmPesqDadosPaciente.FormDestroy(Sender: TObject);
begin
  dmFicha.Free;
  dmFicha:=nil;
end;

end.
