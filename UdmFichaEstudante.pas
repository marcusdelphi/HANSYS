unit UdmFichaEstudante;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient, Data.DB,
  Data.SqlExpr, Datasnap.Provider;

type
  TdmFichaEstudante = class(TDataModule)
    dpsCadEstudante: TDataSetProvider;
    sdsCadEstudante: TSQLDataSet;
    cdsCadEstudante: TClientDataSet;
    dpsLocEstudante: TDataSetProvider;
    sdsLocEstudante: TSQLDataSet;
    cdsLocEstudante: TClientDataSet;
    SQLQueryEstudantes: TSQLQuery;
    SQLQueryEstudantesMAX: TStringField;
    sdsCadEstudanteESTU_BAIRRO: TStringField;
    sdsCadEstudanteESTU_CEL: TStringField;
    sdsCadEstudanteESTU_CEP: TStringField;
    sdsCadEstudanteESTU_CICA_BCG_DIAM: TSmallintField;
    sdsCadEstudanteESTU_CICA_BCG_NUM: TSmallintField;
    sdsCadEstudanteESTU_CIDADE: TStringField;
    sdsCadEstudanteESTU_CLASS_OPER: TStringField;
    sdsCadEstudanteESTU_CONT: TStringField;
    sdsCadEstudanteESTU_CONT_NOME: TStringField;
    sdsCadEstudanteESTU_CONV_CASO_HANS: TStringField;
    sdsCadEstudanteESTU_DATACAD: TStringField;
    sdsCadEstudanteESTU_DIAG_MOLE: TStringField;
    sdsCadEstudanteESTU_END: TStringField;
    sdsCadEstudanteESTU_ESCOLA: TStringField;
    sdsCadEstudanteESTU_ETNIA: TStringField;
    sdsCadEstudanteESTU_FONE_FIXO: TStringField;
    sdsCadEstudanteESTU_FORMA_CLIN: TStringField;
    sdsCadEstudanteESTU_GENERO: TStringField;
    sdsCadEstudanteESTU_GENO_DESC: TStringField;
    sdsCadEstudanteESTU_GENO_REALIZ: TStringField;
    sdsCadEstudanteESTU_GEOREF: TStringField;
    sdsCadEstudanteESTU_IDADE: TSmallintField;
    sdsCadEstudanteESTU_LATITUDE: TStringField;
    sdsCadEstudanteESTU_LONGITUDE: TStringField;
    sdsCadEstudanteESTU_NATU_CID: TStringField;
    sdsCadEstudanteESTU_NATU_UF: TStringField;
    sdsCadEstudanteESTU_NOME: TStringField;
    sdsCadEstudanteESTU_NOMEMAE: TStringField;
    sdsCadEstudanteESTU_NOMEPAI: TStringField;
    sdsCadEstudanteESTU_NOVOCASO: TStringField;
    sdsCadEstudanteESTU_NOVONUM: TStringField;
    sdsCadEstudanteESTU_NUMPRONT: TStringField;
    sdsCadEstudanteESTU_NUMPRONTALT: TStringField;
    sdsCadEstudanteESTU_PONTO_REF: TStringField;
    sdsCadEstudanteESTU_SENS_MEDI_FOLP: TStringField;
    sdsCadEstudanteESTU_SENS_MEDI_GYRA: TStringField;
    sdsCadEstudanteESTU_SENS_MEDI_RPOB: TStringField;
    sdsCadEstudanteESTU_SERIEATUAL: TStringField;
    sdsCadEstudanteESTU_SOR_COTOFF: TStringField;
    sdsCadEstudanteESTU_SOR_DO: TStringField;
    sdsCadEstudanteESTU_SOR_ELISA: TStringField;
    sdsCadEstudanteESTU_SOR_REALIZ: TStringField;
    sdsCadEstudanteESTU_TESTERAPIDO: TStringField;
    sdsCadEstudanteESTU_UF: TStringField;
    cdsCadEstudanteESTU_BAIRRO: TStringField;
    cdsCadEstudanteESTU_CEL: TStringField;
    cdsCadEstudanteESTU_CEP: TStringField;
    cdsCadEstudanteESTU_CICA_BCG_DIAM: TSmallintField;
    cdsCadEstudanteESTU_CICA_BCG_NUM: TSmallintField;
    cdsCadEstudanteESTU_CIDADE: TStringField;
    cdsCadEstudanteESTU_CLASS_OPER: TStringField;
    cdsCadEstudanteESTU_CONT: TStringField;
    cdsCadEstudanteESTU_CONT_NOME: TStringField;
    cdsCadEstudanteESTU_CONV_CASO_HANS: TStringField;
    cdsCadEstudanteESTU_DATACAD: TStringField;
    cdsCadEstudanteESTU_DIAG_MOLE: TStringField;
    cdsCadEstudanteESTU_END: TStringField;
    cdsCadEstudanteESTU_ESCOLA: TStringField;
    cdsCadEstudanteESTU_ETNIA: TStringField;
    cdsCadEstudanteESTU_FONE_FIXO: TStringField;
    cdsCadEstudanteESTU_FORMA_CLIN: TStringField;
    cdsCadEstudanteESTU_GENERO: TStringField;
    cdsCadEstudanteESTU_GENO_DESC: TStringField;
    cdsCadEstudanteESTU_GENO_REALIZ: TStringField;
    cdsCadEstudanteESTU_GEOREF: TStringField;
    cdsCadEstudanteESTU_IDADE: TSmallintField;
    cdsCadEstudanteESTU_LATITUDE: TStringField;
    cdsCadEstudanteESTU_LONGITUDE: TStringField;
    cdsCadEstudanteESTU_NATU_CID: TStringField;
    cdsCadEstudanteESTU_NATU_UF: TStringField;
    cdsCadEstudanteESTU_NOME: TStringField;
    cdsCadEstudanteESTU_NOMEMAE: TStringField;
    cdsCadEstudanteESTU_NOMEPAI: TStringField;
    cdsCadEstudanteESTU_NOVOCASO: TStringField;
    cdsCadEstudanteESTU_NOVONUM: TStringField;
    cdsCadEstudanteESTU_NUMPRONT: TStringField;
    cdsCadEstudanteESTU_NUMPRONTALT: TStringField;
    cdsCadEstudanteESTU_PONTO_REF: TStringField;
    cdsCadEstudanteESTU_SENS_MEDI_FOLP: TStringField;
    cdsCadEstudanteESTU_SENS_MEDI_GYRA: TStringField;
    cdsCadEstudanteESTU_SENS_MEDI_RPOB: TStringField;
    cdsCadEstudanteESTU_SERIEATUAL: TStringField;
    cdsCadEstudanteESTU_SOR_COTOFF: TStringField;
    cdsCadEstudanteESTU_SOR_DO: TStringField;
    cdsCadEstudanteESTU_SOR_ELISA: TStringField;
    cdsCadEstudanteESTU_SOR_REALIZ: TStringField;
    cdsCadEstudanteESTU_TESTERAPIDO: TStringField;
    cdsCadEstudanteESTU_UF: TStringField;
    cdsLocEstudanteESTU_NUMPRONT: TStringField;
    cdsLocEstudanteESTU_NOME: TStringField;
    cdsLocEstudanteESTU_IDADE: TSmallintField;
    cdsLocEstudanteESTU_CIDADE: TStringField;
    cdsLocEstudanteESTU_ESCOLA: TStringField;
    cdsLocEstudanteESTU_NOVOCASO: TStringField;
    sdsCadEstudanteESTU_NASC: TStringField;
    cdsCadEstudanteESTU_NASC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFichaEstudante: TdmFichaEstudante;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses UdmPrincipal;

{$R *.dfm}

end.
