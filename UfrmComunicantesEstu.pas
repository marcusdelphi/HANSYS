unit UfrmComunicantesEstu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ImgList, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Imaging.pngimage;

type
  TfrmComunicantesEstu = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    Label241: TLabel;
    Label7: TLabel;
    Label80: TLabel;
    Label8: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label84: TLabel;
    Label83: TLabel;
    Label85: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    btnNovo: TToolButton;
    ToolButton3: TToolButton;
    btnCancelar: TToolButton;
    ToolButton5: TToolButton;
    btnExcluir: TToolButton;
    ToolButton7: TToolButton;
    btnEditar: TToolButton;
    ToolButton9: TToolButton;
    btnSalvar: TToolButton;
    ToolButton11: TToolButton;
    btnPesquisar: TToolButton;
    ToolButton15: TToolButton;
    btnSair: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdtIDADE: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit24: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup36: TDBRadioGroup;
    DBRadioGroup40: TDBRadioGroup;
    DBRadioGroup82: TDBRadioGroup;
    DBRadioGroup78: TDBRadioGroup;
    DBEdit7: TDBEdit;
    ImgListEstudanteCOMU: TImageList;
    dsPesqComuEst: TDataSource;
    dsComuEst: TDataSource;
    DBComboBox5: TDBComboBox;
    Label15: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNovoClick(Sender: TObject);
    procedure DBEDTIDADEExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComunicantesEstu: TfrmComunicantesEstu;
  cont: integer;
implementation

{$R *.dfm}

uses UdmEstudantecomu, UfrmFichaEstudantes;      procedure LocalizadoComunicante;
begin
  with dmEstudanteComu.cdsCadEstudanteComu do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ESTCOMU_COMUNUMPRONT').AsString:=dmEstudanteComu.cdsLocEstudanteComuESTCOMU_COMUNUMPRONT.AsString;
    Open;
  end;
end;

procedure TfrmComunicantesEstu.btnCancelarClick(Sender: TObject);
begin
  dmEstudanteComu.cdsCadEstudanteComu.Cancel;
  dmEstudanteComu.cdsCadEstudanteComu.CancelUpdates;
  btnSalvar.Enabled:=False;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=False;
  btnExcluir.Enabled:=True;
  btnNovo.Enabled:=True;
  btnPesquisar.Enabled:=True;
  btnsair.Enabled:=True;
end;

procedure TfrmComunicantesEstu.btnEditarClick(Sender: TObject);
begin
  dmEstudanteComu.cdsCadEstudanteComu.Edit;
  btnSalvar.Enabled:=True;
  btnEditar.Enabled:=False;
  btnCancelar.Enabled:=True;
  btnExcluir.Enabled:=False;
  btnNovo.Enabled:=False;
  btnPesquisar.Enabled:=False;
  btnsair.Enabled:=False;
  Cont:=Cont-1;
end;

procedure TfrmComunicantesEstu.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dmEstudanteComu.cdsCadEstudanteComu.Delete;
      if dmEstudanteComu.cdsCadEstudanteComu.ApplyUpdates(0)<>0 then
        dmEstudanteComu.cdsCadEstudanteComu.CancelUpdates;
        btnSalvar.Enabled:=False;
        btnEditar.Enabled:=False;
        btnCancelar.Enabled:=False;
        btnExcluir.Enabled:=False;
        btnNovo.Enabled:=True;
        btnPesquisar.Enabled:=True;
        btnsair.Enabled:=True;
    end
    else
      begin
        dmEstudanteComu.cdsCadEstudanteComu.Cancel;
        dmEstudanteComu.cdsCadEstudanteComu.CancelUpdates;
      end;
end;

procedure TfrmComunicantesEstu.btnNovoClick(Sender: TObject);
begin
if MessageDlg('Deseja lança novo Comunicante?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dmEstudanteComu.cdsCadEstudanteComu.Refresh;
      dmEstudanteComu.cdsCadEstudanteComu.Append;
      btnSalvar.Enabled:=True;
      btnEditar.Enabled:=False;
      btnCancelar.Enabled:=True;
      btnExcluir.Enabled:=False;
      btnNovo.Enabled:=False;
      btnPesquisar.Enabled:=False;
      btnsair.Enabled:=False;
      dmEstudanteComu.cdsCadEstudanteComuESTCOMU_DATACAD.Value:=FormatDatetime('dd"/"mm"/"yyyy',now);
      //Gerar o Código do comunicante do Estudante
        case Cont of
        0:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'A';
        1:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'B';
        2:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'C';
        3:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'D';
        4:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'E';
        5:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'F';
        6:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'G';
        7:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'H';
        8:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'I';
        9:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'J';
        10:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'L';
        11:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'M';
        12:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'N';
        13:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'O';
        14:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'P';
        15:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'Q';
        16:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'R';
        17:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'S';
      end;
      dmEstudantecomu.cdsCadEstudanteComuESTCOMU_NUMPRONTALT.value:=DBEdit1.Text;
      dmEstudantecomu.cdsCadEstudanteComuESTCOMU_ESTNUMPRONT.Value:=frmFichaEstudantes.DBENumPront.Text;
      DBEdit2.SetFocus;
    end;
end;

procedure TfrmComunicantesEstu.btnPesquisarClick(Sender: TObject);
begin
   With dmEstudanteComu.cdsLocEstudanteComu do
    begin
      close;
      FetchParams;
      Params.ParamByName('ESTCOMU_ESTNUMPRONT').AsString:=frmFichaEstudantes.DBENumPront.Text;
      open;
      DBGrid1.SetFocus;
    end;
end;

procedure TfrmComunicantesEstu.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmComunicantesEstu.btnSalvarClick(Sender: TObject);
begin
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dmEstudanteComu.cdsCadEstudanteComu.Post;
      if dmEstudanteComu.cdsCadEstudanteComu.ApplyUpdates(0)<>0 then
      dmEstudanteComu.cdsCadEstudanteComu.CancelUpdates;
      btnSalvar.Enabled:=False;
      btnEditar.Enabled:=true;
      btnCancelar.Enabled:=False;
      btnExcluir.Enabled:=true;
      btnNovo.Enabled:=True;
      btnPesquisar.Enabled:=True;
      btnsair.Enabled:=True;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
      frmComunicantesEstu.btnPesquisarClick(Self);
      Cont:=Cont+1;
    end
  else
  begin
    dmEstudanteComu.cdsCadEstudanteComu.Cancel;
    dmEstudanteComu.cdsCadEstudanteComu.CancelUpdates;
  end;
end;

procedure TfrmComunicantesEstu.DBEDTIDADEExit(Sender: TObject);
begin
 try
    strtodate(DBEDTIDADE.Text); //-- Verifica se a data é valida
  except
    messagedlg('Data de nascimento inválida!', MTERROR, [MBOK], 0);
    abort;
  end;
  DBEDIT4.Text:= inttoStr(Trunc((Date - StrToDate(DBEDTIDADE.Text))/365.25));
end;

procedure TfrmComunicantesEstu.DBGrid1DblClick(Sender: TObject);
begin
  LocalizadoComunicante;
end;

procedure TfrmComunicantesEstu.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmEstudanteComu.cdsCadEstudanteComu.Close;
end;

procedure TfrmComunicantesEstu.FormCreate(Sender: TObject);
begin
 if not assigned(dmEstudantecomu) then
    begin
      dmEstudantecomu:=TdmEstudantecomu.Create(Self);
      dmEstudantecomu.cdsCadEstudanteComu.Open;
    end;
end;

procedure TfrmComunicantesEstu.FormDestroy(Sender: TObject);
begin
  dmEstudanteComu.Free;
  dmEstudanteComu:=nil;
end;

end.
