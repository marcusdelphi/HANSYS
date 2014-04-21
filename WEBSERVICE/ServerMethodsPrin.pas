unit ServerMethodsPrin;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.DBXFirebird,Data.DBXCommon,Data.DB, Data.SqlExpr, Datasnap.DSService,Utratamento,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TServerMethods1 = class(TDSServerModule)
    DBCon: TSQLConnection;
    sqlAndroid: TSQLQuery;
    dpAndroid: TDataSetProvider;
    cdsAndroid: TClientDataSet;
  private

    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Multiplicar(X,Y: Integer): Integer;
    function GetCountries: TDBXReader;
    //consultas
    function GetPessoal: TDBXReader;
    function GetDomiciliar: TDBXReader;
    function GetComunicante: TDBXReader;
    function GetComunicante_Tipo_Lesao: TDBXReader;
    function GetContato_Hanseniase: TDBXReader;
    function GetContato_Hanseniase_Pess: TDBXReader;
    function GetDiagnostico: TDBXReader;
    function GetDiagnostio_Tipo_Lesao: TDBXReader;
    function GetDomi_Resid_ante: TDBXReader;
    function GetLaboratorio: TDBXReader;
    function GetRecidiva: TDBXReader;
    function GetRecidiva_troncos_afetados: TDBXReader;
    function GetRecidiva_Tipo_Lesao: TDBXReader;
    function GetTermo_Concen_Comu: TDBXReader;
    function GetTermo_concen_Paci: TDBXReader;
    function GetTratamento: TDBXReader;
    function GetSINAN: TDBXReader;
    function GetBairro: TDBXReader;
    function GetCidade: TDBXReader;
    function GetEndereco: TDBXReader;
    function GetEquipe: TDBXReader;
    function GetNeurologica_dedomao: TDBXReader;
    function GetNeurologica_dedope: TDBXReader;
    function GetNeurologica_face: TDBXReader;
    function GetNeurologica_grau: TDBXReader;
    function GetNeurologica_lesaodedomao: TDBXReader;
    function GetNeurologica_lesaodedope: TDBXReader;
    function GetNeurologica_mao: TDBXReader;
    function GetNeurologica_pe: TDBXReader;
    function GetNeurologica_pontosmao: TDBXReader;
    function GetNeurologica_pontospe: TDBXReader;
    function GetNeurologica_membinf: TDBXReader;
    function GetNeurologica_membsup: TDBXReader;


    //Inserir Dados

    function InsertANOTACOES_GERAIS(ANOTA_NUMPRONT,ANOTA_ANOTACOES:String; out Error: String):Boolean;

    function InsertCOMUNICANTE(COMU_COMUNUMPRONT,COMU_NUMPRONTALT,COMU_PESSNUMPRONT,COMU_NOME,COMU_NASC:String;COMU_IDADE:integer;COMU_GEN,
    COMU_GRAU_PAREN,COMU_PERI_CONV,COMU_TIPO_CONV,COMU_TEL,COMU_CEL,COMU_END,COMU_REF,COMU_GEORREF,COMU_CICA_BCG_NUM,COMU_CICA_BCG_DIAM:String;
    COMU_NUM_LES:Integer;COMU_SORO_ELISA,COMU_CASO_NOVO_OPC,COMU_CASO_NOVO_NUM,COMU_OBS,COMU_DATACAD:String; out Error: String):Boolean;


    function InsertCOMUNICANTE_TIPO_LESAO(COMU_LES_ID:integer;COMU_LES_COMUNUMPRONT,COMU_LES_TIPO,COMU_LES_LOCAL,
    COMU_LES_TAMANHO:String; out Error: String):Boolean;


    function InsertCONTATO_HANSENIASE(CONT_HANS_NUMPRONT, CONT_HANS_CONV_OPC:String; CONT_HANS_CONV_QTD:integer; out Error: String):Boolean;

    function InsertCONTATO_HANSENIASE_PESS(CONT_HANS_NUMPRONT,CONT_HANS_NOME,CONT_HANS_GRAU, CONT_HANS_TIPO,CONT_HANS_PERIODO,
    CONT_HANS_MAIS: String; out Error: String):Boolean;

    function InsertDIAGNOSTICO(DIAG_NUMPRONT, DIAG_DATA,DIAG_UND_SAUDE,DIAG_PRONTUARIO,DIAG_SINAN,DIAG_RECIDIVA,DIAG_FOTO,DIAG_FOTO_REG,
    DIAG_GRAU_INCAP,DIAG_CICAT_BCG_NUM,DIAG_CICAT_BCG_DIAM,DIAG_NUM_LES,DIAG_FORMA_CLIN,DIAG_CLASS_OPERA,DIAG_CO_MORB_DIAB,DIAG_CO_MORB_HIPER,
    DIAG_CO_MORB_NEO,DIAG_CO_MORB_OUTRAS,
    DIAG_CO_INFEC_HIV,DIAG_CO_INFEC_TUBER,DIAG_CO_INFEC_HEPA,DIAG_CO_INFEC_OUTRAS,DIAG_TESTERAPIDO:String; out Error:String):Boolean;

    function InsertDIAGNOSTICO_TIPO_LESAO(DIAG_LES_ID:integer;DIAG_LES_NUMPRONT,DIAG_LES_TIPO,DIAG_LES_LOCAL,
    DIAG_LES_TAMANHO:String; out Error:String):Boolean;

    function InsertDOMICILIAR(DOMI_NUMPRONT,DOMI_END,DOMI_REFE,DOMI_BAIRRO,DOMI_CIDADE,DOMI_ESTADO,DOMI_CEP,DOMI_ZONA,DOMI_FONE,DOMI_CEL,
    DOMI_CONT,DOMI_CONT_NOME,DOMI_GEOREF,DOMI_LATITUDE,DOMI_LONGITUDE,DOMI_TEMPO_RESID:String;DOMI_NUM_COMODO,DOMI_TOTAL_MORA:integer;DOMI_DORM_DENSI,
    DOMI_EXPC_OPC,DOMI_EXPC_BAIRRO,DOMI_EXPC_CIDADE,DOMI_EXPC_UF,DOMI_ABAST_AGUA_OPC,DOMI_AGUA_CONS,DOMI_REDE_ESGOTO_OPC,DOMI_DESTINO_LIXO,
    DOMI_SUBNORMAL:String; out Error:String):Boolean;


    function InsertDOMI_RESID_ANTE(DOMI_RESID_ANT_ID:Integer;DOMI_RESID_ANT_NUMPRONT,DOMI_RESID_ANT_BAIRRO,DOMI_RESID_ANT_CIDADE,DOMI_RESID_ANT_ESTADO,
    DOMI_RESID_ANT_TEMPO:String; out Error:String):Boolean;

    function InsertEQUIPE(EQUI_ID:integer;EQUI_NOME:String;out Error:String):Boolean;

    function InsertESTUDANTE_COMU(ESTCOMU_COMUNUMPRONT, ESTCOMU_NUMPRONTALT,ESTCOMU_ESTNUMPRONT, ESTCOMU_NOME, ESTCOMU_NASC:String;
    ESTCOMU_IDADE:integer;ESTCOMU_GEN,ESTCOMU_GRAU_PAREN,ESTCOMU_PERI_CONV,ESTCOMU_TIPO_CONV,ESTCOMU_TEL,ESTCOMU_END,ESTCOMU_REF:String;
    ESTCOMU_CICA_BCG_NUM,ESTCOMU_CICA_BCG_DIAM:integer;ESTCOMU_SOR_ELISA,ESTCOMU_SOR_DO,ESTCOMU_SOR_COTOFF,ESTCOMU_SOR_DATA,
    ESTCOMU_SOR_LOCAL,ESTCOMU_SOR_TECN_RESP,ESTCOMU_DIAG_MOLE, ESTCOMU_CASO_NOVO_OPC,ESTCOMU_CASO_NOVO_NUM,ESTCOMU_FORMA_CLIN,
    ESTCOMU_OBS,ESTCOMU_DATACAD,ESTCOMU_TESTERAPISO:String; out Error: String):Boolean;

    function InsertFOTOS(FOTO_ID:integer;FOTO_NUMPRONT,FOTO_FOTO,FOTO_DESC:String;out Error:String):Boolean;


    function InsertLABORATORIO(LAB_NUMPRONT,LAB_BACIL_OPC,LAB_BACIL_IB,LAB_BACIL_IM,LAB_BACIL_DATA,LAB_BACIL_LOCAL,LAB_BACIL_TECN,LAB_HIST,LAB_SOR_ELISA,
    LAB_SOR_DO,LAB_SOR_CUT_OFF,LAB_SOR_DATA,LAB_SOR_LOCAL,LAB_SOR_TECN,LAB_SOR_REALI,LAB_DIAG_MOLEC,LAB_SENS_RPOB,LAB_SENS_FOIP,LAB_SENS_GYRA,
    LAB_GENO_DESC,LAB_GENO_REALI:String; out Error:String):Boolean;

    function InsertNEUROLOGICA_MAO(NEUR_ID:integer; NEUR_NUMPRONT,NEUR_LOCALFERIDA,NEUR_HIPOTROFIA, NEUR_SENTIDO: String; out Error: String):Boolean;

    function InsertNEUROLOGICA_PE(NEUR_ID:integer; NEUR_NUMPRONT,NEUR_LOCALFERIDA,NEUR_HIPOTROFIA, NEUR_SENTIDO: String; out Error: String):Boolean;

    function InsertNEUROLOGICA_DEDOMAO(NEUR_COD,NEUR_MAO,NEUR_TIPO:integer; out Error: String):Boolean;

    function InsertNEUROLOGICA_DEDOPE(NEUR_COD,NEUR_PE,NEUR_TIPO:integer; out Error: String):Boolean;

    function InsertNEUROLOGICA_LESAODEDOMAO(NEUR_COD,NEUR_DEDOMAO:integer;NEUR_DESCRICAO:String; out Error: String):Boolean;

    function InsertNEUROLOGICA_LESAODEDOPE(NEUR_COD,NEUR_DEDOPE:integer;NEUR_DESCRICAO:String; out Error: String):Boolean;

    function InsertNEUROLOGICA_FACE(NEUR_NUMPRONT,NEUR_DATA, NEUR_NARIZ_QUEIXA,NEUR_NARIZ_RESSEC_D,NEUR_NARIZ_RESSEC_E,NEUR_NARIZ_FERI_D,NEUR_NARIZ_FERI_E,
    NEUR_NARIZ_SEPTO_D,NEUR_NARIZ_SEPTO_E,NEUR_OLHO_QUEIXA:String;NEUR_OLHO_S_FORCA_D,NEUR_OLHO_S_FORCA_E,NEUR_OLHO_C_FORCA_D,NEUR_OLHO_C_FORCA_E:integer;
    NEUR_OLHO_TRIQUI_D,NEUR_OLHO_TRIQUI_E,NEUR_OLHO_ECTRO_D,NEUR_OLHO_ECTRO_E,NEUR_OLHO_DIMI_SENS_D,NEUR_OLHO_DIMI_SENS_E,NEUR_OLHO_OPACI_D,NEUR_OLHO_OPACI_E,
    NEUR_OLHO_CATA_D,NEUR_OLHO_CATA_E,NEUR_OLHO_ACUI_D,NEUR_OLHO_ACUI_E:String; out Error: String):Boolean;

    function InsertNEUROLOGICA_GRAU(NEUR_NUMPRONT,NEUR_GRAU_INCAP_OLHO_D,NEUR_GRAU_INCAP_OLHO_E,NEUR_GRAU_INCAP_MAO_D,NEUR_GRAU_INCAP_MAO_E,NEUR_GRAU_INCAP_PE_D,
    NEUR_GRAU_INCAP_PE_E,NEUR_GRAU_INCAP_GRAU_D,NEUR_GRAU_INCAP_GRAU_E,NEUR_GRAU_INCAP_ASS:String; out Error: String):Boolean;

    function InsertNEUROLOGICA_MEMBINF(NEUR_NUMPRONT,NEUR_MEMB_INF_QUEIXA,NEUR_NERV_FIBULAR_D,NEUR_NERV_FIBULAR_E,NEUR_NERV_TIBIAL_D,NEUR_NERV_TIBIAL_E,
    NEUR_AVAL_FOR_HALUX_D,NEUR_AVAL_FOR_HALUX_E,NEUR_AVAL_FOR_DORSI_D,NEUR_AVAL_FOR_DORSI_E:String; out Error: String):Boolean;

    function InsertNEUROLOGICA_MEMBSUP(NEUR_NUMPRONT,NEUR_MEM_SUP_QUEIXA,NEUR_PALP_ULNAR_D,NEUR_PALP_ULNAR_E,NEUR_PALP_MEDIANO_D,NEUR_PALP_MEDIANO_E,
    NEUR_PALP_RADIAL_D,NEUR_PALP_RADIAL_E,NEUR_PALP_AURICULAR_D,NEUR_PALP_AURICULAR_E,NEUR_AVAL_FOR_ULNAR_D,NEUR_AVAL_FOR_ULNAR_E,NEUR_AVAL_FOR_MEDIANO_D,
    NEUR_AVAL_FOR_MEDIANO_E,NEUR_AVAL_FOR_RADIAL_D,NEUR_AVAL_FOR_RADIAL_E:String; out Error: String):Boolean;

    function InsertNEUROLOGICA_PONTOSMAO(NEUR_NUMPRONT,NEUR_MD1_INSP,NEUR_MD2_INSP,NEUR_MD3_INSP,NEUR_MD4_INSP,NEUR_MD5_INSP,NEUR_MD6_INSP,NEUR_MD7_INSP,
    NEUR_ME1_INSP,NEUR_ME2_INSP,NEUR_ME3_INSP,NEUR_ME4_INSP,NEUR_ME5_INSP,NEUR_ME6_INSP,NEUR_ME7_INSP,NEUR_MD_OBS,NEUR_ME_OBS:String; out Error: String):Boolean;

    function InsertNEUROLOGICA_PONTOSPE(NEUR_NUMPRONT,NEUR_PD1_INSP,NEUR_PD2_INSP,NEUR_PD3_INSP,NEUR_PD4_INSP,NEUR_PD5_INSP,NEUR_PD6_INSP,NEUR_PD7_INSP,
    NEUR_PD8_INSP,NEUR_PD9_INSP,NEUR_PD10_INSP,NEUR_PE1_INSP,NEUR_PE2_INSP,NEUR_PE3_INSP,NEUR_PE4_INSP,NEUR_PE5_INSP,NEUR_PE6_INSP,NEUR_PE7_INSP,
    NEUR_PE8_INSP,NEUR_PE9_INSP,NEUR_PE10_INSP,NEUR_PD_OBS,NEUR_PE_OBS:String; out Error: String):Boolean;

    function InsertRECIDIVA(REC_NUMPRONT,REC_PROC_INFO,REC_DATA_DIAG:String;REC_QTD_EPISO:Integer;REC_LOC_DIAG_DESC,REC_LOC_DIAG_OPC:String;
    REC_NUM_LES:integer;REC_LES_OBS_TRAT,REC_FORMA_CLIN,REC_CLASS_OPE,REC_ESQ_TERAP_OPC,REC_GRAU_INCAP_FIS,REC_REAC_OPC,REC_REAC_TIPO,REC_REAC_TRAT,
    REC_REAC_RESP:String;REC_NUM_TRON_AFET_QTD:integer;REC_NUM_TRON_AFET_INFO,REC_HIST_DIAG,REC_REACHANS_OPC,REC_REACHANS_TIPO,REC_REACHANS_TEMPO,
    REC_REACHANS_EPI,REC_REACHANS_TRAT,REC_REACHANS_PERI,REC_REACHANS_CONT,REC_REACHANS_RESP,REC_APRE_DOE_POS_OPC,
    REC_APRE_DOE_POS_DESC:String;out Error: String):Boolean;

    function InsertRECIDIVA_TIPO_LESAO(REC_LES_ID:Integer;REC_LES_NUMPRONT,REC_LES_TIPO,REC_LES_LOCAL,REC_LES_TAMANHO:String; out Error:String):Boolean;

    function InsertRECIDIVA_TRONCOS_AFETADOS(REC_TRON_ID:integer;REC_TRON_NUMPRONT,REC_TRON_TIPO_TRONCO:string; out Error:String):Boolean;

    function InsertESTUDANTE(ESTU_NUMPRONT,ESTU_NUMPRONTALT,ESTU_NOME,ESTU_NOMEMAE,ESTU_NOMEPAI,ESTU_NASC:String;ESTU_IDADE:integer;ESTU_GENERO,
    ESTU_NATU_CID,ESTU_NATU_UF,ESTU_ETNIA,ESTU_SERIEATUAL,ESTU_END,ESTU_PONTO_REF,ESTU_BAIRRO,ESTU_CIDADE,ESTU_UF,ESTU_CEP,ESTU_FIXO,ESTU_CEL,
    ESTU_CONT,ESTU_CONT_NOME:String;ESTU_CICA_BCG_NUM,ESTU_CICA_BCG_DIAM:integer;ESTU_SOR_ELISA,ESTU_NOVOCASO,
    ESTU_NOVONUM:String;out Error:String):Boolean;

    function InsertPESSOAL(PESS_NUMPRONT,PESS_NUMPRONTALT,PESS_TIPOPACIENTE,PESS_NOME,PESS_NOMEMAE,PESS_NOMEPAI,PESS_NASC,PESS_IDADE,PESS_GENERO,
    PESS_NATU_CID,PESS_NATU_UF,PESS_EST_CIVIL,PESS_ETNIA,PESS_SERIE_ATUAL,PESS_ESCOL_ANOS,PESS_ESCOL_GRAU,PESS_OCUP_DESC,PESS_OCUP_OPC,PESS_REND_FAM,
    PESS_TRANS_GOV_OPC,PESS_TRANS_GOV_TIPO,PESS_PRIV_ALIMEN,PESS_DATA_CAD,PESS_DATA_ATU:String;PESS_ID_USU,PESS_ID_EQUI:integer; out Error: String):Boolean;


    function InsertTERMO_CONSCEN_COMU(TERM_COMU_COMUNUMPRONT,TERM_COMU_NOME,TERM_COMU_DOC,TERM_COMU_ASS,TERM_COMU_LOCAL,TERM_COMU_DATA:string;
    out Error: string):Boolean;

    function InsertTERMO_CONSCEN_PACI(TERM_PESS_NUMPRONT,TERM_PESS_NOME,TERM_PESS_DOC,TERM_PESS_ASS,TERM_PESS_LOCAL,TERM_PESS_DATA:string;
    out Error: string):Boolean;

    function InsertTRATAMENTO(TRAT_NUMPRONT,TRAT_ESQ_TRAT_OPC,TRAT_REAC_HANS,TRAT_REAC_TIPO,TRAT_REAC_TRAT_OPC:String; out Error: String):Boolean;

    function InsertUSUARIOS(USUA_ID:integer;USUA_NOME,USUA_SENHA: String;USUA_EQUI:integer; out Error:String):Boolean;

    // Funçoes para atualização de de dados

  end;

implementation

{$R *.dfm}

uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.GetBairro: TDBXReader;
var
comm:TDBXCommand;
begin
  DBCon.Open;
  comm:=DBCon.DBXConnection.CreateCommand;
  comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From Bairro';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetCidade: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From Cidade';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetComunicante: TDBXReader;
var
  Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From COMUNICANTE';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetComunicante_Tipo_Lesao: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From COMUNICANTE_TIPO_LESAO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetContato_Hanseniase: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From CONTATO_HANSENIASE';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetContato_Hanseniase_Pess: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From CONTATO_HANSENIASE_PESS';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetCountries: TDBXReader;
var
Comm:TDBXCommand;
begin

  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From ESTADOS';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetDiagnostico: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From DIAGNOSTICO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetDiagnostio_Tipo_Lesao: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From DIAGNOSTICO_TIPO_LESAO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetDomiciliar: TDBXReader;
var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From DOMICILIAR';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetDomi_Resid_ante: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From DOMI_RESID_ANTE';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetEndereco: TDBXReader;
var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From Endereco';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetEquipe: TDBXReader;
var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* Equipe';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetLaboratorio: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From LABORATORIO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetNeurologica_dedomao: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_DEDOMAO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;

end;

function TServerMethods1.GetNeurologica_dedope: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_DEDOPE';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetNeurologica_face: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_FACE';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetNeurologica_grau: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_GRAU';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetNeurologica_lesaodedomao: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_LESAODEDOMAO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;

end;

function TServerMethods1.GetNeurologica_lesaodedope: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_LESAODEDOPE';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;

end;

function TServerMethods1.GetNeurologica_mao: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_MAO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetNeurologica_membinf: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_MEMBINF';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetNeurologica_membsup: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_MEB_SUP';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetNeurologica_pe: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_PE';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;

end;

function TServerMethods1.GetNeurologica_pontosmao: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_PONTOSMAO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetNeurologica_pontospe: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From NEUROLOGICA_PONTOSPE';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetPessoal: TDBXReader;
var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From PESSOAL';
  if not Comm.IsPrepared then
    Comm.Prepare;
  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetRecidiva: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From RECIDIVA';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetRecidiva_troncos_afetados: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From RECIDIVA_NUM_TRON_AFET';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetRecidiva_Tipo_Lesao: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From RECIDIVA_TIPO_LESAO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetSINAN: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From SINAN';
  if not Comm.IsPrepared then
    Comm.Prepare;
  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetTermo_Concen_Comu: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From TERMO_CONSCEN_COMU';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetTermo_concen_Paci: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From TERMO_CONSCEN_PACI';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.GetTratamento: TDBXReader;
Var
Comm:TDBXCommand;
begin
  DBCon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:='Select* From TRATAMENTO';

  if not Comm.IsPrepared then
    Comm.Prepare;

  result:=Comm.ExecuteQuery;
end;

function TServerMethods1.InsertANOTACOES_GERAIS(ANOTA_NUMPRONT,
  ANOTA_ANOTACOES: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into ANOTACOES_GERAIS(ANOTA_NUMPRONT,ANOTA_ANOTACOES)values(''%s'',''%s'')',[ANOTA_NUMPRONT,ANOTA_ANOTACOES]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertCOMUNICANTE_TIPO_LESAO(COMU_LES_ID:integer;COMU_LES_COMUNUMPRONT,
COMU_LES_TIPO,COMU_LES_LOCAL,COMU_LES_TAMANHO: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into COMUNICANTE_TIPO_LESAO(COMU_LES_ID,COMU_LES_COMUNUMPRONT,COMU_LES_TIPO,COMU_LES_LOCAL,'+
                    'COMU_LES_TAMANHO)values(''%d'',''%s'',''%s'',''%s'',''%s'')',
  [COMU_LES_ID,COMU_LES_COMUNUMPRONT,COMU_LES_TIPO,COMU_LES_LOCAL,
    COMU_LES_TAMANHO]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertCONTATO_HANSENIASE(CONT_HANS_NUMPRONT,
  CONT_HANS_CONV_OPC: String; CONT_HANS_CONV_QTD: integer;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into CONTATO_HANSENIASE(CONT_HANS_NUMPRONT,CONT_HANS_CONV_OPC,CONT_HANS_CONV_QTD)values(''%s'',''%s'',''%d'')',
  [CONT_HANS_NUMPRONT,CONT_HANS_CONV_OPC,CONT_HANS_CONV_QTD]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertCONTATO_HANSENIASE_PESS(
  CONT_HANS_NUMPRONT,CONT_HANS_NOME, CONT_HANS_GRAU,
  CONT_HANS_TIPO, CONT_HANS_PERIODO, CONT_HANS_MAIS: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into CONTATO_HANSENIASE_PESS(CONT_HANS_NUMPRONT,CONT_HANS_NOME, CONT_HANS_GRAU, CONT_HANS_TIPO,'+
  'CONT_HANS_PERIODO, CONT_HANS_MAIS)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [CONT_HANS_NUMPRONT,CONT_HANS_NOME, CONT_HANS_GRAU, CONT_HANS_TIPO, CONT_HANS_PERIODO, CONT_HANS_MAIS]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;
function TServerMethods1.InsertDIAGNOSTICO(DIAG_NUMPRONT, DIAG_DATA,
  DIAG_UND_SAUDE, DIAG_PRONTUARIO, DIAG_SINAN, DIAG_RECIDIVA, DIAG_FOTO,
  DIAG_FOTO_REG, DIAG_GRAU_INCAP, DIAG_CICAT_BCG_NUM, DIAG_CICAT_BCG_DIAM,
  DIAG_NUM_LES, DIAG_FORMA_CLIN, DIAG_CLASS_OPERA, DIAG_CO_MORB_DIAB,
  DIAG_CO_MORB_HIPER, DIAG_CO_MORB_NEO, DIAG_CO_MORB_OUTRAS, DIAG_CO_INFEC_HIV,
  DIAG_CO_INFEC_TUBER, DIAG_CO_INFEC_HEPA, DIAG_CO_INFEC_OUTRAS,
  DIAG_TESTERAPIDO: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into DIAGNOSTICO(DIAG_NUMPRONT, DIAG_DATA,DIAG_UND_SAUDE, DIAG_PRONTUARIO, DIAG_SINAN, DIAG_RECIDIVA,'+
  'DIAG_FOTO,DIAG_FOTO_REG, DIAG_GRAU_INCAP, DIAG_CICAT_BCG_NUM, DIAG_CICAT_BCG_DIAM,DIAG_NUM_LES, DIAG_FORMA_CLIN, DIAG_CLASS_OPERA,'+
  'DIAG_CO_MORB_DIAB,DIAG_CO_MORB_HIPER, DIAG_CO_MORB_NEO, DIAG_CO_MORB_OUTRAS, DIAG_CO_INFEC_HIV,DIAG_CO_INFEC_TUBER, DIAG_CO_INFEC_HEPA,'+
  'DIAG_CO_INFEC_OUTRAS,DIAG_TESTERAPIDO)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'''+
  ',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [DIAG_NUMPRONT, DIAG_DATA,
  DIAG_UND_SAUDE, DIAG_PRONTUARIO, DIAG_SINAN, DIAG_RECIDIVA, DIAG_FOTO,
  DIAG_FOTO_REG, DIAG_GRAU_INCAP, DIAG_CICAT_BCG_NUM, DIAG_CICAT_BCG_DIAM,
  DIAG_NUM_LES, DIAG_FORMA_CLIN, DIAG_CLASS_OPERA, DIAG_CO_MORB_DIAB,
  DIAG_CO_MORB_HIPER, DIAG_CO_MORB_NEO, DIAG_CO_MORB_OUTRAS, DIAG_CO_INFEC_HIV,
  DIAG_CO_INFEC_TUBER, DIAG_CO_INFEC_HEPA, DIAG_CO_INFEC_OUTRAS,
  DIAG_TESTERAPIDO]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;


function TServerMethods1.InsertDIAGNOSTICO_TIPO_LESAO(DIAG_LES_ID:integer;DIAG_LES_NUMPRONT,
   DIAG_LES_TIPO,DIAG_LES_LOCAL,DIAG_LES_TAMANHO: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into DIAGNOSTICO_TIPO_LESAO(DIAG_LES_ID,DIAG_LES_NUMPRONT,'+
   'DIAG_LES_TIPO,DIAG_LES_LOCAL,DIAG_LES_TAMANHO)values(''%d'',''%s'',''%s'',''%s'',''%s'')',
  [DIAG_LES_ID,DIAG_LES_NUMPRONT,DIAG_LES_TIPO,DIAG_LES_LOCAL,DIAG_LES_TAMANHO]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;

end;

function TServerMethods1.InsertDOMICILIAR(DOMI_NUMPRONT,DOMI_END,DOMI_REFE,DOMI_BAIRRO,DOMI_CIDADE,DOMI_ESTADO,DOMI_CEP,DOMI_ZONA,DOMI_FONE,DOMI_CEL,
    DOMI_CONT,DOMI_CONT_NOME,DOMI_GEOREF,DOMI_LATITUDE,DOMI_LONGITUDE,DOMI_TEMPO_RESID:String;DOMI_NUM_COMODO,DOMI_TOTAL_MORA:integer;DOMI_DORM_DENSI,
    DOMI_EXPC_OPC,DOMI_EXPC_BAIRRO,DOMI_EXPC_CIDADE,DOMI_EXPC_UF,DOMI_ABAST_AGUA_OPC,DOMI_AGUA_CONS,DOMI_REDE_ESGOTO_OPC,DOMI_DESTINO_LIXO,
    DOMI_SUBNORMAL: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into DOMICILIAR(DOMI_NUMPRONT,DOMI_END,DOMI_REFE,DOMI_BAIRRO,DOMI_CIDADE,DOMI_ESTADO,DOMI_CEP,DOMI_ZONA,DOMI_FONE,'+
  'DOMI_CEL,DOMI_CONT,DOMI_CONT_NOME,DOMI_GEOREF,DOMI_LATITUDE,DOMI_LONGITUDE,DOMI_TEMPO_RESID,DOMI_NUM_COMODO,DOMI_TOTAL_MORA,DOMI_DORM_DENSI,'+
  'DOMI_EXPC_OPC,DOMI_EXPC_BAIRRO,DOMI_EXPC_CIDADE,DOMI_EXPC_UF,DOMI_ABAST_AGUA_OPC,DOMI_AGUA_CONS,DOMI_REDE_ESGOTO_OPC,DOMI_DESTINO_LIXO,'+
  'DOMI_SUBNORMAL)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%d'',''%d'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [DOMI_NUMPRONT,DOMI_END,DOMI_REFE,DOMI_BAIRRO,DOMI_CIDADE,DOMI_ESTADO,DOMI_CEP,DOMI_ZONA,DOMI_FONE,DOMI_CEL,
    DOMI_CONT,DOMI_CONT_NOME,DOMI_GEOREF,DOMI_LATITUDE,DOMI_LONGITUDE,DOMI_TEMPO_RESID,DOMI_NUM_COMODO,DOMI_TOTAL_MORA,DOMI_DORM_DENSI,
    DOMI_EXPC_OPC,DOMI_EXPC_BAIRRO,DOMI_EXPC_CIDADE,DOMI_EXPC_UF,DOMI_ABAST_AGUA_OPC,DOMI_AGUA_CONS,DOMI_REDE_ESGOTO_OPC,DOMI_DESTINO_LIXO,
    DOMI_SUBNORMAL]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertDOMI_RESID_ANTE(DOMI_RESID_ANT_ID:Integer;DOMI_RESID_ANT_NUMPRONT,DOMI_RESID_ANT_BAIRRO,
   DOMI_RESID_ANT_CIDADE,DOMI_RESID_ANT_ESTADO,DOMI_RESID_ANT_TEMPO: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into DOMI_RESID_ANTE(DOMI_RESID_ANT_ID,DOMI_RESID_ANT_NUMPRONT,DOMI_RESID_ANT_BAIRRO,DOMI_RESID_ANT_CIDADE,'+
  'DOMI_RESID_ANT_ESTADO, DOMI_RESID_ANT_TEMPO)values(''%d'',''%s'',''%s'',''%s'',''%s'',''%s'')'
  ,[DOMI_RESID_ANT_ID,DOMI_RESID_ANT_NUMPRONT,DOMI_RESID_ANT_BAIRRO,DOMI_RESID_ANT_CIDADE,DOMI_RESID_ANT_ESTADO, DOMI_RESID_ANT_TEMPO]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertTERMO_CONSCEN_PACI(TERM_PESS_NUMPRONT,
  TERM_PESS_NOME, TERM_PESS_DOC, TERM_PESS_ASS, TERM_PESS_LOCAL,
  TERM_PESS_DATA: string; out Error: string): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into TERMO_CONSCEN_PACI(TERM_PESS_NUMPRONT,TERM_PESS_NOME, TERM_PESS_DOC,TERM_PESS_ASS, TERM_PESS_LOCAL, TERM_PESS_DATA)'+
  'values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [TERM_PESS_NUMPRONT,TERM_PESS_NOME, TERM_PESS_DOC,TERM_PESS_ASS, TERM_PESS_LOCAL, TERM_PESS_DATA]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertCOMUNICANTE(COMU_COMUNUMPRONT, COMU_NUMPRONTALT,
  COMU_PESSNUMPRONT, COMU_NOME, COMU_NASC: String; COMU_IDADE: integer;
  COMU_GEN, COMU_GRAU_PAREN, COMU_PERI_CONV, COMU_TIPO_CONV, COMU_TEL, COMU_CEL,
  COMU_END, COMU_REF, COMU_GEORREF,COMU_CICA_BCG_NUM,COMU_CICA_BCG_DIAM: String; COMU_NUM_LES: Integer;
  COMU_SORO_ELISA, COMU_CASO_NOVO_OPC, COMU_CASO_NOVO_NUM, COMU_OBS,
  COMU_DATACAD: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into COMUNICANTE(COMU_COMUNUMPRONT, COMU_NUMPRONTALT,COMU_PESSNUMPRONT, COMU_NOME, COMU_NASC,COMU_IDADE,'+
  'COMU_GEN, COMU_GRAU_PAREN, COMU_PERI_CONV, COMU_TIPO_CONV, COMU_TEL, COMU_CEL,COMU_END, COMU_REF, COMU_GEORREF,COMU_CICA_BCG_NUM,'+
  'COMU_CICA_BCG_DIAM,COMU_NUM_LES,COMU_SORO_ELISA, COMU_CASO_NOVO_OPC, COMU_CASO_NOVO_NUM, COMU_OBS,COMU_DATACAD)values(''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%d'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%d '',''%s'',''%s'','+
  '''%s'',''%s'',''%s'')',
  [COMU_COMUNUMPRONT, COMU_NUMPRONTALT,
  COMU_PESSNUMPRONT, COMU_NOME, COMU_NASC,COMU_IDADE,COMU_GEN, COMU_GRAU_PAREN, COMU_PERI_CONV, COMU_TIPO_CONV, COMU_TEL, COMU_CEL,
  COMU_END, COMU_REF, COMU_GEORREF,COMU_CICA_BCG_NUM,COMU_CICA_BCG_DIAM,COMU_NUM_LES,COMU_SORO_ELISA, COMU_CASO_NOVO_OPC, COMU_CASO_NOVO_NUM,
  COMU_OBS,COMU_DATACAD]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertEQUIPE(EQUI_ID: integer; EQUI_NOME: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into EQUIPE(EQUI_ID,EQUI_NOME)values(''%d'',''%s'')',
  [EQUI_ID, EQUI_NOME]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertESTUDANTE(ESTU_NUMPRONT, ESTU_NUMPRONTALT,
  ESTU_NOME, ESTU_NOMEMAE, ESTU_NOMEPAI, ESTU_NASC: String; ESTU_IDADE: integer;
  ESTU_GENERO, ESTU_NATU_CID, ESTU_NATU_UF, ESTU_ETNIA, ESTU_SERIEATUAL,
  ESTU_END, ESTU_PONTO_REF, ESTU_BAIRRO, ESTU_CIDADE, ESTU_UF, ESTU_CEP,
  ESTU_FIXO, ESTU_CEL, ESTU_CONT, ESTU_CONT_NOME: String; ESTU_CICA_BCG_NUM,
  ESTU_CICA_BCG_DIAM: integer; ESTU_SOR_ELISA, ESTU_NOVOCASO,
  ESTU_NOVONUM: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into ESTUDANTES(ESTU_NUMPRONT, ESTU_NUMPRONTALT, ESTU_NOME, ESTU_NOMEMAE, ESTU_NOMEPAI, ESTU_NASC, ESTU_IDADE,'+
   'ESTU_GENERO, ESTU_NATU_CID, ESTU_NATU_UF, ESTU_ETNIA, ESTU_SERIEATUAL,ESTU_END, ESTU_PONTO_REF,ESTU_BAIRRO, ESTU_CIDADE, ESTU_UF,'+
   'ESTU_CEP, ESTU_FONE_FIXO, ESTU_CEL, ESTU_CONT, ESTU_CONT_NOME,ESTU_CICA_BCG_NUM,'+
   'ESTU_CICA_BCG_DIAM,ESTU_SOR_ELISA, ESTU_NOVOCASO,ESTU_NOVONUM)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%d'',''%s'',''%s'',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%d'',''%d'',''%s'',''%s'',''%s'')',
  [ESTU_NUMPRONT, ESTU_NUMPRONTALT, ESTU_NOME, ESTU_NOMEMAE, ESTU_NOMEPAI, ESTU_NASC, ESTU_IDADE,
   ESTU_GENERO, ESTU_NATU_CID, ESTU_NATU_UF, ESTU_ETNIA, ESTU_SERIEATUAL,ESTU_END, ESTU_PONTO_REF,
   ESTU_BAIRRO, ESTU_CIDADE, ESTU_UF, ESTU_CEP, ESTU_FIXO, ESTU_CEL, ESTU_CONT, ESTU_CONT_NOME,ESTU_CICA_BCG_NUM,
   ESTU_CICA_BCG_DIAM,ESTU_SOR_ELISA, ESTU_NOVOCASO,ESTU_NOVONUM]);

  if not Comm.IsPrepared then
    Comm.Prepare;
    try
     Comm.ExecuteUpdate;
     Comm.Free;
     Result:=true;
    except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertESTUDANTE_COMU(ESTCOMU_COMUNUMPRONT, ESTCOMU_NUMPRONTALT,ESTCOMU_ESTNUMPRONT, ESTCOMU_NOME, ESTCOMU_NASC:String;
   ESTCOMU_IDADE:integer;ESTCOMU_GEN,ESTCOMU_GRAU_PAREN,ESTCOMU_PERI_CONV,ESTCOMU_TIPO_CONV,ESTCOMU_TEL,ESTCOMU_END,ESTCOMU_REF:String;
   ESTCOMU_CICA_BCG_NUM,ESTCOMU_CICA_BCG_DIAM:integer;ESTCOMU_SOR_ELISA,ESTCOMU_SOR_DO,ESTCOMU_SOR_COTOFF,ESTCOMU_SOR_DATA,
   ESTCOMU_SOR_LOCAL,ESTCOMU_SOR_TECN_RESP,ESTCOMU_DIAG_MOLE, ESTCOMU_CASO_NOVO_OPC,ESTCOMU_CASO_NOVO_NUM,ESTCOMU_FORMA_CLIN,
   ESTCOMU_OBS,ESTCOMU_DATACAD,ESTCOMU_TESTERAPISO: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into ESTUDANTE_COMU(ESTCOMU_COMUNUMPRONT, ESTCOMU_NUMPRONTALT,ESTCOMU_ESTNUMPRONT, ESTCOMU_NOME, ESTCOMU_NASC,ESTCOMU_IDADE,'+
  'ESTCOMU_GEN,ESTCOMU_GRAU_PAREN,ESTCOMU_PERI_CONV,ESTCOMU_TIPO_CONV,ESTCOMU_TEL,ESTCOMU_END,ESTCOMU_REF,'+
  'ESTCOMU_CICA_BCG_NUM,ESTCOMU_CICA_BCG_DIAM,ESTCOMU_SOR_ELISA,ESTCOMU_SOR_DO,ESTCOMU_SOR_COTOFF,ESTCOMU_SOR_DATA,ESTCOMU_SOR_LOCAL,ESTCOMU_SOR_TECN_RESP,'+
  'ESTCOMU_DIAGN_MOLE, ESTCOMU_CASO_NOVO_OPC, ESTCOMU_CASO_NOVO_NUM,ESTCOMU_FORMA_CLIN,ESTCOMU_OBS,ESTCOMU_DATACAD,ESTCOMU_TESTERAPIDO)values(''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%d'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%d'',''%d'',''%s'',''%s '',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [ESTCOMU_COMUNUMPRONT, ESTCOMU_NUMPRONTALT,ESTCOMU_ESTNUMPRONT, ESTCOMU_NOME, ESTCOMU_NASC,ESTCOMU_IDADE,ESTCOMU_GEN,ESTCOMU_GRAU_PAREN,
   ESTCOMU_PERI_CONV,ESTCOMU_TIPO_CONV,ESTCOMU_TEL,ESTCOMU_END,ESTCOMU_REF,ESTCOMU_CICA_BCG_NUM,ESTCOMU_CICA_BCG_DIAM,ESTCOMU_SOR_ELISA,
   ESTCOMU_SOR_DO,ESTCOMU_SOR_COTOFF,ESTCOMU_SOR_DATA,ESTCOMU_SOR_LOCAL,ESTCOMU_SOR_TECN_RESP,ESTCOMU_DIAG_MOLE, ESTCOMU_CASO_NOVO_OPC,
   ESTCOMU_CASO_NOVO_NUM,ESTCOMU_FORMA_CLIN,ESTCOMU_OBS,ESTCOMU_DATACAD,ESTCOMU_TESTERAPISO]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertFOTOS(FOTO_ID: integer; FOTO_NUMPRONT, FOTO_FOTO,
  FOTO_DESC: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into FOTOS(FOTO_ID,FOTO_NUMPRONT, FOTO_FOTO,FOTO_DESC)values(''%d'',''%s'',''%s'',''%s'')',
  [FOTO_ID,FOTO_NUMPRONT, FOTO_FOTO,FOTO_DESC]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertLABORATORIO(LAB_NUMPRONT, LAB_BACIL_OPC,
  LAB_BACIL_IB, LAB_BACIL_IM, LAB_BACIL_DATA, LAB_BACIL_LOCAL, LAB_BACIL_TECN,
  LAB_HIST, LAB_SOR_ELISA, LAB_SOR_DO, LAB_SOR_CUT_OFF, LAB_SOR_DATA,
  LAB_SOR_LOCAL, LAB_SOR_TECN, LAB_SOR_REALI, LAB_DIAG_MOLEC, LAB_SENS_RPOB,
  LAB_SENS_FOIP, LAB_SENS_GYRA, LAB_GENO_DESC, LAB_GENO_REALI: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into LABORATORIO(LAB_NUMPRONT,LAB_BACIL_OPC,LAB_BACIL_IB, LAB_BACIL_IM, LAB_BACIL_DATA, LAB_BACIL_LOCAL, LAB_BACIL_TECN,'+
  'LAB_HIST, LAB_SOR_ELISA, LAB_SOR_DO, LAB_SOR_CUT_OFF, LAB_SOR_DATA,LAB_SOR_LOCAL, LAB_SOR_TECN, LAB_SOR_REALI, LAB_DIAG_MOLEC,'+
  'LAB_SENS_RPOB, LAB_SENS_FOIP, LAB_SENS_GYRA, LAB_GENO_DESC,LAB_GENO_REALI)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')'
  ,[LAB_NUMPRONT,LAB_BACIL_OPC,LAB_BACIL_IB, LAB_BACIL_IM, LAB_BACIL_DATA, LAB_BACIL_LOCAL, LAB_BACIL_TECN,
  LAB_HIST, LAB_SOR_ELISA, LAB_SOR_DO, LAB_SOR_CUT_OFF, LAB_SOR_DATA,LAB_SOR_LOCAL, LAB_SOR_TECN, LAB_SOR_REALI, LAB_DIAG_MOLEC,
  LAB_SENS_RPOB, LAB_SENS_FOIP, LAB_SENS_GYRA, LAB_GENO_DESC,LAB_GENO_REALI]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_DEDOMAO(NEUR_COD, NEUR_MAO,
  NEUR_TIPO: integer; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_DEDOMAO(NEUR_COD, NEUR_MAO,NEUR_TIPO)values(''%d'',''%d'',''%d'')'
  ,[NEUR_COD, NEUR_MAO,NEUR_TIPO]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_DEDOPE(NEUR_COD, NEUR_PE,
  NEUR_TIPO: integer; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_DEDOPE(NEUR_COD, NEUR_PE,NEUR_TIPO)values(''%d'',''%d'',''%d'')'
  ,[NEUR_COD, NEUR_PE,NEUR_TIPO]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_FACE(NEUR_NUMPRONT,NEUR_DATA, NEUR_NARIZ_QUEIXA,NEUR_NARIZ_RESSEC_D,
    NEUR_NARIZ_RESSEC_E,NEUR_NARIZ_FERI_D,NEUR_NARIZ_FERI_E,NEUR_NARIZ_SEPTO_D,NEUR_NARIZ_SEPTO_E,NEUR_OLHO_QUEIXA:String;
    NEUR_OLHO_S_FORCA_D,NEUR_OLHO_S_FORCA_E,NEUR_OLHO_C_FORCA_D,NEUR_OLHO_C_FORCA_E:integer;NEUR_OLHO_TRIQUI_D,NEUR_OLHO_TRIQUI_E,
    NEUR_OLHO_ECTRO_D,NEUR_OLHO_ECTRO_E,NEUR_OLHO_DIMI_SENS_D,NEUR_OLHO_DIMI_SENS_E,NEUR_OLHO_OPACI_D,NEUR_OLHO_OPACI_E,
    NEUR_OLHO_CATA_D,NEUR_OLHO_CATA_E,NEUR_OLHO_ACUI_D,NEUR_OLHO_ACUI_E: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_FACE(NEUR_NUMPRONT, NEUR_DATA,NEUR_NARIZ_QUEIXA, NEUR_NARIZ_RESSEC_D, NEUR_NARIZ_RESSEC_E,'+
  'NEUR_NARIZ_FERI_D, NEUR_NARIZ_FERI_E, NEUR_NARIZ_SEPTO_D,NEUR_NARIZ_SEPTO_E,NEUR_OLHO_QUEIXA, NEUR_OLHO_S_FORCA_D, NEUR_OLHO_S_FORCA_E,'+
  'NEUR_OLHO_C_FORCA_D, NEUR_OLHO_C_FORCA_E, NEUR_OLHO_TRIQUI_D,NEUR_OLHO_TRIQUI_E, NEUR_OLHO_ECTRO_D, NEUR_OLHO_ECTRO_E,NEUR_OLHO_DIMI_SENS_D,'+
  'NEUR_OLHO_DIMI_SENS_E, NEUR_OLHO_OPACI_D,NEUR_OLHO_OPACI_E, NEUR_OLHO_CATA_D, NEUR_OLHO_CATA_E, NEUR_OLHO_ACUI_D,NEUR_OLHO_ACUI_E)'+
  'values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%d'',''%d'',''%d'',''%d'',''%s'',''%s'',''%s'',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')'

  ,[NEUR_NUMPRONT, NEUR_DATA,NEUR_NARIZ_QUEIXA, NEUR_NARIZ_RESSEC_D, NEUR_NARIZ_RESSEC_E,NEUR_NARIZ_FERI_D, NEUR_NARIZ_FERI_E, NEUR_NARIZ_SEPTO_D,
  NEUR_NARIZ_SEPTO_E,NEUR_OLHO_QUEIXA, NEUR_OLHO_S_FORCA_D, NEUR_OLHO_S_FORCA_E,NEUR_OLHO_C_FORCA_D, NEUR_OLHO_C_FORCA_E, NEUR_OLHO_TRIQUI_D,
  NEUR_OLHO_TRIQUI_E, NEUR_OLHO_ECTRO_D, NEUR_OLHO_ECTRO_E,NEUR_OLHO_DIMI_SENS_D, NEUR_OLHO_DIMI_SENS_E, NEUR_OLHO_OPACI_D,
  NEUR_OLHO_OPACI_E, NEUR_OLHO_CATA_D, NEUR_OLHO_CATA_E, NEUR_OLHO_ACUI_D,NEUR_OLHO_ACUI_E]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_GRAU(NEUR_NUMPRONT,
  NEUR_GRAU_INCAP_OLHO_D, NEUR_GRAU_INCAP_OLHO_E, NEUR_GRAU_INCAP_MAO_D,
  NEUR_GRAU_INCAP_MAO_E, NEUR_GRAU_INCAP_PE_D, NEUR_GRAU_INCAP_PE_E,
  NEUR_GRAU_INCAP_GRAU_D, NEUR_GRAU_INCAP_GRAU_E, NEUR_GRAU_INCAP_ASS: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_GRAU(NEUR_NUMPRONT,NEUR_GRAU_INCAP_OLHO_D, NEUR_GRAU_INCAP_OLHO_E, NEUR_GRAU_INCAP_MAO_D,'+
  'NEUR_GRAU_INCAP_MAO_E, NEUR_GRAU_INCAP_PE_D, NEUR_GRAU_INCAP_PE_E,NEUR_GRAU_INCAP_GRAU_D, NEUR_GRAU_INCAP_GRAU_E,'+
  'NEUR_GRAU_INCAP_ASS)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')'
  ,[NEUR_NUMPRONT,
  NEUR_GRAU_INCAP_OLHO_D, NEUR_GRAU_INCAP_OLHO_E, NEUR_GRAU_INCAP_MAO_D,
  NEUR_GRAU_INCAP_MAO_E, NEUR_GRAU_INCAP_PE_D, NEUR_GRAU_INCAP_PE_E,
  NEUR_GRAU_INCAP_GRAU_D, NEUR_GRAU_INCAP_GRAU_E, NEUR_GRAU_INCAP_ASS]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_LESAODEDOMAO(NEUR_COD,
  NEUR_DEDOMAO: integer; NEUR_DESCRICAO: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_LESAODEDOMAO(NEUR_COD,NEUR_DEDOMAO,NEUR_DESCRICAO)values(''%d'',''%d'',''%s'')'
  ,[NEUR_COD,NEUR_DEDOMAO,NEUR_DESCRICAO]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_LESAODEDOPE(NEUR_COD,
  NEUR_DEDOPE: integer; NEUR_DESCRICAO: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_LESAODEDOPE(NEUR_COD,NEUR_DEDOPE,NEUR_DESCRICAO)values(''%d'',''%d'',''%s'')'
  ,[NEUR_COD,NEUR_DEDOPE,NEUR_DESCRICAO]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_MAO(NEUR_ID: integer; NEUR_NUMPRONT,
  NEUR_LOCALFERIDA, NEUR_HIPOTROFIA, NEUR_SENTIDO: String;out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_MAO(NEUR_ID,NEUR_NUMPRONT,NEUR_LOCALFERIDA, NEUR_HIPOTROFIA,'+
  'NEUR_SENTIDO)values(''%d'',''%s'',''%s'',''%s'',''%s'')'
  ,[NEUR_ID, NEUR_NUMPRONT,NEUR_LOCALFERIDA, NEUR_HIPOTROFIA, NEUR_SENTIDO]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_MEMBINF(NEUR_NUMPRONT,
  NEUR_MEMB_INF_QUEIXA, NEUR_NERV_FIBULAR_D, NEUR_NERV_FIBULAR_E,
  NEUR_NERV_TIBIAL_D, NEUR_NERV_TIBIAL_E, NEUR_AVAL_FOR_HALUX_D,
  NEUR_AVAL_FOR_HALUX_E, NEUR_AVAL_FOR_DORSI_D, NEUR_AVAL_FOR_DORSI_E: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_MEMBINF(NEUR_NUMPRONT,NEUR_MEMB_INF_QUEIXA, NEUR_NERV_FIBULAR_D, NEUR_NERV_FIBULAR_E,'+
  'NEUR_NERV_TIBIAL_D, NEUR_NERV_TIBIAL_E, NEUR_AVAL_FOR_HALUX_D,NEUR_AVAL_FOR_HALUX_E, NEUR_AVAL_FOR_DORSI_D,'+
  'NEUR_AVAL_FOR_DORSI_E)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')'
  ,[NEUR_NUMPRONT,NEUR_MEMB_INF_QUEIXA, NEUR_NERV_FIBULAR_D, NEUR_NERV_FIBULAR_E,
  NEUR_NERV_TIBIAL_D, NEUR_NERV_TIBIAL_E, NEUR_AVAL_FOR_HALUX_D,
  NEUR_AVAL_FOR_HALUX_E, NEUR_AVAL_FOR_DORSI_D, NEUR_AVAL_FOR_DORSI_E]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_MEMBSUP(NEUR_NUMPRONT,
  NEUR_MEM_SUP_QUEIXA, NEUR_PALP_ULNAR_D, NEUR_PALP_ULNAR_E,
  NEUR_PALP_MEDIANO_D, NEUR_PALP_MEDIANO_E, NEUR_PALP_RADIAL_D,
  NEUR_PALP_RADIAL_E, NEUR_PALP_AURICULAR_D, NEUR_PALP_AURICULAR_E,
  NEUR_AVAL_FOR_ULNAR_D, NEUR_AVAL_FOR_ULNAR_E, NEUR_AVAL_FOR_MEDIANO_D,
  NEUR_AVAL_FOR_MEDIANO_E, NEUR_AVAL_FOR_RADIAL_D,
  NEUR_AVAL_FOR_RADIAL_E: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_MEMBSUP(NEUR_NUMPRONT,NEUR_MEM_SUP_QUEIXA, NEUR_PALP_ULNAR_D, NEUR_PALP_ULNAR_E,'+
  'NEUR_PALP_MEDIANO_D, NEUR_PALP_MEDIANO_E, NEUR_PALP_RADIAL_D,NEUR_PALP_RADIAL_E, NEUR_PALP_AURICULAR_D, NEUR_PALP_AURICULAR_E,'+
  'NEUR_AVAL_FOR_ULNAR_D, NEUR_AVAL_FOR_ULNAR_E, NEUR_AVAL_FOR_MEDIANO_D,NEUR_AVAL_FOR_MEDIANO_E, NEUR_AVAL_FOR_RADIAL_D,'+
  'NEUR_AVAL_FOR_RADIAL_E)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')'
  ,[NEUR_NUMPRONT,
  NEUR_MEM_SUP_QUEIXA, NEUR_PALP_ULNAR_D, NEUR_PALP_ULNAR_E,
  NEUR_PALP_MEDIANO_D, NEUR_PALP_MEDIANO_E, NEUR_PALP_RADIAL_D,
  NEUR_PALP_RADIAL_E, NEUR_PALP_AURICULAR_D, NEUR_PALP_AURICULAR_E,
  NEUR_AVAL_FOR_ULNAR_D, NEUR_AVAL_FOR_ULNAR_E, NEUR_AVAL_FOR_MEDIANO_D,
  NEUR_AVAL_FOR_MEDIANO_E, NEUR_AVAL_FOR_RADIAL_D,
  NEUR_AVAL_FOR_RADIAL_E]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_PE(NEUR_ID: integer; NEUR_NUMPRONT,
  NEUR_LOCALFERIDA, NEUR_HIPOTROFIA, NEUR_SENTIDO: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_PE(NEUR_ID,NEUR_NUMPRONT,NEUR_LOCALFERIDA, NEUR_HIPOTROFIA,'+
  'NEUR_SENTIDO)values(''%d'',''%s'',''%s'',''%s'',''%s'')'
  ,[NEUR_ID, NEUR_NUMPRONT,NEUR_LOCALFERIDA, NEUR_HIPOTROFIA, NEUR_SENTIDO]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_PONTOSMAO(NEUR_NUMPRONT,
  NEUR_MD1_INSP, NEUR_MD2_INSP, NEUR_MD3_INSP, NEUR_MD4_INSP, NEUR_MD5_INSP,
  NEUR_MD6_INSP, NEUR_MD7_INSP, NEUR_ME1_INSP, NEUR_ME2_INSP, NEUR_ME3_INSP,
  NEUR_ME4_INSP, NEUR_ME5_INSP, NEUR_ME6_INSP, NEUR_ME7_INSP, NEUR_MD_OBS,
  NEUR_ME_OBS: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_PONTOSMAO(NEUR_NUMPRONT,NEUR_MD1_INSP, NEUR_MD2_INSP, NEUR_MD3_INSP, NEUR_MD4_INSP, NEUR_MD5_INSP,'+
  'NEUR_MD6_INSP, NEUR_MD7_INSP, NEUR_ME1_INSP, NEUR_ME2_INSP, NEUR_ME3_INSP,NEUR_ME4_INSP, NEUR_ME5_INSP, NEUR_ME6_INSP, NEUR_ME7_INSP, NEUR_MD_OBS,'+
  'NEUR_ME_OBS)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [NEUR_NUMPRONT,
  NEUR_MD1_INSP, NEUR_MD2_INSP, NEUR_MD3_INSP, NEUR_MD4_INSP, NEUR_MD5_INSP,
  NEUR_MD6_INSP, NEUR_MD7_INSP, NEUR_ME1_INSP, NEUR_ME2_INSP, NEUR_ME3_INSP,
  NEUR_ME4_INSP, NEUR_ME5_INSP, NEUR_ME6_INSP, NEUR_ME7_INSP, NEUR_MD_OBS,
  NEUR_ME_OBS]);

  if not Comm.IsPrepared then
    Comm.Prepare;
    try
     Comm.ExecuteUpdate;
     Comm.Free;
     Result:=true;
    except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertNEUROLOGICA_PONTOSPE(NEUR_NUMPRONT,
  NEUR_PD1_INSP, NEUR_PD2_INSP, NEUR_PD3_INSP, NEUR_PD4_INSP, NEUR_PD5_INSP,
  NEUR_PD6_INSP, NEUR_PD7_INSP, NEUR_PD8_INSP, NEUR_PD9_INSP, NEUR_PD10_INSP,
  NEUR_PE1_INSP, NEUR_PE2_INSP, NEUR_PE3_INSP, NEUR_PE4_INSP, NEUR_PE5_INSP,
  NEUR_PE6_INSP, NEUR_PE7_INSP, NEUR_PE8_INSP, NEUR_PE9_INSP, NEUR_PE10_INSP,
  NEUR_PD_OBS, NEUR_PE_OBS: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into NEUROLOGICA_PONTOSPE(NEUR_NUMPRONT,'+
  'NEUR_PD1_INSP, NEUR_PD2_INSP, NEUR_PD3_INSP, NEUR_PD4_INSP, NEUR_PD5_INSP,'+
  'NEUR_PD6_INSP, NEUR_PD7_INSP, NEUR_PD8_INSP, NEUR_PD9_INSP, NEUR_PD10_INSP,'+
  'NEUR_PE1_INSP, NEUR_PE2_INSP, NEUR_PE3_INSP, NEUR_PE4_INSP, NEUR_PE5_INSP,'+
  'NEUR_PE6_INSP, NEUR_PE7_INSP, NEUR_PE8_INSP, NEUR_PE9_INSP, NEUR_PE10_INSP,'+
  'NEUR_PD_OBS, NEUR_PE_OBS)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [NEUR_NUMPRONT,
  NEUR_PD1_INSP, NEUR_PD2_INSP, NEUR_PD3_INSP, NEUR_PD4_INSP, NEUR_PD5_INSP,
  NEUR_PD6_INSP, NEUR_PD7_INSP, NEUR_PD8_INSP, NEUR_PD9_INSP, NEUR_PD10_INSP,
  NEUR_PE1_INSP, NEUR_PE2_INSP, NEUR_PE3_INSP, NEUR_PE4_INSP, NEUR_PE5_INSP,
  NEUR_PE6_INSP, NEUR_PE7_INSP, NEUR_PE8_INSP, NEUR_PE9_INSP, NEUR_PE10_INSP,
  NEUR_PD_OBS, NEUR_PE_OBS]);

  if not Comm.IsPrepared then
    Comm.Prepare;
    try
     Comm.ExecuteUpdate;
     Comm.Free;
     Result:=true;
    except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertPESSOAL(PESS_NUMPRONT, PESS_NUMPRONTALT,
  PESS_TIPOPACIENTE, PESS_NOME, PESS_NOMEMAE, PESS_NOMEPAI, PESS_NASC,
  PESS_IDADE, PESS_GENERO, PESS_NATU_CID, PESS_NATU_UF, PESS_EST_CIVIL,
  PESS_ETNIA, PESS_SERIE_ATUAL, PESS_ESCOL_ANOS, PESS_ESCOL_GRAU,
  PESS_OCUP_DESC, PESS_OCUP_OPC, PESS_REND_FAM, PESS_TRANS_GOV_OPC,
  PESS_TRANS_GOV_TIPO, PESS_PRIV_ALIMEN, PESS_DATA_CAD, PESS_DATA_ATU: String;
  PESS_ID_USU, PESS_ID_EQUI: integer; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into PESSOAL(PESS_NUMPRONT, PESS_NUMPRONTALT,'+
  'PESS_TIPOPACIENTE, PESS_NOME, PESS_NOMEMAE, PESS_NOMEPAI, PESS_NASC,'+
  'PESS_IDADE, PESS_GENERO, PESS_NATU_CID, PESS_NATU_UF, PESS_EST_CIVIL,'+
  'PESS_ETNIA, PESS_SERIE_ATUAL, PESS_ESCOL_ANOS, PESS_ESCOL_GRAU,'+
  'PESS_OCUP_DESC, PESS_OCUP_OPC, PESS_REND_FAM, PESS_TRANS_GOV_OPC,'+
  'PESS_TRANS_GOV_TIPO, PESS_PRIV_ALIMEN, PESS_DATA_CAD, PESS_DATA_ATU,'+
  'PESS_ID_USU, PESS_ID_EQUI)values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%d'',''%d'')',
  [PESS_NUMPRONT, PESS_NUMPRONTALT,
  PESS_TIPOPACIENTE, PESS_NOME, PESS_NOMEMAE, PESS_NOMEPAI, PESS_NASC,
  PESS_IDADE, PESS_GENERO, PESS_NATU_CID, PESS_NATU_UF, PESS_EST_CIVIL,
  PESS_ETNIA, PESS_SERIE_ATUAL, PESS_ESCOL_ANOS, PESS_ESCOL_GRAU,
  PESS_OCUP_DESC, PESS_OCUP_OPC, PESS_REND_FAM, PESS_TRANS_GOV_OPC,
  PESS_TRANS_GOV_TIPO, PESS_PRIV_ALIMEN, PESS_DATA_CAD, PESS_DATA_ATU,
  PESS_ID_USU, PESS_ID_EQUI]);

  if not Comm.IsPrepared then
    Comm.Prepare;
    try
     Comm.ExecuteUpdate;
     Comm.Free;
     Result:=true;
    except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertRECIDIVA(REC_NUMPRONT, REC_PROC_INFO,
  REC_DATA_DIAG: String; REC_QTD_EPISO: integer; REC_LOC_DIAG_DESC,
  REC_LOC_DIAG_OPC: String; REC_NUM_LES:integer; REC_LES_OBS_TRAT, REC_FORMA_CLIN,
  REC_CLASS_OPE, REC_ESQ_TERAP_OPC, REC_GRAU_INCAP_FIS, REC_REAC_OPC,
  REC_REAC_TIPO, REC_REAC_TRAT, REC_REAC_RESP:String; REC_NUM_TRON_AFET_QTD: integer;
  REC_NUM_TRON_AFET_INFO, REC_HIST_DIAG, REC_REACHANS_OPC, REC_REACHANS_TIPO,
  REC_REACHANS_TEMPO, REC_REACHANS_EPI, REC_REACHANS_TRAT,REC_REACHANS_PERI, REC_REACHANS_CONT,
  REC_REACHANS_RESP,REC_APRE_DOE_POS_OPC, REC_APRE_DOE_POS_DESC: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into RECIDIVA(REC_NUMPRONT,REC_PROC_INFO,REC_DATA_DIAG,REC_QTD_EPISO,REC_LOC_DIAG_DESC,'+
  'REC_LOC_DIAG_OPC,REC_NUM_LES,REC_LES_OBS_TRAT,REC_FORMA_CLIN,REC_CLASS_OPE,REC_ESQ_TERAP_OPC,REC_GRAU_INCAP_FIS,REC_REAC_OPC,'+
  'REC_REAC_TIPO,REC_REAC_TRAT,REC_REAC_RESP,REC_NUM_TRON_AFET_QTD,REC_NUM_TRON_AFET_INFO,REC_HIST_DIAG,REC_REACHANS_OPC,'+
  'REC_REACHANS_TIPO,REC_REACHANS_TEMPO,REC_REACHANS_EPI,REC_REACHANS_TRAT,REC_REACHANS_PERI,REC_REACHANS_CONT,REC_REACHANS_RESP,'+
  'REC_APRE_DOE_POS_OPC,REC_APRE_DOE_POS_DESC)values(''%s'',''%s'',''%s'',''%d'',''%s'',''%s'',''%d'',''%s'',''%s'',''%s'',''%s'','+
  '''%s'',''%s'',''%s'',''%s'',''%s'',''%d'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [REC_NUMPRONT,REC_PROC_INFO,REC_DATA_DIAG,REC_QTD_EPISO,REC_LOC_DIAG_DESC,REC_LOC_DIAG_OPC,REC_NUM_LES, REC_LES_OBS_TRAT, REC_FORMA_CLIN,
  REC_CLASS_OPE, REC_ESQ_TERAP_OPC, REC_GRAU_INCAP_FIS, REC_REAC_OPC,REC_REAC_TIPO, REC_REAC_TRAT,REC_REAC_RESP, REC_NUM_TRON_AFET_QTD,
  REC_NUM_TRON_AFET_INFO, REC_HIST_DIAG, REC_REACHANS_OPC, REC_REACHANS_TIPO,REC_REACHANS_TEMPO, REC_REACHANS_EPI,
  REC_REACHANS_TRAT,REC_REACHANS_PERI,REC_REACHANS_CONT, REC_REACHANS_RESP,REC_APRE_DOE_POS_OPC, REC_APRE_DOE_POS_DESC]);

  if not Comm.IsPrepared then
    Comm.Prepare;
    try
     Comm.ExecuteUpdate;
     Comm.Free;
     Result:=true;
    except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertRECIDIVA_TIPO_LESAO(REC_LES_ID: Integer;
  REC_LES_NUMPRONT, REC_LES_TIPO, REC_LES_LOCAL, REC_LES_TAMANHO: String;
  out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into RECIDIVA_TIPO_LESAO(REC_LES_ID, REC_LES_NUMPRONT, REC_LES_TIPO, REC_LES_LOCAL,'+
  'REC_LES_TAMANHO)values(''%d'',''%s'',''%s'',''%s'',''%s'')',
  [REC_LES_ID, REC_LES_NUMPRONT, REC_LES_TIPO, REC_LES_LOCAL, REC_LES_TAMANHO]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertRECIDIVA_TRONCOS_AFETADOS(REC_TRON_ID: integer;
  REC_TRON_NUMPRONT, REC_TRON_TIPO_TRONCO: string; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into RECIDIVA_TRONCOS_AFETADOS(REC_TRON_ID,REC_TRON_NUMPRONT, REC_TRON_TIPO_TRONCO)values(''%d'',''%s'',''%s'')'
  ,[REC_TRON_ID,REC_TRON_NUMPRONT, REC_TRON_TIPO_TRONCO]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertTERMO_CONSCEN_COMU(TERM_COMU_COMUNUMPRONT,
  TERM_COMU_NOME, TERM_COMU_DOC, TERM_COMU_ASS, TERM_COMU_LOCAL,
  TERM_COMU_DATA: string; out Error: string): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into TERMO_CONSCEN_COMU(TERM_COMU_COMUNUMPRONT,'+
  'TERM_COMU_NOME, TERM_COMU_DOC, TERM_COMU_ASS, TERM_COMU_LOCAL,TERM_COMU_DATA)'+
  'values(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
  [TERM_COMU_COMUNUMPRONT,TERM_COMU_NOME, TERM_COMU_DOC, TERM_COMU_ASS, TERM_COMU_LOCAL,TERM_COMU_DATA]);

  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertTRATAMENTO(TRAT_NUMPRONT,TRAT_ESQ_TRAT_OPC, TRAT_REAC_HANS, TRAT_REAC_TIPO,
  TRAT_REAC_TRAT_OPC: String; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into TRATAMENTO(TRAT_NUMPRONT,TRAT_ESQ_TRAT_OPC, TRAT_REAC_HANS, TRAT_REAC_TIPO,'+
  'TRAT_REAC_TRAT_OPC)'+
  'values(''%s'',''%s'',''%s'',''%s'',''%s'')',
  [TRAT_NUMPRONT,TRAT_ESQ_TRAT_OPC, TRAT_REAC_HANS, TRAT_REAC_TIPO,TRAT_REAC_TRAT_OPC]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.InsertUSUARIOS(USUA_ID: integer; USUA_NOME,
  USUA_SENHA: String; USUA_EQUI: integer; out Error: String): Boolean;
var
Comm:TDBXCommand;
begin
  Result:=false;
  DBcon.Open;
  Comm:=DbCon.DBXConnection.CreateCommand;
  Comm.CommandType:=TDBXCommandTypes.DbxSQL;
  Comm.Text:=Format('Insert Into USUARIOS(USUA_ID,USUA_NOME,USUA_SENHA,USUA_EQUI)'+
  'values(''%d'',''%s'',''%s'',''%d'')',
  [USUA_ID,USUA_NOME,USUA_SENHA,USUA_EQUI]);
  if not Comm.IsPrepared then
    Comm.Prepare;
  try
    Comm.ExecuteUpdate;
    Comm.Free;
    Result:=true;
  except on E:Exception do
      Error:=E.Message;
  end;
end;

function TServerMethods1.Multiplicar(X, Y: Integer): Integer;
begin
  result:=x*y;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

