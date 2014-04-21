unit UdmPrincipal;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,Inifiles,Winapi.Messages,
  Vcl.Dialogs, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TdmPrincipal = class(TDataModule)
    SqlConPrincipal: TSQLConnection;
    sdsCadUsuario: TSQLDataSet;
    dpsCadUsuario: TDataSetProvider;
    cdsCadUsuario: TClientDataSet;
    sdsLocUsuario: TSQLDataSet;
    dspLocUsuario: TDataSetProvider;
    cdsLocUsuario: TClientDataSet;
    sdsLogin: TSQLDataSet;
    dpsLogin: TDataSetProvider;
    cdsLogin: TClientDataSet;
    sdsCadUsuarioUSUA_ID: TIntegerField;
    sdsCadUsuarioUSUA_NOME: TStringField;
    sdsCadUsuarioUSUA_SENHA: TStringField;
    cdsCadUsuarioUSUA_ID: TIntegerField;
    cdsCadUsuarioUSUA_NOME: TStringField;
    cdsCadUsuarioUSUA_SENHA: TStringField;
    cdsLocUsuarioUSUA_ID: TIntegerField;
    cdsLocUsuarioUSUA_NOME: TStringField;
    cdsLocUsuarioUSUA_SENHA: TStringField;
    sdsLoginUSUA_ID: TIntegerField;
    sdsLoginUSUA_NOME: TStringField;
    sdsLoginUSUA_SENHA: TStringField;
    cdsLoginUSUA_ID: TIntegerField;
    cdsLoginUSUA_NOME: TStringField;
    cdsLoginUSUA_SENHA: TStringField;
    procedure SqlConPrincipalBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

uses
  Vcl.Forms;

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

procedure TdmPrincipal.SqlConPrincipalBeforeConnect(Sender: TObject);
var
Arquivo: TIniFile{uses IniFiles};
begin
  Try
  Arquivo:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'CONF.ini');
  with dmPrincipal.SqlConPrincipal do
  begin
    Params.Values['DATABASE'] := Arquivo.ReadString('DADOS','DATABASE','');
    Params.Values['USERNAME'] := Arquivo.ReadString('DADOS','USERNAME','');
    Params.Values['PASSWORD'] := Arquivo.ReadString('DADOS','PASSWORD','');
    Arquivo.Free
  end;
 Except
ShowMessage('Não foi possivel conectar! Nenhum servidor disponível...');
End;
end;
end.
