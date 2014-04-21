unit UdmRelatEstudantes;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Data.SqlExpr, Datasnap.Provider;

type
  TdmRelatEstudantes = class(TDataModule)
    dpsRelatEstuCidade: TDataSetProvider;
    sdsRelatEstuCidade: TSQLDataSet;
    cdsRelatEstuCidade: TClientDataSet;
    cdsRelatEstuCidadeESTU_NUMPRONT: TStringField;
    cdsRelatEstuCidadeESTU_NOME: TStringField;
    cdsRelatEstuCidadeESTU_END: TStringField;
    cdsRelatEstuCidadeESTU_BAIRRO: TStringField;
    cdsRelatEstuCidadeESTU_CIDADE: TStringField;
    cdsRelatEstuCidadeESTU_UF: TStringField;
    cdsRelatEstuCidadeESTU_FONE_FIXO: TStringField;
    cdsRelatEstuCidadeESTU_CEL: TStringField;
    cdsRelatEstuCidadeESTU_ESCOLA: TStringField;
    cdsRelatEstuCidadeESTU_NOVOCASO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRelatEstudantes: TdmRelatEstudantes;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses UdmPrincipal;

{$R *.dfm}

end.
