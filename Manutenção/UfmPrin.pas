unit UfmPrin;

interface

uses
  Windows,Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, IBServices,
  Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Mask, Data.DB, Datasnap.DBClient,
  Vcl.Buttons;

type
  TfrmPrin = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    PageControl1: TPageControl;
    tbsBackup: TTabSheet;
    tbsRestore: TTabSheet;
    tbsConfiguracoes: TTabSheet;
    IBBackupService1: TIBBackupService;
    IBRestoreService1: TIBRestoreService;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    memBackup: TMemo;
    cbxIgnoreChecksums: TCheckBox;
    cbxIgnoreLimbo: TCheckBox;
    cbxMetadataOnly: TCheckBox;
    cbxConvertExtTables: TCheckBox;
    cbxNoGarbageCollection: TCheckBox;
    cbxOldMetadataDesc: TCheckBox;
    cbxNonTransportable: TCheckBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtBackupDatabaseName: TEdit;
    edtBackupFile: TEdit;
    GroupBox4: TGroupBox;
    cbxReplace: TCheckBox;
    cbxOneRelationAtATime: TCheckBox;
    cbxValidationCheck: TCheckBox;
    cbxNoShadow: TCheckBox;
    cbxCreateNewDB: TCheckBox;
    cbxDeactivateIndexes: TCheckBox;
    cbxUseAllSpace: TCheckBox;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edtRestoreBackupFile: TEdit;
    edtRestoreDatabaseName: TEdit;
    GroupBox6: TGroupBox;
    memRestore: TMemo;
    cbxNoValidityCheck: TCheckBox;
    GroupBox7: TGroupBox;
    btnBackup: TButton;
    btnRestore: TButton;
    GroupBox10: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox8: TGroupBox;
    edtUsuario: TLabeledEdit;
    edtSenha: TLabeledEdit;
    edtServerName: TLabeledEdit;
    spePageSize: TSpinEdit;
    Label5: TLabel;
    rgpProtocol: TRadioGroup;
    edtBackupFile2: TEdit;
    edtBackupFile3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Timer1: TTimer;
    lbHora: TLabel;
    cdsConfigBackup: TClientDataSet;
    cdsConfigBackuphora: TStringField;
    cdsConfigBackupautomatico: TBooleanField;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    CkbAutomatico: TCheckBox;
    btnAplicar: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure btnRestoreClick(Sender: TObject);
    function NomeDoComputador(): string;
    procedure Timer1Timer(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrin: TfrmPrin;
  TEMPO: STRING;
implementation

{$R *.dfm}

uses UfrmBackupAutomatico;

procedure TfrmPrin.btnAplicarClick(Sender: TObject);
begin
   try
     Windows.DeleteFile('C:\HANSYS\Manutenção\configBkp.xml');
   Except
    ShowMessage(':(  Não foi possivél deletar!!');
    end;
   repeat
     begin
      cdsConfigBackup.Delete;
     end;
   until cdsConfigBackup.RecordCount=0 ;

  cdsConfigBackup.Open;
  cdsConfigBackup.insert;
  cdsConfigBackuphora.Value:=MaskEdit1.Text;
  if CkbAutomatico.Checked=true then
    begin
    cdsConfigBackupautomatico.Value:=true;
    end
    else
    begin
    cdsConfigBackupautomatico.Value:=false;
    end;
    cdsConfigBackup.SaveToFile('C:\HANSYS\Manutenção\configBkp.xml',dfXML);
    ShowMessage('Configurações Aplicadas com sucesso!');

end;

procedure TfrmPrin.btnBackupClick(Sender: TObject);
begin
  //muda para a página de Backup
  PageControl1.ActivePage:= tbsBackup;

  Screen.Cursor:= CrHourGlass;
  memBackup.Lines.Clear;
  with IBbackupService1 do
  begin
    //Define o nome do servidor do banco de dados
    ServerName:= edtServerName.Text;

    //Define o protocolo da rede
    case rgpProtocol.ItemIndex of
      0: Protocol:= TCP;
      1: Protocol:= Local;
    end;

    //Configura os parâmetros do Backup
    LoginPrompt:= False;
    Params.Clear;
    Params.Values['user_name']:= edtUsuario.Text;
    Params.Values['password']:= edtSenha.Text;

    //Ativa verbose para mostrar informações do processo de backup
    Verbose := True;

    //Configura as opções de Backup
    Options:= [];
    if cbxNonTransportable.Checked then
      Options:= Options + [NonTransportable];
    if cbxIgnoreLimbo.Checked then
      Options:= Options + [IgnoreLimbo];
    if cbxMetadataOnly.Checked then
      Options:= Options + [MetadataOnly];
    if cbxNoGarbageCollection.Checked then
      Options:= Options + [NoGarbageCollection];
    if cbxIgnoreChecksums.Checked then
      Options:= Options + [IgnoreChecksums];
    if cbxOldMetadataDesc.Checked then
      Options:= Options + [OldMetadataDesc];
    if cbxConvertExtTables.Checked then
      Options:= Options + [ConvertExtTables];

    //Configura as propriedades de Backup
    DatabaseName:= edtBackupDatabaseName.Text;
    BackupFile.Clear;
    BackupFile.Add(edtBackupFile.Text);
    try
      try
        Active:= True;

        //Inicia a operação
        ServiceStart;

        //Lista os processo no Memo
        while not Eof do
          memBackup.Lines.Add(GetNextLine);
      except
        on e: exception do
        begin
          memBackup.Lines.Add('Erro: ' + e.Message);
        end;
      end;
    finally
      Active:= False;
      Screen.Cursor:= CrDefault;
    end;
    DatabaseName:= edtBackupDatabaseName.Text;
    BackupFile.Clear;
    BackupFile.Add(edtBackupFile2.Text);
     try
      try
        Active:= True;

        //Inicia a operação
        ServiceStart;

        //Lista os processo no Memo
        while not Eof do
          memBackup.Lines.Add(GetNextLine);
      except
        on e: exception do
        begin
          memBackup.Lines.Add('Erro: ' + e.Message);
        end;
      end;
    finally
      Active:= False;
      Screen.Cursor:= CrDefault;
    end;

    DatabaseName:= edtBackupDatabaseName.Text;
    BackupFile.Clear;
    BackupFile.Add(edtBackupFile3.Text);
     try
      try
        Active:= True;

        //Inicia a operação
        ServiceStart;

        //Lista os processo no Memo
        while not Eof do
          memBackup.Lines.Add(GetNextLine);
      except
        on e: exception do
        begin
          memBackup.Lines.Add('Erro: ' + e.Message);
        end;
      end;
    finally
      Active:= False;
      Screen.Cursor:= CrDefault;
    end;
  end;
end;

procedure TfrmPrin.btnRestoreClick(Sender: TObject);
begin
//muda para a página de Restore
  PageControl1.ActivePage:= tbsRestore;

  Screen.Cursor:= CrHourGlass;
  memRestore.Clear;
  with IBRestoreService1 do
  begin
    //Define o nome do servidor do banco de dados
    ServerName:= edtServerName.Text;

    //Define o protocolo da rede
    case rgpProtocol.ItemIndex of
      0: Protocol:= TCP;
      1: Protocol:= Local;
    end;

    //Configura os parâmetros do Restore
    LoginPrompt:= False;
    Params.Clear;
    Params.Values['user_name']:= edtUsuario.Text;
    Params.Values['password']:= edtSenha.Text;

    //Ativa verbose para mostrar informações do processo de backup
    Verbose:= True;

    //Configura as opções de Restore
    Options:= [];
    if cbxReplace.Checked then
      Options:= Options + [Replace];
    if cbxCreateNewDB.Checked then
      Options:= Options + [CreateNewDB];
    if cbxUseAllSpace.Checked then
      Options:= Options + [UseAllSpace];
    if cbxValidationCheck.Checked then
      Options:= Options + [ValidationCheck];
    if cbxNoShadow.Checked then
      Options:= Options + [NoShadow];
    if cbxOneRelationAtATime.Checked then
      Options:= Options + [OneRelationAtATime];
    if cbxDeactivateIndexes.Checked then
      Options:= Options + [DeactivateIndexes];
    if cbxNoValidityCheck.Checked then
      Options:= Options + [NoValidityCheck];

    //Configura o tamanho de página
    PageSize:= spePageSize.Value;

    //Configura as propriedades de Restore
    DatabaseName.Clear;
    DatabaseName.Add(edtRestoreDatabaseName.Text);
    BackupFile.Clear;
    BackupFile.Add(edtRestoreBackupFile.Text);
    try
      try
        Active:= True;

        //Inicia a operação
        ServiceStart;

        //Lista os processo no Memo
        while not Eof do
          memRestore.Lines.Add(GetNextLine);
      except
        on e: exception do
        begin
          memRestore.Lines.Add('Erro: ' + e.Message);
        end;
      end;
    finally
      Active:= False;
      Screen.Cursor:= CrDefault;
    end;
  end;
end;

procedure TfrmPrin.FormShow(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:='Laboratório de Suporte a Decisão - LSD -'+
  'E-mail: lsdufopa@googlegroups.com';
  edtServerName.Text:=NomeDoComputador();
end;

function TfrmPrin.NomeDoComputador: string;
const
  MAX_COMPUTER_LENGTH = 30;
  var
  pNome : PChar;
  len : DWord;
  begin
    Result := '';
      try
        len := MAX_COMPUTER_LENGTH + 1;
        GetMem(pNome,len);
        if GetComputerName(pNome, len) then
         begin
          Result := pNome;
         end
         else
          begin
          Result := 'Não foi possivel obter o nome deste computador!';
          end;
      finally
      FreeMem(pNome, len);
    end;
    cdsConfigBackup.LoadFromFile('C:\HANSYS\Manutenção\configBkp.xml');
    CkbAutomatico.Checked:=cdsConfigBackupautomatico.Value;
    MaskEdit1.Text:=cdsConfigBackuphora.Value;
end;

procedure TfrmPrin.Timer1Timer(Sender: TObject);
begin
  TEMPO:=FormatDateTime('hh:mm:ss',now);
  lbHora.Caption:=TEMPO;

  if TEMPO = MaskEdit1.Text then
    begin
      frmPrin.btnBackupClick(Self);
    end;
end;

end.
