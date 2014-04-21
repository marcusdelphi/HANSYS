unit UfrmFichaEstudantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnList, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TfrmFichaEstudantes = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Image1: TImage;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
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
    ImgListEstudantes: TImageList;
    Panel3: TPanel;
    btnPesquisar: TToolButton;
    ToolButton15: TToolButton;
    btnSair: TToolButton;
    ActionList1: TActionList;
    Novo: TAction;
    Cancelar: TAction;
    Excluir: TAction;
    Editar: TAction;
    Salvar: TAction;
    Pesquisar: TAction;
    Label1: TLabel;
    DBENumPront: TDBEdit;
    DsFichaEstudantes: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label241: TLabel;
    Label6: TLabel;
    DBEDTIDADE: TDBEdit;
    DBCBGENERO: TDBComboBox;
    Label7: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    GroupBox2: TGroupBox;
    DBRadioGroup2: TDBRadioGroup;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    Label23: TLabel;
    DBEdit20: TDBEdit;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    Label29: TLabel;
    DBEdit26: TDBEdit;
    Label30: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBComboBox3: TDBComboBox;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    DBComboBox4: TDBComboBox;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    DBComboBox5: TDBComboBox;
    Label28: TLabel;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure NovoExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure EditarExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    function getCodEstudante:AnsiString;
    function ExtractSTR(Valor:String):String;
    procedure PesquisarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFichaEstudantes: TfrmFichaEstudantes;

implementation

{$R *.dfm}

uses UdmFichaEstudante, UfrmPesqEstudantes, System.SysUtils, UfrmEstudanteComu,
  UfrmComunicantesEstu;

procedure TfrmFichaEstudantes.DBComboBox2Change(Sender: TObject);
begin
 if DBComboBox2.ItemIndex=1 then
   begin
   DBEdit14.Enabled:=False;
   DBEdit18.Enabled:=False;
  end
  else
    begin
      DBEdit14.Enabled:=True;
      DBEdit18.Enabled:=True;
    end;
end;

procedure TfrmFichaEstudantes.DBEdit5Exit(Sender: TObject);
begin
   try
    strtodate(DBEDIT5.Text); //-- Verifica se a data é valida
  except
    messagedlg('Data de nascimento inválida!', MTERROR, [MBOK], 0);
    abort;
  end;
  DBEDTIDADE.Text:= inttoStr(Trunc((Date - StrToDate(DBEDIT5.Text))/365.25));
end;

procedure TfrmFichaEstudantes.EditarExecute(Sender: TObject);
begin
  frmFichaEstudantes.btnEditarClick(Self);
end;

procedure TfrmFichaEstudantes.ExcluirExecute(Sender: TObject);
begin
  frmFichaEstudantes.btnExcluirClick(Self);
end;

function TfrmFichaEstudantes.ExtractSTR(Valor: String): String;
var
  aString : String;
  Lista   : TStringList;
begin
  try
    Lista := TStringList.Create;
    aString := Valor;
    ExtractStrings( ['E'], [' '], PChar(aString), Lista );
    Result:=Lista.Text;
  finally
    FreeAndNil(Lista);
  end;

end;

procedure TfrmFichaEstudantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if MessageDlg('Deseja realmente sair do Cadastro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
    begin
    //libera a memoria  e fecha ou Não a Tela
    Action := caFree; //ação do objeto TCloseAction para fechar a tela
    end
    else
    Action := caNone ; //ação do objeto TCloseAction para não fechar a tela
end;

procedure TfrmFichaEstudantes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmFichaEstudante.cdsCadEstudante.Close;
end;

procedure TfrmFichaEstudantes.FormCreate(Sender: TObject);
begin
//ABRI OS DATASET'S
  if not assigned(dmFichaEstudante) then
    begin
      dmFichaEstudante:=TdmFichaEstudante.Create(Self);
      dmFichaEstudante.cdsCadEstudante.Open;
    end;
end;

procedure TfrmFichaEstudantes.FormDestroy(Sender: TObject);
begin
  dmFichaEstudante.Free;
  dmFichaEstudante:=nil;
end;

procedure TfrmFichaEstudantes.FormShow(Sender: TObject);
begin
  DBENumPront.SetFocus;
end;

function TfrmFichaEstudantes.getCodEstudante: AnsiString;
begin
  dmFichaEstudante.SQLQueryEstudantes.Open;
  dmFichaEstudante.SQLQueryEstudantes.Refresh;
  Result:=dmFichaEstudante.SQLQueryEstudantesMax.Value;
end;

procedure TfrmFichaEstudantes.NovoExecute(Sender: TObject);
begin
  frmFichaEstudantes.btnNovoClick(Self);
end;

procedure TfrmFichaEstudantes.PesquisarExecute(Sender: TObject);
begin
  try
    frmPesqEstudantes:=TfrmPesqEstudantes.Create(Self);
    frmPesqEstudantes.ShowModal;
  finally
    frmPesqEstudantes.Free;
    frmPesqEstudantes:=nil;
  end;
end;

procedure TfrmFichaEstudantes.SalvarExecute(Sender: TObject);
begin
  frmFichaEstudantes.btnSalvarClick(Self);
end;

procedure TfrmFichaEstudantes.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFichaEstudantes.btnSalvarClick(Sender: TObject);
begin
  if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dmFichaEstudante.cdsCadEstudante.Post;
      if dmFichaEstudante.cdsCadEstudante.ApplyUpdates(0)<>0 then
      dmFichaEstudante.cdsCadEstudante.CancelUpdates;
      btnSalvar.Enabled:=False;
      btnEditar.Enabled:=true;
      btnCancelar.Enabled:=False;
      btnExcluir.Enabled:=true;
      btnNovo.Enabled:=True;
      btnPesquisar.Enabled:=True;
      btnsair.Enabled:=True;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
  else
  begin
    dmFichaEstudante.cdsCadEstudante.Cancel;
    dmFichaEstudante.cdsCadEstudante.CancelUpdates;
  end;
end;

procedure TfrmFichaEstudantes.CancelarExecute(Sender: TObject);
begin
  frmFichaEstudantes.btnCancelarClick(Self);
end;

procedure TfrmFichaEstudantes.btnEditarClick(Sender: TObject);
begin
  dmFichaEstudante.cdsCadEstudante.Edit;
  btnSalvar.Enabled:=True;
  btnEditar.Enabled:=False;
  btnCancelar.Enabled:=True;
  btnExcluir.Enabled:=False;
  btnNovo.Enabled:=False;
  btnPesquisar.Enabled:=False;
  btnsair.Enabled:=False;
end;

procedure TfrmFichaEstudantes.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dmFichaEstudante.cdsCadEstudante.Delete;
      if dmFichaEstudante.cdsCadEstudante.ApplyUpdates(0)<>0 then
        dmFichaEstudante.cdsCadEstudante.CancelUpdates;
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
        dmFichaEstudante.cdsCadEstudante.Cancel;
        dmFichaEstudante.cdsCadEstudante.CancelUpdates;
      end;
end;

procedure TfrmFichaEstudantes.btnNovoClick(Sender: TObject);
var
  temp1:String;
  temp2:String;
  Cod,err:Integer;
begin
  if MessageDlg('Deseja Mesmo Abrir Um NOVO FORMULÁRIO?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dmFichaEstudante.cdsCadEstudante.Refresh;
      dmFichaEstudante.cdsCadEstudante.Append;
      DBEdit2.SetFocus;
      btnSalvar.Enabled:=True;
      btnEditar.Enabled:=False;
      btnCancelar.Enabled:=True;
      btnExcluir.Enabled:=False;
      btnNovo.Enabled:=False;
      btnPesquisar.Enabled:=False;
      btnsair.Enabled:=False;
      dmFichaEstudante.cdsCadEstudanteESTU_DATACAD.Value:=FormatDatetime('dd"/"mm"/"yyyy',now);
      //Gerar o Código do Estudante
      temp1:=GetCodEstudante;//Recupera o Ultimo Código Cadastrado
      temp2:=ExtractSTR(temp1);//Executa a Função que Quebra a String
      val(temp2,Cod,err);//Função que Converte a Cadeia de Caracteres em Inteiro
      Cod:=Cod+1;
      DBENumPront.Text:='E'+IntToStr(cod);
      dmFichaEstudante.cdsCadEstudanteESTU_NUMPRONTALT.Value:=DBENumPront.Text;
    end;
end;

procedure TfrmFichaEstudantes.btnPesquisarClick(Sender: TObject);
begin
  try
    frmPesqEstudantes:=TfrmPesqEstudantes.Create(Self);
    frmPesqEstudantes.ShowModal;
  finally
    frmPesqEstudantes.Free;
    frmPesqEstudantes:=nil;
  end;
end;

procedure TfrmFichaEstudantes.BitBtn1Click(Sender: TObject);
begin
 try
   frmComunicantesEstu:=TfrmComunicantesEstu.Create(Self);
   frmComunicantesEstu.ShowModal;
 finally
   frmComunicantesEstu.Free;
   frmComunicantesEstu:=nil;
 end;
end;

procedure TfrmFichaEstudantes.btnCancelarClick(Sender: TObject);
begin
  dmFichaEstudante.cdsCadEstudante.Cancel;
  dmFichaEstudante.cdsCadEstudante.CancelUpdates;
  btnSalvar.Enabled:=False;
  btnEditar.Enabled:=True;
  btnCancelar.Enabled:=False;
  btnExcluir.Enabled:=True;
  btnNovo.Enabled:=True;
  btnPesquisar.Enabled:=True;
  btnsair.Enabled:=True;
end;

end.
