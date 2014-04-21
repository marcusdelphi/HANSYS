unit UdmEstudantecomu;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Data.DB,
  Datasnap.Provider, Datasnap.DBClient;

type
  TdmEstudantecomu = class(TDataModule)
    cdsLocEstudanteComu: TClientDataSet;
    cdsCadEstudanteComu: TClientDataSet;
    dpsLocEstudanteComu: TDataSetProvider;
    dpsCadEstudanteComu: TDataSetProvider;
    sdsLocEstudanteComu: TSQLDataSet;
    sdsCadEstudanteComu: TSQLDataSet;
    SQLQueryEstudanteComu: TSQLQuery;
    SQLQueryEstudantes: TSQLQuery;
    SQLQueryEstudantesMAX: TStringField;
    SQLQueryEstudanteComuMAX: TStringField;
    cdsCadEstudanteComuESTCOMU_CASO_NOVO_NUM: TStringField;
    cdsCadEstudanteComuESTCOMU_CASO_NOVO_OPC: TStringField;
    cdsCadEstudanteComuESTCOMU_CICA_BCG_DIAM: TSmallintField;
    cdsCadEstudanteComuESTCOMU_CICA_BCG_NUM: TSmallintField;
    cdsCadEstudanteComuESTCOMU_COMUNUMPRONT: TStringField;
    cdsCadEstudanteComuESTCOMU_DATACAD: TStringField;
    cdsCadEstudanteComuESTCOMU_DIAGN_MOLE: TStringField;
    cdsCadEstudanteComuESTCOMU_END: TStringField;
    cdsCadEstudanteComuESTCOMU_ESTNUMPRONT: TStringField;
    cdsCadEstudanteComuESTCOMU_FORMA_CLIN: TStringField;
    cdsCadEstudanteComuESTCOMU_GEN: TStringField;
    cdsCadEstudanteComuESTCOMU_GRAU_PAREN: TStringField;
    cdsCadEstudanteComuESTCOMU_IDADE: TSmallintField;
    cdsCadEstudanteComuESTCOMU_NASC: TStringField;
    cdsCadEstudanteComuESTCOMU_NOME: TStringField;
    cdsCadEstudanteComuESTCOMU_NUMPRONTALT: TStringField;
    cdsCadEstudanteComuESTCOMU_OBS: TStringField;
    cdsCadEstudanteComuESTCOMU_REF: TStringField;
    cdsCadEstudanteComuESTCOMU_PERI_CONV: TStringField;
    cdsCadEstudanteComuESTCOMU_SOR_COTOFF: TStringField;
    cdsCadEstudanteComuESTCOMU_SOR_DATA: TStringField;
    cdsCadEstudanteComuESTCOMU_SOR_DO: TStringField;
    cdsCadEstudanteComuESTCOMU_SOR_ELISA: TStringField;
    cdsCadEstudanteComuESTCOMU_SOR_LOCAL: TStringField;
    cdsCadEstudanteComuESTCOMU_TEL: TStringField;
    cdsCadEstudanteComuESTCOMU_SOR_TECN_RESP: TStringField;
    cdsCadEstudanteComuESTCOMU_TESTERAPIDO: TStringField;
    cdsCadEstudanteComuESTCOMU_TIPO_CONV: TStringField;
    sdsCadEstudanteComuESTCOMU_CASO_NOVO_NUM: TStringField;
    sdsCadEstudanteComuESTCOMU_CASO_NOVO_OPC: TStringField;
    sdsCadEstudanteComuESTCOMU_CICA_BCG_DIAM: TSmallintField;
    sdsCadEstudanteComuESTCOMU_CICA_BCG_NUM: TSmallintField;
    sdsCadEstudanteComuESTCOMU_COMUNUMPRONT: TStringField;
    sdsCadEstudanteComuESTCOMU_DATACAD: TStringField;
    sdsCadEstudanteComuESTCOMU_DIAGN_MOLE: TStringField;
    sdsCadEstudanteComuESTCOMU_END: TStringField;
    sdsCadEstudanteComuESTCOMU_ESTNUMPRONT: TStringField;
    sdsCadEstudanteComuESTCOMU_FORMA_CLIN: TStringField;
    sdsCadEstudanteComuESTCOMU_GEN: TStringField;
    sdsCadEstudanteComuESTCOMU_GRAU_PAREN: TStringField;
    sdsCadEstudanteComuESTCOMU_IDADE: TSmallintField;
    sdsCadEstudanteComuESTCOMU_NASC: TStringField;
    sdsCadEstudanteComuESTCOMU_NOME: TStringField;
    sdsCadEstudanteComuESTCOMU_NUMPRONTALT: TStringField;
    sdsCadEstudanteComuESTCOMU_OBS: TStringField;
    sdsCadEstudanteComuESTCOMU_REF: TStringField;
    sdsCadEstudanteComuESTCOMU_PERI_CONV: TStringField;
    sdsCadEstudanteComuESTCOMU_SOR_COTOFF: TStringField;
    sdsCadEstudanteComuESTCOMU_SOR_DATA: TStringField;
    sdsCadEstudanteComuESTCOMU_SOR_DO: TStringField;
    sdsCadEstudanteComuESTCOMU_SOR_ELISA: TStringField;
    sdsCadEstudanteComuESTCOMU_SOR_LOCAL: TStringField;
    sdsCadEstudanteComuESTCOMU_TEL: TStringField;
    sdsCadEstudanteComuESTCOMU_SOR_TECN_RESP: TStringField;
    sdsCadEstudanteComuESTCOMU_TESTERAPIDO: TStringField;
    sdsCadEstudanteComuESTCOMU_TIPO_CONV: TStringField;
    cdsLocEstudanteComuESTCOMU_COMUNUMPRONT: TStringField;
    cdsLocEstudanteComuESTCOMU_NOME: TStringField;
    cdsLocEstudanteComuESTCOMU_IDADE: TSmallintField;
    cdsLocEstudanteComuESTCOMU_CASO_NOVO_OPC: TStringField;
    cdsLocEstudanteComuESTCOMU_TEL: TStringField;
    cdsLocEstudanteComuESTCOMU_ESTNUMPRONT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmEstudantecomu: TdmEstudantecomu;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses UdmPrincipal;

{$R *.dfm}

end.
