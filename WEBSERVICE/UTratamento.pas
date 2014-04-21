unit UTratamento;

interface
type
  TTratamento = class
    private
      prv_codpess : integer;
      prv_esq_trat_opc : String;
      prv_esq_trat_desc : string;
      prv_reac_hans : string;
      prv_reac_tipo : string;
      prv_reac_trat_opc : string;
      prv_reac_trat_desc : string;
    public
      property codpess : integer read prv_codpess write prv_codpess ;
      property esq_trat_opc : string read prv_esq_trat_opc write prv_esq_trat_opc;
      property esq_trat_desc : string read prv_esq_trat_desc write prv_esq_trat_desc;
      property reac_hans : string read prv_reac_hans write prv_reac_hans;
      property reac_tipo : string read prv_reac_tipo write prv_reac_tipo;
      property reac_trat_opc : string read prv_reac_trat_opc write prv_reac_trat_opc;
      property reac_trat_desc : string read prv_reac_trat_desc write prv_reac_trat_desc;
  end;
implementation

end.
