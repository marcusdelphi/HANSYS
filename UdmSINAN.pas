unit UdmSINAN;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient;

type
  TdmSINAN = class(TDataModule)
    cdsLocSINAN: TClientDataSet;
    dpsLocSINAN: TDataSetProvider;
    sdsLocSINAN: TSQLDataSet;
    cdsLocSINANSINAN_ID: TSmallintField;
    cdsLocSINANSINAN_NOM_PACIENT: TStringField;
    cdsLocSINANSINAN_DT_NASC: TStringField;
    cdsLocSINANSINAN_SEXO: TStringField;
    cdsLocSINANSINAN_CORPELE: TStringField;
    cdsLocSINANSINAN_MAE: TStringField;
    cdsLocSINANSINAN_BAIRRO: TStringField;
    cdsLocSINANSINAN_ENDERECO: TStringField;
    cdsLocSINANSINAN_NUMERO: TStringField;
    cdsLocSINANSINAN_REFEREN: TStringField;
    cdsLocSINANSINAN_TELEFON: TStringField;
    cdsLocSINANSINAN_NUM_LESOES: TIntegerField;
    cdsLocSINANSINAN_FORMCLIN: TStringField;
    cdsLocSINANSINAN_CLASSOPERA: TStringField;
    cdsLocSINANSINAN_BACILOSCOP: TStringField;
    cdsLocSINANSINAN_ESQUEMA_TRAT: TStringField;
    cdsLocSINANSINAN_NERVOSAFET: TIntegerField;
    cdsLocSINANSINAN_CEP: TStringField;
    cdsLocSINANSINAN_DT_DIAG: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSINAN: TdmSINAN;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses UdmPrincipal;

{$R *.dfm}

end.
