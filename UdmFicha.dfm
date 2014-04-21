object dmFicha: TdmFicha
  OldCreateOrder = False
  Height = 603
  Width = 1630
  object sdsCadPessoal: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID_PESS, PESS_DATA_ATU, PESS_DATA_CAD, PESS_ESCOL_ANOS, P' +
      'ESS_ESCOL_GRAU, PESS_EST_CIVIL, PESS_ETNIA,'#13#10' PESS_GENERO, PESS_' +
      'IDADE, PESS_NASC, PESS_NATU_CID, PESS_NATU_UF, PESS_NOME, PESS_O' +
      'CUP_DESC, PESS_OCUP_OPC,'#13#10' PESS_PRIV_ALIMEN, PESS_REND_FAM, PESS' +
      '_TRANS_GOV_DESC, PESS_TRANS_GOV_OPC, PESS_TRANS_GOV_TIPO, PESS_N' +
      'UMPRONT,PESS_TIPOPACIENTE,'#13#10'PESS_NOMEPAI, PESS_NOMEMAE,PESS_SERI' +
      'EATUAL'#13#10'FROM PESSOAL'#13#10'where ID_PESS=:ID_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 44
    Top = 5
    object sdsCadPessoalID_PESS: TIntegerField
      FieldName = 'ID_PESS'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsCadPessoalPESS_ESCOL_ANOS: TStringField
      FieldName = 'PESS_ESCOL_ANOS'
      Size = 30
    end
    object sdsCadPessoalPESS_ESCOL_GRAU: TStringField
      FieldName = 'PESS_ESCOL_GRAU'
      Size = 30
    end
    object sdsCadPessoalPESS_EST_CIVIL: TStringField
      FieldName = 'PESS_EST_CIVIL'
      Size = 30
    end
    object sdsCadPessoalPESS_ETNIA: TStringField
      FieldName = 'PESS_ETNIA'
      FixedChar = True
      Size = 10
    end
    object sdsCadPessoalPESS_GENERO: TStringField
      FieldName = 'PESS_GENERO'
      FixedChar = True
      Size = 10
    end
    object sdsCadPessoalPESS_IDADE: TStringField
      FieldName = 'PESS_IDADE'
      FixedChar = True
      Size = 10
    end
    object sdsCadPessoalPESS_NATU_UF: TStringField
      FieldName = 'PESS_NATU_UF'
      Size = 30
    end
    object sdsCadPessoalPESS_NOME: TStringField
      FieldName = 'PESS_NOME'
      Size = 60
    end
    object sdsCadPessoalPESS_OCUP_DESC: TStringField
      FieldName = 'PESS_OCUP_DESC'
      Size = 60
    end
    object sdsCadPessoalPESS_OCUP_OPC: TStringField
      FieldName = 'PESS_OCUP_OPC'
      Size = 30
    end
    object sdsCadPessoalPESS_PRIV_ALIMEN: TStringField
      FieldName = 'PESS_PRIV_ALIMEN'
      FixedChar = True
      Size = 10
    end
    object sdsCadPessoalPESS_REND_FAM: TStringField
      FieldName = 'PESS_REND_FAM'
      Size = 30
    end
    object sdsCadPessoalPESS_TRANS_GOV_DESC: TStringField
      FieldName = 'PESS_TRANS_GOV_DESC'
      Size = 60
    end
    object sdsCadPessoalPESS_TRANS_GOV_OPC: TStringField
      FieldName = 'PESS_TRANS_GOV_OPC'
      Size = 30
    end
    object sdsCadPessoalPESS_TRANS_GOV_TIPO: TStringField
      FieldName = 'PESS_TRANS_GOV_TIPO'
      Size = 30
    end
    object sdsCadPessoalPESS_NATU_CID: TStringField
      FieldName = 'PESS_NATU_CID'
      Size = 60
    end
    object sdsCadPessoalPESS_NUMPRONT: TStringField
      FieldName = 'PESS_NUMPRONT'
      Size = 30
    end
    object sdsCadPessoalPESS_TIPOPACIENTE: TStringField
      FieldName = 'PESS_TIPOPACIENTE'
      Size = 30
    end
    object sdsCadPessoalPESS_NASC: TStringField
      FieldName = 'PESS_NASC'
    end
    object sdsCadPessoalPESS_DATA_ATU: TStringField
      FieldName = 'PESS_DATA_ATU'
      Size = 10
    end
    object sdsCadPessoalPESS_DATA_CAD: TStringField
      FieldName = 'PESS_DATA_CAD'
      Size = 10
    end
    object sdsCadPessoalPESS_NOMEPAI: TStringField
      FieldName = 'PESS_NOMEPAI'
      Size = 60
    end
    object sdsCadPessoalPESS_NOMEMAE: TStringField
      FieldName = 'PESS_NOMEMAE'
      Size = 60
    end
    object sdsCadPessoalPESS_SERIEATUAL: TStringField
      FieldName = 'PESS_SERIEATUAL'
      Size = 60
    end
  end
  object sdsInforGenero: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'select* from GENERO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 44
    Top = 53
  end
  object sdsInfEstado: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'Select* from ESTADOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 40
    Top = 105
  end
  object sdsCadDOMICILIAR: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select DOMI_ABAST_AGUA_DESC, DOMI_ABAST_AGUA_OPC, DOMI_AGUA_CONS' +
      ', DOMI_BAIRRO, DOMI_CEL, DOMI_CEP, DOMI_CIDADE, DOMI_COD_PESS, '#13 +
      #10'DOMI_CONTATO, DOMI_DORM_DENSI, DOMI_DSTINO_LIXO, DOMI_END, DOMI' +
      '_ESTADO, DOMI_EXPC_BAIRRO, DOMI_EXPC_CIDADE, DOMI_EXPC_OPC,'#13#10' DO' +
      'MI_EXPC_UF, DOMI_FONE, DOMI_GEOREF, DOMI_LATITUDE, DOMI_LONGITUD' +
      'E, DOMI_NUM_COMODO, DOMI_REDE_ESGOTO_DESC, DOMI_REDE_ESGOTO_OPC,' +
      ' DOMI_REFE,'#13#10' DOMI_SUBNORMAL, DOMI_TEMPO_RESID, DOMI_TOTAL_MORA,' +
      ' DOMI_ZONA'#13#10'From DOMICILIAR'#13#10'where DOMI_COD_PESS=:DOMI_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DOMI_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 38
    Top = 193
    object sdsCadDOMICILIARDOMI_ABAST_AGUA_DESC: TStringField
      FieldName = 'DOMI_ABAST_AGUA_DESC'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_ABAST_AGUA_OPC: TStringField
      FieldName = 'DOMI_ABAST_AGUA_OPC'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_AGUA_CONS: TStringField
      FieldName = 'DOMI_AGUA_CONS'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_BAIRRO: TStringField
      FieldName = 'DOMI_BAIRRO'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_CEL: TStringField
      FieldName = 'DOMI_CEL'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_CEP: TStringField
      FieldName = 'DOMI_CEP'
      FixedChar = True
      Size = 10
    end
    object sdsCadDOMICILIARDOMI_CIDADE: TStringField
      FieldName = 'DOMI_CIDADE'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_COD_PESS: TIntegerField
      FieldName = 'DOMI_COD_PESS'
      Required = True
    end
    object sdsCadDOMICILIARDOMI_CONTATO: TStringField
      FieldName = 'DOMI_CONTATO'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_DORM_DENSI: TStringField
      FieldName = 'DOMI_DORM_DENSI'
      FixedChar = True
      Size = 10
    end
    object sdsCadDOMICILIARDOMI_DSTINO_LIXO: TStringField
      FieldName = 'DOMI_DSTINO_LIXO'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_END: TStringField
      FieldName = 'DOMI_END'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_ESTADO: TStringField
      FieldName = 'DOMI_ESTADO'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_EXPC_BAIRRO: TStringField
      FieldName = 'DOMI_EXPC_BAIRRO'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_EXPC_CIDADE: TStringField
      FieldName = 'DOMI_EXPC_CIDADE'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_EXPC_OPC: TStringField
      FieldName = 'DOMI_EXPC_OPC'
      FixedChar = True
      Size = 10
    end
    object sdsCadDOMICILIARDOMI_EXPC_UF: TStringField
      FieldName = 'DOMI_EXPC_UF'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_FONE: TStringField
      FieldName = 'DOMI_FONE'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_GEOREF: TStringField
      FieldName = 'DOMI_GEOREF'
      FixedChar = True
      Size = 10
    end
    object sdsCadDOMICILIARDOMI_LATITUDE: TStringField
      FieldName = 'DOMI_LATITUDE'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_LONGITUDE: TStringField
      FieldName = 'DOMI_LONGITUDE'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_NUM_COMODO: TSmallintField
      FieldName = 'DOMI_NUM_COMODO'
    end
    object sdsCadDOMICILIARDOMI_REDE_ESGOTO_DESC: TStringField
      FieldName = 'DOMI_REDE_ESGOTO_DESC'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_REDE_ESGOTO_OPC: TStringField
      FieldName = 'DOMI_REDE_ESGOTO_OPC'
      FixedChar = True
      Size = 10
    end
    object sdsCadDOMICILIARDOMI_REFE: TStringField
      FieldName = 'DOMI_REFE'
      Size = 60
    end
    object sdsCadDOMICILIARDOMI_SUBNORMAL: TStringField
      FieldName = 'DOMI_SUBNORMAL'
      FixedChar = True
      Size = 10
    end
    object sdsCadDOMICILIARDOMI_TEMPO_RESID: TStringField
      FieldName = 'DOMI_TEMPO_RESID'
      Size = 30
    end
    object sdsCadDOMICILIARDOMI_TOTAL_MORA: TSmallintField
      FieldName = 'DOMI_TOTAL_MORA'
    end
    object sdsCadDOMICILIARDOMI_ZONA: TStringField
      FieldName = 'DOMI_ZONA'
      Size = 30
    end
  end
  object sdsCadResidenciasAnt: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select ID_DOMI_RESID_ANT, DOMI_RESID_ANTE_COD_PESS, DOMI_RESID_A' +
      'NT_TEMPO,'#13#10' DOMI_RESID_ANT_ESTADO, DOMI_RESID_ANT_CIDADE, DOMI_R' +
      'ESID_ANT_BAIRRO'#13#10'FROM DOMI_RESID_ANTE'#13#10'WHERE ID_DOMI_RESID_ANT=:' +
      'ID_DOMI_RESID_ANT'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_DOMI_RESID_ANT'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 37
    Top = 280
    object sdsCadResidenciasAntID_DOMI_RESID_ANT: TIntegerField
      FieldName = 'ID_DOMI_RESID_ANT'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsCadResidenciasAntDOMI_RESID_ANTE_COD_PESS: TIntegerField
      FieldName = 'DOMI_RESID_ANTE_COD_PESS'
      Required = True
    end
    object sdsCadResidenciasAntDOMI_RESID_ANT_TEMPO: TStringField
      FieldName = 'DOMI_RESID_ANT_TEMPO'
      Size = 30
    end
    object sdsCadResidenciasAntDOMI_RESID_ANT_ESTADO: TStringField
      FieldName = 'DOMI_RESID_ANT_ESTADO'
      Size = 30
    end
    object sdsCadResidenciasAntDOMI_RESID_ANT_CIDADE: TStringField
      FieldName = 'DOMI_RESID_ANT_CIDADE'
      Size = 60
    end
    object sdsCadResidenciasAntDOMI_RESID_ANT_BAIRRO: TStringField
      FieldName = 'DOMI_RESID_ANT_BAIRRO'
      Size = 60
    end
  end
  object dpsCadPessoal: TDataSetProvider
    DataSet = sdsCadPessoal
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 150
    Top = 5
  end
  object cdsCadPessoal: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadPessoal'
    Left = 262
    Top = 5
    object cdsCadPessoalID_PESS: TIntegerField
      FieldName = 'ID_PESS'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsCadPessoalPESS_ESCOL_ANOS: TStringField
      FieldName = 'PESS_ESCOL_ANOS'
      Size = 30
    end
    object cdsCadPessoalPESS_ESCOL_GRAU: TStringField
      FieldName = 'PESS_ESCOL_GRAU'
      Size = 30
    end
    object cdsCadPessoalPESS_EST_CIVIL: TStringField
      FieldName = 'PESS_EST_CIVIL'
      Size = 30
    end
    object cdsCadPessoalPESS_ETNIA: TStringField
      FieldName = 'PESS_ETNIA'
      FixedChar = True
      Size = 10
    end
    object cdsCadPessoalPESS_GENERO: TStringField
      FieldName = 'PESS_GENERO'
      FixedChar = True
      Size = 10
    end
    object cdsCadPessoalPESS_IDADE: TStringField
      FieldName = 'PESS_IDADE'
      FixedChar = True
      Size = 10
    end
    object cdsCadPessoalPESS_NATU_UF: TStringField
      FieldName = 'PESS_NATU_UF'
      Size = 30
    end
    object cdsCadPessoalPESS_NOME: TStringField
      FieldName = 'PESS_NOME'
      Size = 60
    end
    object cdsCadPessoalPESS_OCUP_DESC: TStringField
      FieldName = 'PESS_OCUP_DESC'
      Size = 60
    end
    object cdsCadPessoalPESS_OCUP_OPC: TStringField
      FieldName = 'PESS_OCUP_OPC'
      Size = 30
    end
    object cdsCadPessoalPESS_PRIV_ALIMEN: TStringField
      FieldName = 'PESS_PRIV_ALIMEN'
      FixedChar = True
      Size = 10
    end
    object cdsCadPessoalPESS_REND_FAM: TStringField
      FieldName = 'PESS_REND_FAM'
      Size = 30
    end
    object cdsCadPessoalPESS_TRANS_GOV_DESC: TStringField
      FieldName = 'PESS_TRANS_GOV_DESC'
      Size = 60
    end
    object cdsCadPessoalPESS_TRANS_GOV_OPC: TStringField
      FieldName = 'PESS_TRANS_GOV_OPC'
      Size = 30
    end
    object cdsCadPessoalPESS_TRANS_GOV_TIPO: TStringField
      FieldName = 'PESS_TRANS_GOV_TIPO'
      Size = 30
    end
    object cdsCadPessoalPESS_NATU_CID: TStringField
      FieldName = 'PESS_NATU_CID'
      Size = 60
    end
    object cdsCadPessoalPESS_NUMPRONT: TStringField
      FieldName = 'PESS_NUMPRONT'
      Size = 30
    end
    object cdsCadPessoalPESS_TIPOPACIENTE: TStringField
      FieldName = 'PESS_TIPOPACIENTE'
      Size = 30
    end
    object cdsCadPessoalPESS_NASC: TStringField
      FieldName = 'PESS_NASC'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsCadPessoalPESS_DATA_ATU: TStringField
      FieldName = 'PESS_DATA_ATU'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object cdsCadPessoalPESS_DATA_CAD: TStringField
      FieldName = 'PESS_DATA_CAD'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object cdsCadPessoalPESS_NOMEPAI: TStringField
      FieldName = 'PESS_NOMEPAI'
      Size = 60
    end
    object cdsCadPessoalPESS_NOMEMAE: TStringField
      FieldName = 'PESS_NOMEMAE'
      Size = 60
    end
    object cdsCadPessoalPESS_SERIEATUAL: TStringField
      FieldName = 'PESS_SERIEATUAL'
      Size = 60
    end
  end
  object dpsInforGenero: TDataSetProvider
    DataSet = sdsInforGenero
    Left = 150
    Top = 53
  end
  object cdsInforGenero: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsInforGenero'
    Left = 262
    Top = 56
    object cdsInforGeneroID_GEN: TIntegerField
      FieldName = 'ID_GEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInforGeneroDESC_GEN: TStringField
      FieldName = 'DESC_GEN'
      Size = 10
    end
  end
  object dpsInfEstado: TDataSetProvider
    DataSet = sdsInfEstado
    Left = 154
    Top = 105
  end
  object cdsInfEstado: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsInfEstado'
    Left = 258
    Top = 105
    object cdsInfEstadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsInfEstadoUF: TStringField
      FieldName = 'UF'
      Size = 30
    end
  end
  object cdsCadDOMICILIAR: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadDOMICILIAR'
    Left = 251
    Top = 195
    object cdsCadDOMICILIARDOMI_ABAST_AGUA_DESC: TStringField
      FieldName = 'DOMI_ABAST_AGUA_DESC'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_ABAST_AGUA_OPC: TStringField
      FieldName = 'DOMI_ABAST_AGUA_OPC'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_AGUA_CONS: TStringField
      FieldName = 'DOMI_AGUA_CONS'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_BAIRRO: TStringField
      FieldName = 'DOMI_BAIRRO'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_CEL: TStringField
      FieldName = 'DOMI_CEL'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_CEP: TStringField
      FieldName = 'DOMI_CEP'
      EditMask = '00000\-999;1;_'
      FixedChar = True
      Size = 10
    end
    object cdsCadDOMICILIARDOMI_CIDADE: TStringField
      FieldName = 'DOMI_CIDADE'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_COD_PESS: TIntegerField
      FieldName = 'DOMI_COD_PESS'
      Required = True
    end
    object cdsCadDOMICILIARDOMI_CONTATO: TStringField
      FieldName = 'DOMI_CONTATO'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_DORM_DENSI: TStringField
      FieldName = 'DOMI_DORM_DENSI'
      FixedChar = True
      Size = 10
    end
    object cdsCadDOMICILIARDOMI_DSTINO_LIXO: TStringField
      FieldName = 'DOMI_DSTINO_LIXO'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_END: TStringField
      FieldName = 'DOMI_END'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_ESTADO: TStringField
      FieldName = 'DOMI_ESTADO'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_EXPC_BAIRRO: TStringField
      FieldName = 'DOMI_EXPC_BAIRRO'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_EXPC_CIDADE: TStringField
      FieldName = 'DOMI_EXPC_CIDADE'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_EXPC_OPC: TStringField
      FieldName = 'DOMI_EXPC_OPC'
      FixedChar = True
      Size = 10
    end
    object cdsCadDOMICILIARDOMI_EXPC_UF: TStringField
      FieldName = 'DOMI_EXPC_UF'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_FONE: TStringField
      FieldName = 'DOMI_FONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_GEOREF: TStringField
      FieldName = 'DOMI_GEOREF'
      FixedChar = True
      Size = 10
    end
    object cdsCadDOMICILIARDOMI_LATITUDE: TStringField
      FieldName = 'DOMI_LATITUDE'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_LONGITUDE: TStringField
      FieldName = 'DOMI_LONGITUDE'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_NUM_COMODO: TSmallintField
      FieldName = 'DOMI_NUM_COMODO'
    end
    object cdsCadDOMICILIARDOMI_REDE_ESGOTO_DESC: TStringField
      FieldName = 'DOMI_REDE_ESGOTO_DESC'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_REDE_ESGOTO_OPC: TStringField
      FieldName = 'DOMI_REDE_ESGOTO_OPC'
      FixedChar = True
      Size = 10
    end
    object cdsCadDOMICILIARDOMI_REFE: TStringField
      FieldName = 'DOMI_REFE'
      Size = 60
    end
    object cdsCadDOMICILIARDOMI_SUBNORMAL: TStringField
      FieldName = 'DOMI_SUBNORMAL'
      FixedChar = True
      Size = 10
    end
    object cdsCadDOMICILIARDOMI_TEMPO_RESID: TStringField
      FieldName = 'DOMI_TEMPO_RESID'
      Size = 30
    end
    object cdsCadDOMICILIARDOMI_TOTAL_MORA: TSmallintField
      FieldName = 'DOMI_TOTAL_MORA'
    end
    object cdsCadDOMICILIARDOMI_ZONA: TStringField
      FieldName = 'DOMI_ZONA'
      Size = 30
    end
  end
  object dpsCadResidenciasAnt: TDataSetProvider
    DataSet = sdsCadResidenciasAnt
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 149
    Top = 280
  end
  object cdsCadResidenciasAnt: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadResidenciasAnt'
    Left = 263
    Top = 280
    object cdsCadResidenciasAntID_DOMI_RESID_ANT: TIntegerField
      FieldName = 'ID_DOMI_RESID_ANT'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsCadResidenciasAntDOMI_RESID_ANTE_COD_PESS: TIntegerField
      FieldName = 'DOMI_RESID_ANTE_COD_PESS'
      Required = True
    end
    object cdsCadResidenciasAntDOMI_RESID_ANT_TEMPO: TStringField
      FieldName = 'DOMI_RESID_ANT_TEMPO'
      Size = 30
    end
    object cdsCadResidenciasAntDOMI_RESID_ANT_ESTADO: TStringField
      FieldName = 'DOMI_RESID_ANT_ESTADO'
      Size = 30
    end
    object cdsCadResidenciasAntDOMI_RESID_ANT_CIDADE: TStringField
      FieldName = 'DOMI_RESID_ANT_CIDADE'
      Size = 60
    end
    object cdsCadResidenciasAntDOMI_RESID_ANT_BAIRRO: TStringField
      FieldName = 'DOMI_RESID_ANT_BAIRRO'
      Size = 60
    end
  end
  object dpsLocResidAnt: TDataSetProvider
    DataSet = sdsLocResidAnt
    Left = 149
    Top = 330
  end
  object cdsLocResidAnt: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocResidAnt'
    Left = 261
    Top = 330
    object cdsLocResidAntID_DOMI_RESID_ANT: TIntegerField
      FieldName = 'ID_DOMI_RESID_ANT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocResidAntDOMI_RESID_ANTE_COD_PESS: TIntegerField
      FieldName = 'DOMI_RESID_ANTE_COD_PESS'
      Required = True
    end
    object cdsLocResidAntDOMI_RESID_ANT_BAIRRO: TStringField
      FieldName = 'DOMI_RESID_ANT_BAIRRO'
      Size = 60
    end
    object cdsLocResidAntDOMI_RESID_ANT_CIDADE: TStringField
      FieldName = 'DOMI_RESID_ANT_CIDADE'
      Size = 60
    end
    object cdsLocResidAntDOMI_RESID_ANT_ESTADO: TStringField
      FieldName = 'DOMI_RESID_ANT_ESTADO'
      Size = 30
    end
    object cdsLocResidAntDOMI_RESID_ANT_TEMPO: TStringField
      FieldName = 'DOMI_RESID_ANT_TEMPO'
      Size = 30
    end
  end
  object dpsCadContHans: TDataSetProvider
    DataSet = sdsCadContHans
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 145
    Top = 404
  end
  object cdsCadContHans: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadContHans'
    Left = 256
    Top = 404
    object cdsCadContHansCONT_HANS_COD_PESS: TIntegerField
      FieldName = 'CONT_HANS_COD_PESS'
      Required = True
    end
    object cdsCadContHansCONT_HANS_CONV_OPC: TStringField
      FieldName = 'CONT_HANS_CONV_OPC'
      Size = 60
    end
    object cdsCadContHansCONT_HANS_CONV_QTD: TSmallintField
      FieldName = 'CONT_HANS_CONV_QTD'
    end
  end
  object sdsLocResidAnt: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'Select ID_DOMI_RESID_ANT, DOMI_RESID_ANTE_COD_PESS,'#13#10' DOMI_RESID' +
      '_ANT_BAIRRO, DOMI_RESID_ANT_CIDADE, DOMI_RESID_ANT_ESTADO, DOMI_' +
      'RESID_ANT_TEMPO'#13#10'from DOMI_RESID_ANTE'#13#10'where DOMI_RESID_ANTE_COD' +
      '_PESS =:DOMI_RESID_ANTE_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DOMI_RESID_ANTE_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 37
    Top = 330
  end
  object sdsCadContHans: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select CONT_HANS_COD_PESS, CONT_HANS_CONV_OPC,'#13#10' CONT_HANS_CONV_' +
      'QTD'#13#10#13#10'From CONTATO_HANSENIASE'#13#10'WHERE CONT_HANS_COD_PESS=:CONT_H' +
      'ANS_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONT_HANS_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 36
    Top = 405
    object sdsCadContHansCONT_HANS_COD_PESS: TIntegerField
      FieldName = 'CONT_HANS_COD_PESS'
      Required = True
    end
    object sdsCadContHansCONT_HANS_CONV_OPC: TStringField
      FieldName = 'CONT_HANS_CONV_OPC'
      Size = 60
    end
    object sdsCadContHansCONT_HANS_CONV_QTD: TSmallintField
      FieldName = 'CONT_HANS_CONV_QTD'
    end
  end
  object sdsLocContHansPess: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID_CONTATO_HANSENIASE_PESS, CONTATO_HANSENIASE_PESS_COD_P' +
      'ES, '#13#10'CONT_HANS_NOME, CONT_HANS_GRAU, CONT_HANS_TIPO, CONT_HANS_' +
      'PERIODO, CONT_HANS_MAIS'#13#10#13#10'FROM CONTATO_HANSENIASE_PESS'#13#10'WHERE C' +
      'ONTATO_HANSENIASE_PESS_COD_PES=:CONTATO_HANSENIASE_PESS_COD_PES'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTATO_HANSENIASE_PESS_COD_PES'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 41
    Top = 501
  end
  object dpsLocContHansPess: TDataSetProvider
    DataSet = sdsLocContHansPess
    Left = 145
    Top = 501
  end
  object cdsLocContHansPess: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocContHansPess'
    Left = 257
    Top = 505
    object cdsLocContHansPessID_CONTATO_HANSENIASE_PESS: TIntegerField
      FieldName = 'ID_CONTATO_HANSENIASE_PESS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocContHansPessCONTATO_HANSENIASE_PESS_COD_PES: TIntegerField
      FieldName = 'CONTATO_HANSENIASE_PESS_COD_PES'
      Required = True
    end
    object cdsLocContHansPessCONT_HANS_NOME: TStringField
      FieldName = 'CONT_HANS_NOME'
      Size = 60
    end
    object cdsLocContHansPessCONT_HANS_GRAU: TStringField
      FieldName = 'CONT_HANS_GRAU'
      Size = 30
    end
    object cdsLocContHansPessCONT_HANS_TIPO: TStringField
      FieldName = 'CONT_HANS_TIPO'
      Size = 30
    end
    object cdsLocContHansPessCONT_HANS_PERIODO: TStringField
      FieldName = 'CONT_HANS_PERIODO'
      Size = 30
    end
    object cdsLocContHansPessCONT_HANS_MAIS: TStringField
      FieldName = 'CONT_HANS_MAIS'
      Size = 60
    end
  end
  object dpsCadDOMICILIAR: TDataSetProvider
    DataSet = sdsCadDOMICILIAR
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 146
    Top = 193
  end
  object cdsFotoDiag: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsFotoDiag'
    Left = 1212
    Top = 10
    object cdsFotoDiagID_FOTO: TIntegerField
      FieldName = 'ID_FOTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsFotoDiagID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
    object cdsFotoDiagFOTO_DESC: TStringField
      FieldName = 'FOTO_DESC'
      Size = 60
    end
    object cdsFotoDiagFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
  end
  object dpsFotoDiag: TDataSetProvider
    DataSet = sdsFotoDiag
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 1140
    Top = 6
  end
  object sdsFotoDiag: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID_FOTO, ID_TIPO_LESAO, FOTO_DESC, FOTO'#13#10'FROM DIAGNOSTICO' +
      '_FOTO'#13#10'WHERE ID_FOTO=:ID_FOTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_FOTO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1068
    Top = 6
    object sdsFotoDiagID_FOTO: TIntegerField
      FieldName = 'ID_FOTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsFotoDiagID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
    object sdsFotoDiagFOTO_DESC: TStringField
      FieldName = 'FOTO_DESC'
      Size = 60
    end
    object sdsFotoDiagFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
  end
  object cdsCadTrat: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadTrat'
    Left = 592
    Top = 312
    object cdsCadTratTRAT_COD_PESS: TIntegerField
      FieldName = 'TRAT_COD_PESS'
      Required = True
    end
    object cdsCadTratTRAT_ESQ_TRAT_DESC: TStringField
      FieldName = 'TRAT_ESQ_TRAT_DESC'
      Size = 60
    end
    object cdsCadTratTRAT_ESQ_TRAT_OPC: TStringField
      FieldName = 'TRAT_ESQ_TRAT_OPC'
      Size = 30
    end
    object cdsCadTratTRAT_REAC_HANS: TStringField
      FieldName = 'TRAT_REAC_HANS'
      Size = 60
    end
    object cdsCadTratTRAT_REAC_TIPO: TStringField
      FieldName = 'TRAT_REAC_TIPO'
      Size = 30
    end
    object cdsCadTratTRAT_REAC_TRAT_DESC: TStringField
      FieldName = 'TRAT_REAC_TRAT_DESC'
      Size = 60
    end
    object cdsCadTratTRAT_REAC_TRAT_OPC: TStringField
      FieldName = 'TRAT_REAC_TRAT_OPC'
      Size = 30
    end
  end
  object dpsCadTrat: TDataSetProvider
    DataSet = sdsCadTrat
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 488
    Top = 311
  end
  object sdsCadTrat: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT TRAT_COD_PESS, TRAT_ESQ_TRAT_DESC, TRAT_ESQ_TRAT_OPC'#13#10', T' +
      'RAT_REAC_HANS, TRAT_REAC_TIPO, TRAT_REAC_TRAT_DESC, TRAT_REAC_TR' +
      'AT_OPC'#13#10#13#10'FROM TRATAMENTO'#13#10'WHERE TRAT_COD_PESS=:TRAT_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TRAT_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 384
    Top = 312
    object sdsCadTratTRAT_COD_PESS: TIntegerField
      FieldName = 'TRAT_COD_PESS'
      Required = True
    end
    object sdsCadTratTRAT_ESQ_TRAT_DESC: TStringField
      FieldName = 'TRAT_ESQ_TRAT_DESC'
      Size = 60
    end
    object sdsCadTratTRAT_ESQ_TRAT_OPC: TStringField
      FieldName = 'TRAT_ESQ_TRAT_OPC'
      Size = 30
    end
    object sdsCadTratTRAT_REAC_HANS: TStringField
      FieldName = 'TRAT_REAC_HANS'
      Size = 60
    end
    object sdsCadTratTRAT_REAC_TIPO: TStringField
      FieldName = 'TRAT_REAC_TIPO'
      Size = 30
    end
    object sdsCadTratTRAT_REAC_TRAT_DESC: TStringField
      FieldName = 'TRAT_REAC_TRAT_DESC'
      Size = 60
    end
    object sdsCadTratTRAT_REAC_TRAT_OPC: TStringField
      FieldName = 'TRAT_REAC_TRAT_OPC'
      Size = 30
    end
  end
  object cdsCadLaboratorio: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadLaboratorio'
    Left = 594
    Top = 213
    object cdsCadLaboratorioLAB_COD_PESS: TIntegerField
      FieldName = 'LAB_COD_PESS'
      Required = True
    end
    object cdsCadLaboratorioLAB_BACIL_IB: TStringField
      FieldName = 'LAB_BACIL_IB'
      Size = 60
    end
    object cdsCadLaboratorioLAB_BACIL_IM: TStringField
      FieldName = 'LAB_BACIL_IM'
      Size = 60
    end
    object cdsCadLaboratorioLAB_BACIL_LOCAL: TStringField
      FieldName = 'LAB_BACIL_LOCAL'
      Size = 60
    end
    object cdsCadLaboratorioLAB_BACIL_OPC: TStringField
      FieldName = 'LAB_BACIL_OPC'
      Size = 30
    end
    object cdsCadLaboratorioLAB_BACIL_TECN: TStringField
      FieldName = 'LAB_BACIL_TECN'
      Size = 60
    end
    object cdsCadLaboratorioLAB_DIAG_MOLEC: TStringField
      FieldName = 'LAB_DIAG_MOLEC'
      Size = 30
    end
    object cdsCadLaboratorioLAB_GENO_DESC: TStringField
      FieldName = 'LAB_GENO_DESC'
      Size = 60
    end
    object cdsCadLaboratorioLAB_GENO_NAO_REALI: TStringField
      FieldName = 'LAB_GENO_NAO_REALI'
      Size = 60
    end
    object cdsCadLaboratorioLAB_HIST: TStringField
      FieldName = 'LAB_HIST'
      Size = 30
    end
    object cdsCadLaboratorioLAB_SENS_FOIP: TStringField
      FieldName = 'LAB_SENS_FOIP'
      Size = 30
    end
    object cdsCadLaboratorioLAB_SENS_GYRA: TStringField
      FieldName = 'LAB_SENS_GYRA'
      Size = 30
    end
    object cdsCadLaboratorioLAB_SENS_RPOB: TStringField
      FieldName = 'LAB_SENS_RPOB'
      Size = 30
    end
    object cdsCadLaboratorioLAB_SOR_CUT_OFF: TStringField
      FieldName = 'LAB_SOR_CUT_OFF'
      Size = 60
    end
    object cdsCadLaboratorioLAB_SOR_DO: TStringField
      FieldName = 'LAB_SOR_DO'
      Size = 60
    end
    object cdsCadLaboratorioLAB_SOR_ELISA: TStringField
      FieldName = 'LAB_SOR_ELISA'
      Size = 60
    end
    object cdsCadLaboratorioLAB_SOR_LOCAL: TStringField
      FieldName = 'LAB_SOR_LOCAL'
      Size = 60
    end
    object cdsCadLaboratorioLAB_SOR_NAO_REALI: TStringField
      FieldName = 'LAB_SOR_NAO_REALI'
      Size = 60
    end
    object cdsCadLaboratorioLAB_SOR_TECN_RESP: TStringField
      FieldName = 'LAB_SOR_TECN_RESP'
      Size = 60
    end
    object cdsCadLaboratorioLAB_BACIL_DATA: TStringField
      FieldName = 'LAB_BACIL_DATA'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object cdsCadLaboratorioLAB_SOR_DATA: TStringField
      FieldName = 'LAB_SOR_DATA'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
  end
  object dpsCadLaboratorio: TDataSetProvider
    DataSet = sdsCadLaboratorio
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 496
    Top = 214
  end
  object sdsCadLaboratorio: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT LAB_COD_PESS, LAB_BACIL_DATA, LAB_BACIL_IB, LAB_BACIL_IM,' +
      ' LAB_BACIL_LOCAL, LAB_BACIL_OPC, LAB_BACIL_TECN, LAB_DIAG_MOLEC,' +
      #13#10' LAB_GENO_DESC, LAB_GENO_NAO_REALI, LAB_HIST, LAB_SENS_FOIP, L' +
      'AB_SENS_GYRA, LAB_SENS_RPOB, LAB_SOR_CUT_OFF, LAB_SOR_DATA, LAB_' +
      'SOR_DO,'#13#10' LAB_SOR_ELISA, LAB_SOR_LOCAL, LAB_SOR_NAO_REALI, LAB_S' +
      'OR_TECN_RESP'#13#10#13#10'FROM LABORATORIO'#13#10'where LAB_COD_PESS=:LAB_COD_PE' +
      'SS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'LAB_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 392
    Top = 216
    object sdsCadLaboratorioLAB_COD_PESS: TIntegerField
      FieldName = 'LAB_COD_PESS'
      Required = True
    end
    object sdsCadLaboratorioLAB_BACIL_IB: TStringField
      FieldName = 'LAB_BACIL_IB'
      Size = 60
    end
    object sdsCadLaboratorioLAB_BACIL_IM: TStringField
      FieldName = 'LAB_BACIL_IM'
      Size = 60
    end
    object sdsCadLaboratorioLAB_BACIL_LOCAL: TStringField
      FieldName = 'LAB_BACIL_LOCAL'
      Size = 60
    end
    object sdsCadLaboratorioLAB_BACIL_OPC: TStringField
      FieldName = 'LAB_BACIL_OPC'
      Size = 30
    end
    object sdsCadLaboratorioLAB_BACIL_TECN: TStringField
      FieldName = 'LAB_BACIL_TECN'
      Size = 60
    end
    object sdsCadLaboratorioLAB_DIAG_MOLEC: TStringField
      FieldName = 'LAB_DIAG_MOLEC'
      Size = 30
    end
    object sdsCadLaboratorioLAB_GENO_DESC: TStringField
      FieldName = 'LAB_GENO_DESC'
      Size = 60
    end
    object sdsCadLaboratorioLAB_GENO_NAO_REALI: TStringField
      FieldName = 'LAB_GENO_NAO_REALI'
      Size = 60
    end
    object sdsCadLaboratorioLAB_HIST: TStringField
      FieldName = 'LAB_HIST'
      Size = 30
    end
    object sdsCadLaboratorioLAB_SENS_FOIP: TStringField
      FieldName = 'LAB_SENS_FOIP'
      Size = 30
    end
    object sdsCadLaboratorioLAB_SENS_GYRA: TStringField
      FieldName = 'LAB_SENS_GYRA'
      Size = 30
    end
    object sdsCadLaboratorioLAB_SENS_RPOB: TStringField
      FieldName = 'LAB_SENS_RPOB'
      Size = 30
    end
    object sdsCadLaboratorioLAB_SOR_CUT_OFF: TStringField
      FieldName = 'LAB_SOR_CUT_OFF'
      Size = 60
    end
    object sdsCadLaboratorioLAB_SOR_DO: TStringField
      FieldName = 'LAB_SOR_DO'
      Size = 60
    end
    object sdsCadLaboratorioLAB_SOR_ELISA: TStringField
      FieldName = 'LAB_SOR_ELISA'
      Size = 60
    end
    object sdsCadLaboratorioLAB_SOR_LOCAL: TStringField
      FieldName = 'LAB_SOR_LOCAL'
      Size = 60
    end
    object sdsCadLaboratorioLAB_SOR_NAO_REALI: TStringField
      FieldName = 'LAB_SOR_NAO_REALI'
      Size = 60
    end
    object sdsCadLaboratorioLAB_SOR_TECN_RESP: TStringField
      FieldName = 'LAB_SOR_TECN_RESP'
      Size = 60
    end
    object sdsCadLaboratorioLAB_BACIL_DATA: TStringField
      FieldName = 'LAB_BACIL_DATA'
      Size = 10
    end
    object sdsCadLaboratorioLAB_SOR_DATA: TStringField
      FieldName = 'LAB_SOR_DATA'
      Size = 10
    end
  end
  object cdsCadTipoLesao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadTipoLesao'
    Left = 592
    Top = 63
    object cdsCadTipoLesaoID_DIAGNOSTICO_TIPO_LESAO: TIntegerField
      FieldName = 'ID_DIAGNOSTICO_TIPO_LESAO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsCadTipoLesaoDIAG_TIPO_LESOES_COD_PESS: TIntegerField
      FieldName = 'DIAG_TIPO_LESOES_COD_PESS'
      Required = True
    end
    object cdsCadTipoLesaoDIAG_TIPO_LESAO: TStringField
      FieldName = 'DIAG_TIPO_LESAO'
      Size = 30
    end
    object cdsCadTipoLesaoDIAG_LOCAL_LESAO: TStringField
      FieldName = 'DIAG_LOCAL_LESAO'
      Size = 60
    end
    object cdsCadTipoLesaoDIAG_FORMA_CLIN: TStringField
      FieldName = 'DIAG_FORMA_CLIN'
      Size = 30
    end
    object cdsCadTipoLesaoDIAG_CLASS_OPERA: TStringField
      FieldName = 'DIAG_CLASS_OPERA'
      Size = 60
    end
  end
  object dpsCadTipoLesao: TDataSetProvider
    DataSet = sdsCadTipoLesao
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 492
    Top = 62
  end
  object sdsCadTipoLesao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID_DIAGNOSTICO_TIPO_LESAO, DIAG_TIPO_LESOES_COD_PESS, DIA' +
      'G_TIPO_LESAO,'#13#10' DIAG_LOCAL_LESAO, DIAG_FORMA_CLIN, DIAG_CLASS_OP' +
      'ERA'#13#10#13#10'FROM DIAGNOSTICO_TIPO_LESAO'#13#10'WHERE ID_DIAGNOSTICO_TIPO_LE' +
      'SAO=:ID_DIAGNOSTICO_TIPO_LESAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_DIAGNOSTICO_TIPO_LESAO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 397
    Top = 61
    object sdsCadTipoLesaoID_DIAGNOSTICO_TIPO_LESAO: TIntegerField
      FieldName = 'ID_DIAGNOSTICO_TIPO_LESAO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsCadTipoLesaoDIAG_TIPO_LESOES_COD_PESS: TIntegerField
      FieldName = 'DIAG_TIPO_LESOES_COD_PESS'
      Required = True
    end
    object sdsCadTipoLesaoDIAG_TIPO_LESAO: TStringField
      FieldName = 'DIAG_TIPO_LESAO'
      Size = 30
    end
    object sdsCadTipoLesaoDIAG_LOCAL_LESAO: TStringField
      FieldName = 'DIAG_LOCAL_LESAO'
      Size = 60
    end
    object sdsCadTipoLesaoDIAG_FORMA_CLIN: TStringField
      FieldName = 'DIAG_FORMA_CLIN'
      Size = 30
    end
    object sdsCadTipoLesaoDIAG_CLASS_OPERA: TStringField
      FieldName = 'DIAG_CLASS_OPERA'
      Size = 60
    end
  end
  object cdsCadDiagnostico: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadDiagnostico'
    Left = 594
    Top = 3
    object cdsCadDiagnosticoDIAG_COD_PESS: TIntegerField
      FieldName = 'DIAG_COD_PESS'
      Required = True
    end
    object cdsCadDiagnosticoDIAG_CICAT_BCG_DIAM: TStringField
      FieldName = 'DIAG_CICAT_BCG_DIAM'
      Size = 30
    end
    object cdsCadDiagnosticoDIAG_CICAT_BCG_NUM: TStringField
      FieldName = 'DIAG_CICAT_BCG_NUM'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_CO_INFEC_HEPA: TStringField
      FieldName = 'DIAG_CO_INFEC_HEPA'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_CO_INFEC_HIV: TStringField
      FieldName = 'DIAG_CO_INFEC_HIV'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_CO_INFEC_OUTRAS: TStringField
      FieldName = 'DIAG_CO_INFEC_OUTRAS'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_CO_INFEC_TUBER: TStringField
      FieldName = 'DIAG_CO_INFEC_TUBER'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_CO_MORB_DIAB: TStringField
      FieldName = 'DIAG_CO_MORB_DIAB'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_CO_MORB_HIPER: TStringField
      FieldName = 'DIAG_CO_MORB_HIPER'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_CO_MORB_NEO: TStringField
      FieldName = 'DIAG_CO_MORB_NEO'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_CO_MORB_OUTRAS: TStringField
      FieldName = 'DIAG_CO_MORB_OUTRAS'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_FOTO: TStringField
      FieldName = 'DIAG_FOTO'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_FOTO_REG: TStringField
      FieldName = 'DIAG_FOTO_REG'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_GRAU_INCAP: TStringField
      FieldName = 'DIAG_GRAU_INCAP'
      Size = 30
    end
    object cdsCadDiagnosticoDIAG_NUMERO_LES: TStringField
      FieldName = 'DIAG_NUMERO_LES'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_PRONTUARIO: TStringField
      FieldName = 'DIAG_PRONTUARIO'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_RECIDIVA: TStringField
      FieldName = 'DIAG_RECIDIVA'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_SINAN: TStringField
      FieldName = 'DIAG_SINAN'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_UND_SAUDE: TStringField
      FieldName = 'DIAG_UND_SAUDE'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_DATA: TStringField
      FieldName = 'DIAG_DATA'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object cdsCadDiagnosticoDIAG_CLASS_OPERA: TStringField
      FieldName = 'DIAG_CLASS_OPERA'
      Size = 60
    end
    object cdsCadDiagnosticoDIAG_FORMA_CLIN: TStringField
      FieldName = 'DIAG_FORMA_CLIN'
      Size = 60
    end
  end
  object dpsCadDiagnostico: TDataSetProvider
    DataSet = sdsCadDiagnostico
    Left = 500
    Top = 3
  end
  object sdsCadDiagnostico: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT DIAG_COD_PESS, DIAG_CICAT_BCG_DIAM, DIAG_CICAT_BCG_NUM, D' +
      'IAG_CO_INFEC_HEPA, DIAG_CO_INFEC_HIV, DIAG_CO_INFEC_OUTRAS, '#13#10'DI' +
      'AG_CO_INFEC_TUBER, DIAG_CO_MORB_DIAB, DIAG_CO_MORB_HIPER, DIAG_C' +
      'O_MORB_NEO, DIAG_CO_MORB_OUTRAS, DIAG_DATA, DIAG_FOTO,'#13#10'DIAG_FOT' +
      'O_REG, DIAG_GRAU_INCAP, DIAG_NUMERO_LES, DIAG_PRONTUARIO, DIAG_R' +
      'ECIDIVA, DIAG_SINAN, DIAG_UND_SAUDE, DIAG_CLASS_OPERA, DIAG_FORM' +
      'A_CLIN'#13#10'FROM DIAGNOSTICO'#13#10'where DIAG_COD_PESS=:DIAG_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIAG_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 396
    Top = 3
    object sdsCadDiagnosticoDIAG_COD_PESS: TIntegerField
      FieldName = 'DIAG_COD_PESS'
      Required = True
    end
    object sdsCadDiagnosticoDIAG_CICAT_BCG_DIAM: TStringField
      FieldName = 'DIAG_CICAT_BCG_DIAM'
      Size = 30
    end
    object sdsCadDiagnosticoDIAG_CICAT_BCG_NUM: TStringField
      FieldName = 'DIAG_CICAT_BCG_NUM'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_CO_INFEC_HEPA: TStringField
      FieldName = 'DIAG_CO_INFEC_HEPA'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_CO_INFEC_HIV: TStringField
      FieldName = 'DIAG_CO_INFEC_HIV'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_CO_INFEC_OUTRAS: TStringField
      FieldName = 'DIAG_CO_INFEC_OUTRAS'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_CO_INFEC_TUBER: TStringField
      FieldName = 'DIAG_CO_INFEC_TUBER'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_CO_MORB_DIAB: TStringField
      FieldName = 'DIAG_CO_MORB_DIAB'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_CO_MORB_HIPER: TStringField
      FieldName = 'DIAG_CO_MORB_HIPER'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_CO_MORB_NEO: TStringField
      FieldName = 'DIAG_CO_MORB_NEO'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_CO_MORB_OUTRAS: TStringField
      FieldName = 'DIAG_CO_MORB_OUTRAS'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_FOTO: TStringField
      FieldName = 'DIAG_FOTO'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_FOTO_REG: TStringField
      FieldName = 'DIAG_FOTO_REG'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_GRAU_INCAP: TStringField
      FieldName = 'DIAG_GRAU_INCAP'
      Size = 30
    end
    object sdsCadDiagnosticoDIAG_NUMERO_LES: TStringField
      FieldName = 'DIAG_NUMERO_LES'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_PRONTUARIO: TStringField
      FieldName = 'DIAG_PRONTUARIO'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_RECIDIVA: TStringField
      FieldName = 'DIAG_RECIDIVA'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_SINAN: TStringField
      FieldName = 'DIAG_SINAN'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_UND_SAUDE: TStringField
      FieldName = 'DIAG_UND_SAUDE'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_DATA: TStringField
      FieldName = 'DIAG_DATA'
      Size = 10
    end
    object sdsCadDiagnosticoDIAG_CLASS_OPERA: TStringField
      FieldName = 'DIAG_CLASS_OPERA'
      Size = 60
    end
    object sdsCadDiagnosticoDIAG_FORMA_CLIN: TStringField
      FieldName = 'DIAG_FORMA_CLIN'
      Size = 60
    end
  end
  object cdsCadContHansPess: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadContHansPess'
    Left = 266
    Top = 455
    object cdsCadContHansPessID_CONTATO_HANSENIASE_PESS: TIntegerField
      FieldName = 'ID_CONTATO_HANSENIASE_PESS'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsCadContHansPessCONTATO_HANSENIASE_PESS_COD_PES: TIntegerField
      FieldName = 'CONTATO_HANSENIASE_PESS_COD_PES'
      Required = True
    end
    object cdsCadContHansPessCONT_HANS_NOME: TStringField
      FieldName = 'CONT_HANS_NOME'
      Size = 60
    end
    object cdsCadContHansPessCONT_HANS_TIPO: TStringField
      FieldName = 'CONT_HANS_TIPO'
      Size = 30
    end
    object cdsCadContHansPessCONT_HANS_PERIODO: TStringField
      FieldName = 'CONT_HANS_PERIODO'
      Size = 30
    end
    object cdsCadContHansPessCONT_HANS_MAIS: TStringField
      FieldName = 'CONT_HANS_MAIS'
      Size = 60
    end
    object cdsCadContHansPessCONT_HANS_GRAU: TStringField
      FieldName = 'CONT_HANS_GRAU'
      Size = 30
    end
  end
  object dpsCadContHansPess: TDataSetProvider
    DataSet = sdsCadContHansPess
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 149
    Top = 455
  end
  object sdsCadContHansPess: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select ID_CONTATO_HANSENIASE_PESS, CONTATO_HANSENIASE_PESS_COD_P' +
      'ES, CONT_HANS_NOME,'#13#10' CONT_HANS_TIPO, CONT_HANS_PERIODO, CONT_HA' +
      'NS_MAIS, CONT_HANS_GRAU'#13#10#13#10'from CONTATO_HANSENIASE_PESS'#13#10'WHERE I' +
      'D_CONTATO_HANSENIASE_PESS=:ID_CONTATO_HANSENIASE_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CONTATO_HANSENIASE_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 42
    Top = 454
    object sdsCadContHansPessID_CONTATO_HANSENIASE_PESS: TIntegerField
      FieldName = 'ID_CONTATO_HANSENIASE_PESS'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsCadContHansPessCONTATO_HANSENIASE_PESS_COD_PES: TIntegerField
      FieldName = 'CONTATO_HANSENIASE_PESS_COD_PES'
      Required = True
    end
    object sdsCadContHansPessCONT_HANS_NOME: TStringField
      FieldName = 'CONT_HANS_NOME'
      Size = 60
    end
    object sdsCadContHansPessCONT_HANS_TIPO: TStringField
      FieldName = 'CONT_HANS_TIPO'
      Size = 30
    end
    object sdsCadContHansPessCONT_HANS_PERIODO: TStringField
      FieldName = 'CONT_HANS_PERIODO'
      Size = 30
    end
    object sdsCadContHansPessCONT_HANS_MAIS: TStringField
      FieldName = 'CONT_HANS_MAIS'
      Size = 60
    end
    object sdsCadContHansPessCONT_HANS_GRAU: TStringField
      FieldName = 'CONT_HANS_GRAU'
      Size = 30
    end
  end
  object cdsLocTipoLesao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocTipoLesao'
    Left = 592
    Top = 127
    object cdsLocTipoLesaoID_DIAGNOSTICO_TIPO_LESAO: TIntegerField
      FieldName = 'ID_DIAGNOSTICO_TIPO_LESAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocTipoLesaoDIAG_TIPO_LESAO: TStringField
      FieldName = 'DIAG_TIPO_LESAO'
      Size = 30
    end
    object cdsLocTipoLesaoDIAG_FORMA_CLIN: TStringField
      FieldName = 'DIAG_FORMA_CLIN'
      Size = 30
    end
    object cdsLocTipoLesaoDIAG_CLASS_OPERA: TStringField
      FieldName = 'DIAG_CLASS_OPERA'
      Size = 60
    end
  end
  object dpsLocTipoLesao: TDataSetProvider
    DataSet = sdsLocTipoLesao
    Left = 492
    Top = 126
  end
  object sdsLocTipoLesao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID_DIAGNOSTICO_TIPO_LESAO, DIAG_TIPO_LESAO, DIAG_FORMA_CL' +
      'IN, DIAG_CLASS_OPERA'#13#10#13#10'FROM DIAGNOSTICO_TIPO_LESAO'#13#10'WHERE DIAG_' +
      'TIPO_LESOES_COD_PESS =:DIAG_TIPO_LESOES_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIAG_TIPO_LESOES_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 397
    Top = 125
  end
  object sdsLocFotoDiag: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT FOTO_DESC, FOTO, ID_FOTO, ID_TIPO_LESAO'#13#10'FROM DIAGNOSTICO' +
      '_FOTO'#13#10'WHERE ID_TIPO_LESAO=:ID_TIPO_LESAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TIPO_LESAO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1060
    Top = 70
  end
  object dpsLocFotoDiag: TDataSetProvider
    DataSet = sdsLocFotoDiag
    Left = 1156
    Top = 70
  end
  object cdsLocFotoDiag: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocFotoDiag'
    Left = 1236
    Top = 69
    object cdsLocFotoDiagFOTO_DESC: TStringField
      DisplayWidth = 73
      FieldName = 'FOTO_DESC'
      Size = 60
    end
    object cdsLocFotoDiagFOTO: TBlobField
      DisplayWidth = 12
      FieldName = 'FOTO'
      Size = 1
    end
    object cdsLocFotoDiagID_FOTO: TIntegerField
      FieldName = 'ID_FOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocFotoDiagID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
  end
  object sdsCadRecidiva: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select REC_COD_PESS, REC_APRE_DOEN_POS_DESC, REC_APRE_DOEN_POS_O' +
      'PC, REC_APRE_HANS_POS_EPI, REC_APRE_HANS_POS_ESQ_CONT, REC_APRE_' +
      'HANS_POS_ESQ_DESC, '#13#10'REC_APRE_HANS_POS_ESQ_OPC, REC_APRE_HANS_PO' +
      'S_ESQ_PERI, REC_APRE_HANS_POS_ESQ_RESP, REC_APRE_HANS_POS_OPC, R' +
      'EC_APRE_HANS_POS_TIPO, REC_APRE_REAC_TRAT_OPC,'#13#10'REC_BACI_IB, REC' +
      '_BACI_IM, REC_CLASS_OPE, REC_DATA_DIAG, REC_ESQ_TERAP_DESC, REC_' +
      'ESQ_TERAP_OPC, REC_FOR_CLIN, REC_GRAU_INCAP_FIS, REC_HIST_DIAG R' +
      'EC_APRE_REAC_TRAT_RESP, '#13#10'REC_APRE_REAC_TRAT_TRAT, REC_BACI_DIAG' +
      ', REC_LES_OBS_TRAT, REC_LOC_DIAG_DESC, REC_LOC_DIAG_OPC, REC_NUM' +
      '_LES, REC_NUM_TRON_AFET_NAO_INFO, REC_NUM_TRON_AFET_QTD, REC_PRO' +
      'C_INFO,'#13#10' REC_QTD_EPISO, REC_APRE_REAC_TRAT_TIP, REC_HIST_DIAG, ' +
      'REC_APRE_HANS_POS_TEMPO'#13#10#13#10'FROM RECIDIVA'#13#10'WHERE REC_COD_PESS=:RE' +
      'C_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REC_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 388
    Top = 389
    object sdsCadRecidivaREC_COD_PESS: TIntegerField
      FieldName = 'REC_COD_PESS'
      Required = True
    end
    object sdsCadRecidivaREC_APRE_DOEN_POS_DESC: TStringField
      FieldName = 'REC_APRE_DOEN_POS_DESC'
      Size = 60
    end
    object sdsCadRecidivaREC_APRE_DOEN_POS_OPC: TStringField
      FieldName = 'REC_APRE_DOEN_POS_OPC'
      Size = 30
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_EPI: TStringField
      FieldName = 'REC_APRE_HANS_POS_EPI'
      Size = 60
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_ESQ_CONT: TStringField
      FieldName = 'REC_APRE_HANS_POS_ESQ_CONT'
      Size = 60
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_ESQ_DESC: TStringField
      FieldName = 'REC_APRE_HANS_POS_ESQ_DESC'
      Size = 60
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_ESQ_OPC: TStringField
      FieldName = 'REC_APRE_HANS_POS_ESQ_OPC'
      Size = 30
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_ESQ_PERI: TSmallintField
      FieldName = 'REC_APRE_HANS_POS_ESQ_PERI'
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_ESQ_RESP: TStringField
      FieldName = 'REC_APRE_HANS_POS_ESQ_RESP'
      Size = 60
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_OPC: TStringField
      FieldName = 'REC_APRE_HANS_POS_OPC'
      Size = 60
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_TIPO: TStringField
      FieldName = 'REC_APRE_HANS_POS_TIPO'
      Size = 30
    end
    object sdsCadRecidivaREC_APRE_REAC_TRAT_OPC: TStringField
      FieldName = 'REC_APRE_REAC_TRAT_OPC'
      Size = 60
    end
    object sdsCadRecidivaREC_BACI_IB: TStringField
      FieldName = 'REC_BACI_IB'
      Size = 60
    end
    object sdsCadRecidivaREC_BACI_IM: TStringField
      FieldName = 'REC_BACI_IM'
      Size = 60
    end
    object sdsCadRecidivaREC_CLASS_OPE: TStringField
      FieldName = 'REC_CLASS_OPE'
      Size = 60
    end
    object sdsCadRecidivaREC_ESQ_TERAP_DESC: TStringField
      FieldName = 'REC_ESQ_TERAP_DESC'
      Size = 60
    end
    object sdsCadRecidivaREC_ESQ_TERAP_OPC: TStringField
      FieldName = 'REC_ESQ_TERAP_OPC'
      Size = 30
    end
    object sdsCadRecidivaREC_FOR_CLIN: TStringField
      FieldName = 'REC_FOR_CLIN'
      Size = 30
    end
    object sdsCadRecidivaREC_GRAU_INCAP_FIS: TStringField
      FieldName = 'REC_GRAU_INCAP_FIS'
      Size = 30
    end
    object sdsCadRecidivaREC_APRE_REAC_TRAT_RESP: TStringField
      FieldName = 'REC_APRE_REAC_TRAT_RESP'
      Size = 30
    end
    object sdsCadRecidivaREC_APRE_REAC_TRAT_TRAT: TStringField
      FieldName = 'REC_APRE_REAC_TRAT_TRAT'
      Size = 30
    end
    object sdsCadRecidivaREC_BACI_DIAG: TStringField
      FieldName = 'REC_BACI_DIAG'
      Size = 30
    end
    object sdsCadRecidivaREC_LES_OBS_TRAT: TStringField
      FieldName = 'REC_LES_OBS_TRAT'
      Size = 60
    end
    object sdsCadRecidivaREC_LOC_DIAG_DESC: TStringField
      FieldName = 'REC_LOC_DIAG_DESC'
      Size = 60
    end
    object sdsCadRecidivaREC_LOC_DIAG_OPC: TStringField
      FieldName = 'REC_LOC_DIAG_OPC'
      Size = 30
    end
    object sdsCadRecidivaREC_NUM_LES: TSmallintField
      FieldName = 'REC_NUM_LES'
    end
    object sdsCadRecidivaREC_NUM_TRON_AFET_NAO_INFO: TStringField
      FieldName = 'REC_NUM_TRON_AFET_NAO_INFO'
      Size = 30
    end
    object sdsCadRecidivaREC_NUM_TRON_AFET_QTD: TSmallintField
      FieldName = 'REC_NUM_TRON_AFET_QTD'
    end
    object sdsCadRecidivaREC_PROC_INFO: TStringField
      FieldName = 'REC_PROC_INFO'
      Size = 30
    end
    object sdsCadRecidivaREC_QTD_EPISO: TSmallintField
      FieldName = 'REC_QTD_EPISO'
    end
    object sdsCadRecidivaREC_APRE_REAC_TRAT_TIP: TStringField
      FieldName = 'REC_APRE_REAC_TRAT_TIP'
      Size = 30
    end
    object sdsCadRecidivaREC_HIST_DIAG: TStringField
      FieldName = 'REC_HIST_DIAG'
      Size = 30
    end
    object sdsCadRecidivaREC_APRE_HANS_POS_TEMPO: TStringField
      FieldName = 'REC_APRE_HANS_POS_TEMPO'
      Size = 30
    end
    object sdsCadRecidivaREC_DATA_DIAG: TStringField
      FieldName = 'REC_DATA_DIAG'
      Size = 10
    end
  end
  object dpsCadRecidiva: TDataSetProvider
    DataSet = sdsCadRecidiva
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 492
    Top = 389
  end
  object cdsCadRecidiva: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadRecidiva'
    Left = 596
    Top = 393
    object cdsCadRecidivaREC_COD_PESS: TIntegerField
      FieldName = 'REC_COD_PESS'
      Required = True
    end
    object cdsCadRecidivaREC_APRE_DOEN_POS_DESC: TStringField
      FieldName = 'REC_APRE_DOEN_POS_DESC'
      Size = 60
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_EPI: TStringField
      FieldName = 'REC_APRE_HANS_POS_EPI'
      Size = 60
    end
    object cdsCadRecidivaREC_APRE_DOEN_POS_OPC: TStringField
      FieldName = 'REC_APRE_DOEN_POS_OPC'
      Size = 30
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_ESQ_CONT: TStringField
      FieldName = 'REC_APRE_HANS_POS_ESQ_CONT'
      Size = 60
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_ESQ_DESC: TStringField
      FieldName = 'REC_APRE_HANS_POS_ESQ_DESC'
      Size = 60
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_ESQ_OPC: TStringField
      FieldName = 'REC_APRE_HANS_POS_ESQ_OPC'
      Size = 30
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_ESQ_PERI: TSmallintField
      FieldName = 'REC_APRE_HANS_POS_ESQ_PERI'
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_ESQ_RESP: TStringField
      FieldName = 'REC_APRE_HANS_POS_ESQ_RESP'
      Size = 60
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_OPC: TStringField
      FieldName = 'REC_APRE_HANS_POS_OPC'
      Size = 60
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_TIPO: TStringField
      FieldName = 'REC_APRE_HANS_POS_TIPO'
      Size = 30
    end
    object cdsCadRecidivaREC_APRE_REAC_TRAT_OPC: TStringField
      FieldName = 'REC_APRE_REAC_TRAT_OPC'
      Size = 60
    end
    object cdsCadRecidivaREC_BACI_IB: TStringField
      FieldName = 'REC_BACI_IB'
      Size = 60
    end
    object cdsCadRecidivaREC_BACI_IM: TStringField
      FieldName = 'REC_BACI_IM'
      Size = 60
    end
    object cdsCadRecidivaREC_CLASS_OPE: TStringField
      FieldName = 'REC_CLASS_OPE'
      Size = 60
    end
    object cdsCadRecidivaREC_ESQ_TERAP_DESC: TStringField
      FieldName = 'REC_ESQ_TERAP_DESC'
      Size = 60
    end
    object cdsCadRecidivaREC_ESQ_TERAP_OPC: TStringField
      FieldName = 'REC_ESQ_TERAP_OPC'
      Size = 30
    end
    object cdsCadRecidivaREC_FOR_CLIN: TStringField
      FieldName = 'REC_FOR_CLIN'
      Size = 30
    end
    object cdsCadRecidivaREC_GRAU_INCAP_FIS: TStringField
      FieldName = 'REC_GRAU_INCAP_FIS'
      Size = 30
    end
    object cdsCadRecidivaREC_APRE_REAC_TRAT_RESP: TStringField
      FieldName = 'REC_APRE_REAC_TRAT_RESP'
      Size = 30
    end
    object cdsCadRecidivaREC_APRE_REAC_TRAT_TRAT: TStringField
      FieldName = 'REC_APRE_REAC_TRAT_TRAT'
      Size = 30
    end
    object cdsCadRecidivaREC_BACI_DIAG: TStringField
      FieldName = 'REC_BACI_DIAG'
      Size = 30
    end
    object cdsCadRecidivaREC_LES_OBS_TRAT: TStringField
      FieldName = 'REC_LES_OBS_TRAT'
      Size = 60
    end
    object cdsCadRecidivaREC_LOC_DIAG_DESC: TStringField
      FieldName = 'REC_LOC_DIAG_DESC'
      Size = 60
    end
    object cdsCadRecidivaREC_LOC_DIAG_OPC: TStringField
      FieldName = 'REC_LOC_DIAG_OPC'
      Size = 30
    end
    object cdsCadRecidivaREC_NUM_LES: TSmallintField
      FieldName = 'REC_NUM_LES'
    end
    object cdsCadRecidivaREC_NUM_TRON_AFET_NAO_INFO: TStringField
      FieldName = 'REC_NUM_TRON_AFET_NAO_INFO'
      Size = 30
    end
    object cdsCadRecidivaREC_NUM_TRON_AFET_QTD: TSmallintField
      FieldName = 'REC_NUM_TRON_AFET_QTD'
    end
    object cdsCadRecidivaREC_PROC_INFO: TStringField
      FieldName = 'REC_PROC_INFO'
      Size = 30
    end
    object cdsCadRecidivaREC_QTD_EPISO: TSmallintField
      FieldName = 'REC_QTD_EPISO'
    end
    object cdsCadRecidivaREC_APRE_REAC_TRAT_TIP: TStringField
      FieldName = 'REC_APRE_REAC_TRAT_TIP'
      Size = 30
    end
    object cdsCadRecidivaREC_HIST_DIAG: TStringField
      FieldName = 'REC_HIST_DIAG'
      Size = 30
    end
    object cdsCadRecidivaREC_APRE_HANS_POS_TEMPO: TStringField
      FieldName = 'REC_APRE_HANS_POS_TEMPO'
      Size = 30
    end
    object cdsCadRecidivaREC_DATA_DIAG: TStringField
      FieldName = 'REC_DATA_DIAG'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
  end
  object sdsRecTipoLesao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'Select ID_TIPO_LESAO_RECIDIVA, REC_COD_PESS, REC_FORMA_CLIN, REC' +
      '_TIPO_LESAO,REC_CLASS_OPERA'#13#10', REC_LOCAL_LESAO'#13#10'from RECIDIVA_TI' +
      'PO_LESAO'#13#10'WHERE ID_TIPO_LESAO_RECIDIVA=:ID_TIPO_LESAO_RECIDIVA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TIPO_LESAO_RECIDIVA'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 387
    Top = 444
    object sdsRecTipoLesaoID_TIPO_LESAO_RECIDIVA: TIntegerField
      FieldName = 'ID_TIPO_LESAO_RECIDIVA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsRecTipoLesaoREC_COD_PESS: TIntegerField
      FieldName = 'REC_COD_PESS'
      Required = True
    end
    object sdsRecTipoLesaoREC_FORMA_CLIN: TStringField
      FieldName = 'REC_FORMA_CLIN'
      Size = 30
    end
    object sdsRecTipoLesaoREC_TIPO_LESAO: TStringField
      FieldName = 'REC_TIPO_LESAO'
      Size = 30
    end
    object sdsRecTipoLesaoREC_CLASS_OPERA: TStringField
      FieldName = 'REC_CLASS_OPERA'
      Size = 60
    end
    object sdsRecTipoLesaoREC_LOCAL_LESAO: TStringField
      FieldName = 'REC_LOCAL_LESAO'
      Size = 60
    end
  end
  object dpsRecTipoLesao: TDataSetProvider
    DataSet = sdsRecTipoLesao
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 491
    Top = 444
  end
  object cdsRecTipoLesao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsRecTipoLesao'
    Left = 595
    Top = 448
    object cdsRecTipoLesaoID_TIPO_LESAO_RECIDIVA: TIntegerField
      FieldName = 'ID_TIPO_LESAO_RECIDIVA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsRecTipoLesaoREC_COD_PESS: TIntegerField
      FieldName = 'REC_COD_PESS'
      Required = True
    end
    object cdsRecTipoLesaoREC_FORMA_CLIN: TStringField
      FieldName = 'REC_FORMA_CLIN'
      Size = 30
    end
    object cdsRecTipoLesaoREC_TIPO_LESAO: TStringField
      FieldName = 'REC_TIPO_LESAO'
      Size = 30
    end
    object cdsRecTipoLesaoREC_CLASS_OPERA: TStringField
      FieldName = 'REC_CLASS_OPERA'
      Size = 60
    end
    object cdsRecTipoLesaoREC_LOCAL_LESAO: TStringField
      FieldName = 'REC_LOCAL_LESAO'
      Size = 60
    end
  end
  object sdsLocRecTipoLesao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'Select ID_TIPO_LESAO_RECIDIVA, REC_CLASS_OPERA, '#13#10'REC_COD_PESS, ' +
      'REC_FORMA_CLIN, REC_LOCAL_LESAO, REC_TIPO_LESAO'#13#10#13#10'from RECIDIVA' +
      '_TIPO_LESAO'#13#10'WHERE REC_COD_PESS=:REC_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REC_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 384
    Top = 501
  end
  object dpsLocRecTipoLesao: TDataSetProvider
    DataSet = sdsLocRecTipoLesao
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 488
    Top = 501
  end
  object cdsLocRecTipoLesao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocRecTipoLesao'
    Left = 588
    Top = 500
    object cdsLocRecTipoLesaoID_TIPO_LESAO_RECIDIVA: TIntegerField
      FieldName = 'ID_TIPO_LESAO_RECIDIVA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocRecTipoLesaoREC_CLASS_OPERA: TStringField
      FieldName = 'REC_CLASS_OPERA'
      Size = 60
    end
    object cdsLocRecTipoLesaoREC_COD_PESS: TIntegerField
      FieldName = 'REC_COD_PESS'
      Required = True
    end
    object cdsLocRecTipoLesaoREC_FORMA_CLIN: TStringField
      FieldName = 'REC_FORMA_CLIN'
      Size = 30
    end
    object cdsLocRecTipoLesaoREC_LOCAL_LESAO: TStringField
      FieldName = 'REC_LOCAL_LESAO'
      Size = 60
    end
    object cdsLocRecTipoLesaoREC_TIPO_LESAO: TStringField
      FieldName = 'REC_TIPO_LESAO'
      Size = 30
    end
  end
  object sdsRecTroncAfe: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID_NUME_TRON_AFETA, REC_COD_PESS, REC_TIPO_TRONCO_DESC, R' +
      'EC_TIPO_TRONCO_OPC'#13#10#13#10'FROM RECIDIVA_NUM_TRON_AFET'#13#10'WHERE ID_NUME' +
      '_TRON_AFETA=:ID_NUME_TRON_AFETA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NUME_TRON_AFETA'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 719
    Top = 7
    object sdsRecTroncAfeID_NUME_TRON_AFETA: TIntegerField
      FieldName = 'ID_NUME_TRON_AFETA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsRecTroncAfeREC_COD_PESS: TIntegerField
      FieldName = 'REC_COD_PESS'
      Required = True
    end
    object sdsRecTroncAfeREC_TIPO_TRONCO_DESC: TStringField
      FieldName = 'REC_TIPO_TRONCO_DESC'
      Size = 60
    end
    object sdsRecTroncAfeREC_TIPO_TRONCO_OPC: TStringField
      FieldName = 'REC_TIPO_TRONCO_OPC'
      Size = 30
    end
  end
  object dpsRecTroncAfe: TDataSetProvider
    DataSet = sdsRecTroncAfe
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 815
    Top = 10
  end
  object cdsRecTroncAfe: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsRecTroncAfe'
    Left = 927
    Top = 11
    object cdsRecTroncAfeID_NUME_TRON_AFETA: TIntegerField
      FieldName = 'ID_NUME_TRON_AFETA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsRecTroncAfeREC_COD_PESS: TIntegerField
      FieldName = 'REC_COD_PESS'
      Required = True
    end
    object cdsRecTroncAfeREC_TIPO_TRONCO_OPC: TStringField
      FieldName = 'REC_TIPO_TRONCO_OPC'
      Size = 30
    end
    object cdsRecTroncAfeREC_TIPO_TRONCO_DESC: TStringField
      FieldName = 'REC_TIPO_TRONCO_DESC'
      Size = 60
    end
  end
  object sdsLocRecTronAfe: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID_NUME_TRON_AFETA, REC_COD_PESS, REC_TIPO_TRONCO_DESC, R' +
      'EC_TIPO_TRONCO_OPC'#13#10'from RECIDIVA_NUM_TRON_AFET'#13#10'wHERE REC_COD_P' +
      'ESS=:REC_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REC_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 716
    Top = 69
  end
  object dpsLocRecTronAfe: TDataSetProvider
    DataSet = sdsLocRecTronAfe
    Left = 820
    Top = 69
  end
  object cdsLocRecTronAfe: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocRecTronAfe'
    Left = 924
    Top = 65
    object cdsLocRecTronAfeID_NUME_TRON_AFETA: TIntegerField
      FieldName = 'ID_NUME_TRON_AFETA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocRecTronAfeREC_COD_PESS: TIntegerField
      FieldName = 'REC_COD_PESS'
      Required = True
    end
    object cdsLocRecTronAfeREC_TIPO_TRONCO_DESC: TStringField
      FieldName = 'REC_TIPO_TRONCO_DESC'
      Size = 60
    end
    object cdsLocRecTronAfeREC_TIPO_TRONCO_OPC: TStringField
      FieldName = 'REC_TIPO_TRONCO_OPC'
      Size = 30
    end
  end
  object sdsCadComunicante: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select ID_COMUNICANTE, COMU_CASO_NOVO_NUM, COMU_CASO_NOVO_OPC, C' +
      'OMU_CEL, COMU_CICA_BCG_DIAM, COMU_CICA_BCG_NUM, COMU_CLASS_OPERA' +
      ', COMU_COD_PESS, COMU_CONT, COMU_DIAGN_MOLE, COMU_END,'#13#10' COMU_FO' +
      'RMA_CLIN, COMU_GEN, COMU_GEORREF, COMU_GRAU_PAREN, COMU_IDADE, C' +
      'OMU_LATITUDE, COMU_LONGITUDE, COMU_NASC, COMU_NOME, COMU_OBS, CO' +
      'MU_NUM_LES, COMU_PERI_CONV,'#13#10' COMU_PRES_LES, COMU_REF, COMU_SORO' +
      '_CUT_OFF, COMU_SORO_DATA, COMU_SORO_DO, COMU_SORO_ELISA, COMU_SO' +
      'RO_LOCAL, COMU_SORO_TECN_RESP, COMU_TEL, COMU_TIPO_CONV,COMU_NUM' +
      'PRONT,COMU_DATACAD'#13#10'FROM COMUNICANTE'#13#10'WHERE COMU_COD_PESS=:COMU_' +
      'COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COMU_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 721
    Top = 157
    object sdsCadComunicanteID_COMUNICANTE: TIntegerField
      FieldName = 'ID_COMUNICANTE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsCadComunicanteCOMU_CASO_NOVO_NUM: TStringField
      FieldName = 'COMU_CASO_NOVO_NUM'
      Size = 60
    end
    object sdsCadComunicanteCOMU_CASO_NOVO_OPC: TStringField
      FieldName = 'COMU_CASO_NOVO_OPC'
      Size = 60
    end
    object sdsCadComunicanteCOMU_CEL: TStringField
      FieldName = 'COMU_CEL'
      Size = 30
    end
    object sdsCadComunicanteCOMU_CICA_BCG_DIAM: TStringField
      FieldName = 'COMU_CICA_BCG_DIAM'
      Size = 30
    end
    object sdsCadComunicanteCOMU_CICA_BCG_NUM: TStringField
      FieldName = 'COMU_CICA_BCG_NUM'
      Size = 60
    end
    object sdsCadComunicanteCOMU_CLASS_OPERA: TStringField
      FieldName = 'COMU_CLASS_OPERA'
      Size = 60
    end
    object sdsCadComunicanteCOMU_COD_PESS: TIntegerField
      FieldName = 'COMU_COD_PESS'
      Required = True
    end
    object sdsCadComunicanteCOMU_CONT: TStringField
      FieldName = 'COMU_CONT'
      Size = 30
    end
    object sdsCadComunicanteCOMU_DIAGN_MOLE: TStringField
      FieldName = 'COMU_DIAGN_MOLE'
      Size = 30
    end
    object sdsCadComunicanteCOMU_END: TStringField
      FieldName = 'COMU_END'
      Size = 60
    end
    object sdsCadComunicanteCOMU_FORMA_CLIN: TStringField
      FieldName = 'COMU_FORMA_CLIN'
      Size = 30
    end
    object sdsCadComunicanteCOMU_GEN: TStringField
      FieldName = 'COMU_GEN'
      Size = 60
    end
    object sdsCadComunicanteCOMU_GEORREF: TStringField
      FieldName = 'COMU_GEORREF'
      Size = 60
    end
    object sdsCadComunicanteCOMU_GRAU_PAREN: TStringField
      FieldName = 'COMU_GRAU_PAREN'
      Size = 30
    end
    object sdsCadComunicanteCOMU_IDADE: TSmallintField
      FieldName = 'COMU_IDADE'
    end
    object sdsCadComunicanteCOMU_LATITUDE: TStringField
      FieldName = 'COMU_LATITUDE'
      Size = 30
    end
    object sdsCadComunicanteCOMU_LONGITUDE: TStringField
      FieldName = 'COMU_LONGITUDE'
      Size = 30
    end
    object sdsCadComunicanteCOMU_NOME: TStringField
      FieldName = 'COMU_NOME'
      Size = 60
    end
    object sdsCadComunicanteCOMU_OBS: TStringField
      FieldName = 'COMU_OBS'
      Size = 60
    end
    object sdsCadComunicanteCOMU_NUM_LES: TSmallintField
      FieldName = 'COMU_NUM_LES'
    end
    object sdsCadComunicanteCOMU_PERI_CONV: TStringField
      FieldName = 'COMU_PERI_CONV'
      Size = 30
    end
    object sdsCadComunicanteCOMU_PRES_LES: TStringField
      FieldName = 'COMU_PRES_LES'
      Size = 60
    end
    object sdsCadComunicanteCOMU_REF: TStringField
      FieldName = 'COMU_REF'
      Size = 60
    end
    object sdsCadComunicanteCOMU_SORO_CUT_OFF: TStringField
      FieldName = 'COMU_SORO_CUT_OFF'
      Size = 60
    end
    object sdsCadComunicanteCOMU_SORO_DO: TStringField
      FieldName = 'COMU_SORO_DO'
      Size = 60
    end
    object sdsCadComunicanteCOMU_SORO_ELISA: TStringField
      FieldName = 'COMU_SORO_ELISA'
      Size = 60
    end
    object sdsCadComunicanteCOMU_SORO_LOCAL: TStringField
      FieldName = 'COMU_SORO_LOCAL'
      Size = 60
    end
    object sdsCadComunicanteCOMU_SORO_TECN_RESP: TStringField
      FieldName = 'COMU_SORO_TECN_RESP'
      Size = 60
    end
    object sdsCadComunicanteCOMU_TEL: TStringField
      FieldName = 'COMU_TEL'
      Size = 30
    end
    object sdsCadComunicanteCOMU_TIPO_CONV: TStringField
      FieldName = 'COMU_TIPO_CONV'
      Size = 30
    end
    object sdsCadComunicanteCOMU_NASC: TStringField
      FieldName = 'COMU_NASC'
      Size = 10
    end
    object sdsCadComunicanteCOMU_SORO_DATA: TStringField
      FieldName = 'COMU_SORO_DATA'
      Size = 10
    end
    object sdsCadComunicanteCOMU_NUMPRONT: TStringField
      FieldName = 'COMU_NUMPRONT'
      Size = 30
    end
    object sdsCadComunicanteCOMU_DATACAD: TStringField
      FieldName = 'COMU_DATACAD'
      Size = 30
    end
  end
  object dpsCadComunicante: TDataSetProvider
    DataSet = sdsCadComunicante
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 833
    Top = 157
  end
  object cdsCadComunicante: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadComunicante'
    Left = 937
    Top = 161
    object cdsCadComunicanteID_COMUNICANTE: TIntegerField
      FieldName = 'ID_COMUNICANTE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsCadComunicanteCOMU_CASO_NOVO_OPC: TStringField
      FieldName = 'COMU_CASO_NOVO_OPC'
      Size = 60
    end
    object cdsCadComunicanteCOMU_CEL: TStringField
      FieldName = 'COMU_CEL'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 30
    end
    object cdsCadComunicanteCOMU_CICA_BCG_DIAM: TStringField
      FieldName = 'COMU_CICA_BCG_DIAM'
      Size = 30
    end
    object cdsCadComunicanteCOMU_CICA_BCG_NUM: TStringField
      FieldName = 'COMU_CICA_BCG_NUM'
      Size = 60
    end
    object cdsCadComunicanteCOMU_CLASS_OPERA: TStringField
      FieldName = 'COMU_CLASS_OPERA'
      Size = 60
    end
    object cdsCadComunicanteCOMU_COD_PESS: TIntegerField
      FieldName = 'COMU_COD_PESS'
      Required = True
    end
    object cdsCadComunicanteCOMU_CONT: TStringField
      FieldName = 'COMU_CONT'
      Size = 30
    end
    object cdsCadComunicanteCOMU_DIAGN_MOLE: TStringField
      FieldName = 'COMU_DIAGN_MOLE'
      Size = 30
    end
    object cdsCadComunicanteCOMU_END: TStringField
      FieldName = 'COMU_END'
      Size = 60
    end
    object cdsCadComunicanteCOMU_FORMA_CLIN: TStringField
      FieldName = 'COMU_FORMA_CLIN'
      Size = 30
    end
    object cdsCadComunicanteCOMU_CASO_NOVO_NUM: TStringField
      FieldName = 'COMU_CASO_NOVO_NUM'
      Size = 60
    end
    object cdsCadComunicanteCOMU_GEN: TStringField
      FieldName = 'COMU_GEN'
      Size = 60
    end
    object cdsCadComunicanteCOMU_GEORREF: TStringField
      FieldName = 'COMU_GEORREF'
      Size = 60
    end
    object cdsCadComunicanteCOMU_GRAU_PAREN: TStringField
      FieldName = 'COMU_GRAU_PAREN'
      Size = 30
    end
    object cdsCadComunicanteCOMU_IDADE: TSmallintField
      FieldName = 'COMU_IDADE'
    end
    object cdsCadComunicanteCOMU_LATITUDE: TStringField
      FieldName = 'COMU_LATITUDE'
      Size = 30
    end
    object cdsCadComunicanteCOMU_LONGITUDE: TStringField
      FieldName = 'COMU_LONGITUDE'
      Size = 30
    end
    object cdsCadComunicanteCOMU_NOME: TStringField
      FieldName = 'COMU_NOME'
      Size = 60
    end
    object cdsCadComunicanteCOMU_OBS: TStringField
      FieldName = 'COMU_OBS'
      Size = 60
    end
    object cdsCadComunicanteCOMU_NUM_LES: TSmallintField
      FieldName = 'COMU_NUM_LES'
    end
    object cdsCadComunicanteCOMU_PERI_CONV: TStringField
      FieldName = 'COMU_PERI_CONV'
      Size = 30
    end
    object cdsCadComunicanteCOMU_PRES_LES: TStringField
      FieldName = 'COMU_PRES_LES'
      Size = 60
    end
    object cdsCadComunicanteCOMU_REF: TStringField
      FieldName = 'COMU_REF'
      Size = 60
    end
    object cdsCadComunicanteCOMU_SORO_CUT_OFF: TStringField
      FieldName = 'COMU_SORO_CUT_OFF'
      Size = 60
    end
    object cdsCadComunicanteCOMU_SORO_DO: TStringField
      FieldName = 'COMU_SORO_DO'
      Size = 60
    end
    object cdsCadComunicanteCOMU_SORO_ELISA: TStringField
      FieldName = 'COMU_SORO_ELISA'
      Size = 60
    end
    object cdsCadComunicanteCOMU_SORO_LOCAL: TStringField
      FieldName = 'COMU_SORO_LOCAL'
      Size = 60
    end
    object cdsCadComunicanteCOMU_SORO_TECN_RESP: TStringField
      FieldName = 'COMU_SORO_TECN_RESP'
      Size = 60
    end
    object cdsCadComunicanteCOMU_TEL: TStringField
      FieldName = 'COMU_TEL'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 30
    end
    object cdsCadComunicanteCOMU_TIPO_CONV: TStringField
      FieldName = 'COMU_TIPO_CONV'
      Size = 30
    end
    object cdsCadComunicanteCOMU_NASC: TStringField
      FieldName = 'COMU_NASC'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object cdsCadComunicanteCOMU_SORO_DATA: TStringField
      FieldName = 'COMU_SORO_DATA'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
    object cdsCadComunicanteCOMU_NUMPRONT: TStringField
      FieldName = 'COMU_NUMPRONT'
      Size = 30
    end
    object cdsCadComunicanteCOMU_DATACAD: TStringField
      FieldName = 'COMU_DATACAD'
      Size = 30
    end
  end
  object sdsCadComTipoLesao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ID_COM_TIPO_LESAO, COMUNICANTE_ID_COMUNICANTE, COM_TIPO_L' +
      'ESAO_FORMA_CLIN, COM_TIPO_LESAO_CLASS_OPERA, COM_TIPO_LESAO, COM' +
      '_LOCAL_LESAO'#13#10#13#10'FROM COMUNICANTE_TIPO_LESAO'#13#10#13#10'WHERE ID_COM_TIPO' +
      '_LESAO=:ID_COM_TIPO_LESAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COM_TIPO_LESAO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 721
    Top = 293
    object sdsCadComTipoLesaoID_COM_TIPO_LESAO: TIntegerField
      FieldName = 'ID_COM_TIPO_LESAO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsCadComTipoLesaoCOMUNICANTE_ID_COMUNICANTE: TIntegerField
      FieldName = 'COMUNICANTE_ID_COMUNICANTE'
      Required = True
    end
    object sdsCadComTipoLesaoCOM_TIPO_LESAO_FORMA_CLIN: TStringField
      FieldName = 'COM_TIPO_LESAO_FORMA_CLIN'
      Size = 30
    end
    object sdsCadComTipoLesaoCOM_TIPO_LESAO_CLASS_OPERA: TStringField
      FieldName = 'COM_TIPO_LESAO_CLASS_OPERA'
      Size = 30
    end
    object sdsCadComTipoLesaoCOM_TIPO_LESAO: TStringField
      FieldName = 'COM_TIPO_LESAO'
      Size = 30
    end
    object sdsCadComTipoLesaoCOM_LOCAL_LESAO: TStringField
      FieldName = 'COM_LOCAL_LESAO'
      Size = 60
    end
  end
  object dpsCadComTipoLesao: TDataSetProvider
    DataSet = sdsCadComTipoLesao
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 833
    Top = 293
  end
  object cdsCadComTipoLesao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadComTipoLesao'
    Left = 929
    Top = 297
    object cdsCadComTipoLesaoID_COM_TIPO_LESAO: TIntegerField
      FieldName = 'ID_COM_TIPO_LESAO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsCadComTipoLesaoCOMUNICANTE_ID_COMUNICANTE: TIntegerField
      FieldName = 'COMUNICANTE_ID_COMUNICANTE'
      Required = True
    end
    object cdsCadComTipoLesaoCOM_TIPO_LESAO_FORMA_CLIN: TStringField
      FieldName = 'COM_TIPO_LESAO_FORMA_CLIN'
      Size = 30
    end
    object cdsCadComTipoLesaoCOM_TIPO_LESAO_CLASS_OPERA: TStringField
      FieldName = 'COM_TIPO_LESAO_CLASS_OPERA'
      Size = 30
    end
    object cdsCadComTipoLesaoCOM_TIPO_LESAO: TStringField
      FieldName = 'COM_TIPO_LESAO'
      Size = 30
    end
    object cdsCadComTipoLesaoCOM_LOCAL_LESAO: TStringField
      FieldName = 'COM_LOCAL_LESAO'
      Size = 60
    end
  end
  object sdsCadNeuro: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT NEUR_ANOTACOES, NEUR_AVAL_FOR_DORSI_D, NEUR_AVAL_FOR_DORS' +
      'I_E, NEUR_AVAL_FOR_HALUZ_D, NEUR_AVAL_FOR_HALUZ_E, NEUR_AVAL_FOR' +
      '_MEDIANO_D, '#13#10'NEUR_AVAL_FOR_MEDIANO_E, NEUR_AVAL_FOR_RADIAL_D, N' +
      'EUR_AVAL_FOR_RADIAL_E, NEUR_AVAL_FOR_ULNAR_D, NEUR_AVAL_FOR_ULNA' +
      'R_E, NEUR_COD_PESS, NEUR_DATA,'#13#10'NEUR_GRAU_INCAP_ASS, NEUR_GRAU_I' +
      'NCAP_MAO_D, NEUR_GRAU_INCAP_MAO_E, NEUR_GRAU_INCAP_OLHO_D,'#13#10' NEU' +
      'R_GRAU_INCAP_OLHO_E, NEUR_GRAU_INCAP_PE_D, NEUR_GRAU_INCAP_PE_E,' +
      ' NEUR_MEM_SUP_QUEIXA,'#13#10'NEUR_NARIZ_FERI_D, NEUR_NARIZ_FERI_E, NEU' +
      'R_NARIZ_RESSEC_D, NEUR_NARIZ_RESSEC_E, NEUR_NARIZ_SEPTO_D,'#13#10'NEUR' +
      '_NARIZ_SEPTO_E, NEUR_NERV_FIBULAR_D, NEUR_NERV_FIBULAR_E, NEUR_N' +
      'ERV_TIBIAL_D, NEUR_NERV_TIBIAL_E, NEUR_OLHO_ACUCI_D, NEUR_OLHO_A' +
      'CUCI_E,'#13#10'NEUR_OLHO_C_FORCA_D, NEUR_OLHO_C_FORCA_E, NEUR_OLHO_CAT' +
      'A_D, NEUR_OLHO_CATA_E, NEUR_OLHO_DIMI_SENS_D, NEUR_OLHO_DIMI_SEN' +
      'S_E, NEUR_OLHO_ECTRO_D, '#13#10'NEUR_OLHO_ECTRO_E, NEUR_OLHO_OPACI_D, ' +
      'NEUR_OLHO_OPACI_E, NEUR_OLHO_S_FORCA_D, NEUR_OLHO_S_FORCA_E, NEU' +
      'R_OLHO_TRIQUI_D, '#13#10'NEUR_OLHO_TRIQUI_E, NEUR_PALP_MEDIANO_D, NEUR' +
      '_PALP_MEDIANO_E, NEUR_PALP_RADIAL_D, NEUR_PALP_RADIAL_E, NEUR_PA' +
      'LP_ULNAR_D, NEUR_PALP_ULNAR_E, NEUR_MD1_INSP, NEUR_MD2_INSP, NEU' +
      'R_MD3_INSP, NEUR_MD4_INSP,'#13#10'NEUR_MD5_INSP, NEUR_MD6_INSP, NEUR_M' +
      'E1_INSP, NEUR_ME2_INSP, NEUR_ME3_INSP, NEUR_ME4_INSP, NEUR_ME5_I' +
      'NSP, NEUR_ME6_INSP, NEUR_PD1_INSP, NEUR_PD2_INSP, NEUR_PD3_INSP,' +
      ' NEUR_PD4_INSP, '#13#10'NEUR_PD5_INSP, NEUR_PD6_INSP, NEUR_PD7_INSP, N' +
      'EUR_PD8_INSP, NEUR_PD9_INSP, NEUR_PE1_INSP, NEUR_PE2_INSP, NEUR_' +
      'PE3_INSP, NEUR_PE4_INSP, NEUR_PE5_INSP,'#13#10'NEUR_PE6_INSP, NEUR_PE7' +
      '_INSP, NEUR_PE8_INSP, NEUR_PE9_INSP, NEUR_NARIZ_QUEIXAPRIN, NEUR' +
      '_OLHO_QUEIXAPRIN, NEUR_PD_OBS, NEUR_PE_OBS, NEUR_MD_OBS, NEUR_ME' +
      '_OBS, NEUR_MD_FERIDA,'#13#10' NEUR_MD_GARRA_MOVEL, NEUR_MD_GARRA_RIGID' +
      'A, NEUR_MD_REABSORVICAO, NEUR_ME_FERIDA, NEUR_ME_GARRA_MOVEL, NE' +
      'UR_ME_GARRA_RIGIDA, NEUR_ME_REABSORVICAO, NEUR_PD_FERIDA, NEUR_P' +
      'D_GARRA_MOVEL, '#13#10'NEUR_PD_GARRA_RIGIDA, NEUR_PD_REABSORVICAO, NEU' +
      'R_PE_FERIDA, NEUR_PE_GARRA_MOVEL, NEUR_PE_GARRA_RIGIDA, NEUR_PE_' +
      'REABSORVICAO, NEUR_MD7_INSP, NEUR_ME7_INSP, NEUR_PD10_INSP, NEUR' +
      '_PE10_INSP,'#13#10' NEUR_MEM_INFER_QUEIXA, NEUR_GRAU_INCAP_MAIORGRAU'#13#10 +
      #13#10'FROM NEUROLOGICA'#13#10'WHERE NEUR_COD_PESS=:NEUR_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'NEUR_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 739
    Top = 418
    object sdsCadNeuroNEUR_ANOTACOES: TBlobField
      FieldName = 'NEUR_ANOTACOES'
      Size = 1
    end
    object sdsCadNeuroNEUR_AVAL_FOR_DORSI_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_DORSI_D'
      Size = 30
    end
    object sdsCadNeuroNEUR_AVAL_FOR_DORSI_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_DORSI_E'
      Size = 30
    end
    object sdsCadNeuroNEUR_AVAL_FOR_HALUZ_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_HALUZ_D'
      Size = 30
    end
    object sdsCadNeuroNEUR_AVAL_FOR_HALUZ_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_HALUZ_E'
      Size = 30
    end
    object sdsCadNeuroNEUR_AVAL_FOR_MEDIANO_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_MEDIANO_D'
      Size = 30
    end
    object sdsCadNeuroNEUR_AVAL_FOR_MEDIANO_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_MEDIANO_E'
      Size = 30
    end
    object sdsCadNeuroNEUR_AVAL_FOR_RADIAL_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_RADIAL_D'
      Size = 30
    end
    object sdsCadNeuroNEUR_AVAL_FOR_RADIAL_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_RADIAL_E'
      Size = 30
    end
    object sdsCadNeuroNEUR_COD_PESS: TIntegerField
      FieldName = 'NEUR_COD_PESS'
      Required = True
    end
    object sdsCadNeuroNEUR_GRAU_INCAP_ASS: TBlobField
      FieldName = 'NEUR_GRAU_INCAP_ASS'
      Size = 1
    end
    object sdsCadNeuroNEUR_GRAU_INCAP_MAO_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAO_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_GRAU_INCAP_MAO_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAO_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_GRAU_INCAP_OLHO_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_OLHO_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_GRAU_INCAP_OLHO_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_OLHO_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_GRAU_INCAP_PE_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_PE_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_GRAU_INCAP_PE_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_PE_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_MEM_SUP_QUEIXA: TStringField
      FieldName = 'NEUR_MEM_SUP_QUEIXA'
      Size = 60
    end
    object sdsCadNeuroNEUR_NARIZ_FERI_D: TStringField
      FieldName = 'NEUR_NARIZ_FERI_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_NARIZ_FERI_E: TStringField
      FieldName = 'NEUR_NARIZ_FERI_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_NARIZ_RESSEC_D: TStringField
      FieldName = 'NEUR_NARIZ_RESSEC_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_NARIZ_RESSEC_E: TStringField
      FieldName = 'NEUR_NARIZ_RESSEC_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_NARIZ_SEPTO_D: TStringField
      FieldName = 'NEUR_NARIZ_SEPTO_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_NARIZ_SEPTO_E: TStringField
      FieldName = 'NEUR_NARIZ_SEPTO_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_NERV_FIBULAR_D: TStringField
      FieldName = 'NEUR_NERV_FIBULAR_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_NERV_FIBULAR_E: TStringField
      FieldName = 'NEUR_NERV_FIBULAR_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_NERV_TIBIAL_D: TStringField
      FieldName = 'NEUR_NERV_TIBIAL_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_NERV_TIBIAL_E: TStringField
      FieldName = 'NEUR_NERV_TIBIAL_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_ACUCI_D: TStringField
      FieldName = 'NEUR_OLHO_ACUCI_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_ACUCI_E: TStringField
      FieldName = 'NEUR_OLHO_ACUCI_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_C_FORCA_D: TFMTBCDField
      FieldName = 'NEUR_OLHO_C_FORCA_D'
      Precision = 18
      Size = 2
    end
    object sdsCadNeuroNEUR_OLHO_C_FORCA_E: TFMTBCDField
      FieldName = 'NEUR_OLHO_C_FORCA_E'
      Precision = 18
      Size = 2
    end
    object sdsCadNeuroNEUR_OLHO_CATA_D: TStringField
      FieldName = 'NEUR_OLHO_CATA_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_CATA_E: TStringField
      FieldName = 'NEUR_OLHO_CATA_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_DIMI_SENS_D: TStringField
      FieldName = 'NEUR_OLHO_DIMI_SENS_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_DIMI_SENS_E: TStringField
      FieldName = 'NEUR_OLHO_DIMI_SENS_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_ECTRO_D: TStringField
      FieldName = 'NEUR_OLHO_ECTRO_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_ECTRO_E: TStringField
      FieldName = 'NEUR_OLHO_ECTRO_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_OPACI_E: TStringField
      FieldName = 'NEUR_OLHO_OPACI_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_S_FORCA_D: TFMTBCDField
      FieldName = 'NEUR_OLHO_S_FORCA_D'
      Precision = 18
      Size = 2
    end
    object sdsCadNeuroNEUR_OLHO_S_FORCA_E: TFMTBCDField
      FieldName = 'NEUR_OLHO_S_FORCA_E'
      Precision = 18
      Size = 2
    end
    object sdsCadNeuroNEUR_OLHO_TRIQUI_D: TStringField
      FieldName = 'NEUR_OLHO_TRIQUI_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_TRIQUI_E: TStringField
      FieldName = 'NEUR_OLHO_TRIQUI_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_PALP_MEDIANO_D: TStringField
      FieldName = 'NEUR_PALP_MEDIANO_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_PALP_RADIAL_D: TStringField
      FieldName = 'NEUR_PALP_RADIAL_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_PALP_RADIAL_E: TStringField
      FieldName = 'NEUR_PALP_RADIAL_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_PALP_ULNAR_D: TStringField
      FieldName = 'NEUR_PALP_ULNAR_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_PALP_ULNAR_E: TStringField
      FieldName = 'NEUR_PALP_ULNAR_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_MD1_INSP: TStringField
      FieldName = 'NEUR_MD1_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD2_INSP: TStringField
      FieldName = 'NEUR_MD2_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD3_INSP: TStringField
      FieldName = 'NEUR_MD3_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD4_INSP: TStringField
      FieldName = 'NEUR_MD4_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD5_INSP: TStringField
      FieldName = 'NEUR_MD5_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD6_INSP: TStringField
      FieldName = 'NEUR_MD6_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME1_INSP: TStringField
      FieldName = 'NEUR_ME1_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME2_INSP: TStringField
      FieldName = 'NEUR_ME2_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME3_INSP: TStringField
      FieldName = 'NEUR_ME3_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME4_INSP: TStringField
      FieldName = 'NEUR_ME4_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME5_INSP: TStringField
      FieldName = 'NEUR_ME5_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME6_INSP: TStringField
      FieldName = 'NEUR_ME6_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD1_INSP: TStringField
      FieldName = 'NEUR_PD1_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD2_INSP: TStringField
      FieldName = 'NEUR_PD2_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD3_INSP: TStringField
      FieldName = 'NEUR_PD3_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD4_INSP: TStringField
      FieldName = 'NEUR_PD4_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD5_INSP: TStringField
      FieldName = 'NEUR_PD5_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD6_INSP: TStringField
      FieldName = 'NEUR_PD6_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD7_INSP: TStringField
      FieldName = 'NEUR_PD7_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD8_INSP: TStringField
      FieldName = 'NEUR_PD8_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD9_INSP: TStringField
      FieldName = 'NEUR_PD9_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE1_INSP: TStringField
      FieldName = 'NEUR_PE1_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE2_INSP: TStringField
      FieldName = 'NEUR_PE2_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE3_INSP: TStringField
      FieldName = 'NEUR_PE3_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE4_INSP: TStringField
      FieldName = 'NEUR_PE4_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE5_INSP: TStringField
      FieldName = 'NEUR_PE5_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE6_INSP: TStringField
      FieldName = 'NEUR_PE6_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE7_INSP: TStringField
      FieldName = 'NEUR_PE7_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE8_INSP: TStringField
      FieldName = 'NEUR_PE8_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE9_INSP: TStringField
      FieldName = 'NEUR_PE9_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_NARIZ_QUEIXAPRIN: TStringField
      FieldName = 'NEUR_NARIZ_QUEIXAPRIN'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_QUEIXAPRIN: TStringField
      FieldName = 'NEUR_OLHO_QUEIXAPRIN'
      Size = 60
    end
    object sdsCadNeuroNEUR_PD_OBS: TStringField
      FieldName = 'NEUR_PD_OBS'
      Size = 60
    end
    object sdsCadNeuroNEUR_PE_OBS: TStringField
      FieldName = 'NEUR_PE_OBS'
      Size = 60
    end
    object sdsCadNeuroNEUR_MD_OBS: TStringField
      FieldName = 'NEUR_MD_OBS'
      Size = 60
    end
    object sdsCadNeuroNEUR_ME_OBS: TStringField
      FieldName = 'NEUR_ME_OBS'
      Size = 60
    end
    object sdsCadNeuroNEUR_OLHO_OPACI_D: TStringField
      FieldName = 'NEUR_OLHO_OPACI_D'
      Size = 60
    end
    object sdsCadNeuroNEUR_PALP_MEDIANO_E: TStringField
      FieldName = 'NEUR_PALP_MEDIANO_E'
      Size = 60
    end
    object sdsCadNeuroNEUR_AVAL_FOR_ULNAR_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_ULNAR_D'
      Size = 30
    end
    object sdsCadNeuroNEUR_AVAL_FOR_ULNAR_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_ULNAR_E'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD_FERIDA: TStringField
      FieldName = 'NEUR_MD_FERIDA'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_MD_GARRA_MOVEL'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_MD_GARRA_RIGIDA'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD_REABSORVICAO: TStringField
      FieldName = 'NEUR_MD_REABSORVICAO'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME_FERIDA: TStringField
      FieldName = 'NEUR_ME_FERIDA'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_ME_GARRA_MOVEL'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_ME_GARRA_RIGIDA'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME_REABSORVICAO: TStringField
      FieldName = 'NEUR_ME_REABSORVICAO'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD_FERIDA: TStringField
      FieldName = 'NEUR_PD_FERIDA'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_PD_GARRA_MOVEL'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_PD_GARRA_RIGIDA'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD_REABSORVICAO: TStringField
      FieldName = 'NEUR_PD_REABSORVICAO'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE_FERIDA: TStringField
      FieldName = 'NEUR_PE_FERIDA'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_PE_GARRA_MOVEL'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_PE_GARRA_RIGIDA'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE_REABSORVICAO: TStringField
      FieldName = 'NEUR_PE_REABSORVICAO'
      Size = 30
    end
    object sdsCadNeuroNEUR_MD7_INSP: TStringField
      FieldName = 'NEUR_MD7_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_ME7_INSP: TStringField
      FieldName = 'NEUR_ME7_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PD10_INSP: TStringField
      FieldName = 'NEUR_PD10_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_PE10_INSP: TStringField
      FieldName = 'NEUR_PE10_INSP'
      Size = 30
    end
    object sdsCadNeuroNEUR_MEM_INFER_QUEIXA: TStringField
      FieldName = 'NEUR_MEM_INFER_QUEIXA'
      Size = 30
    end
    object sdsCadNeuroNEUR_GRAU_INCAP_MAIORGRAU: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAIORGRAU'
      Size = 60
    end
    object sdsCadNeuroNEUR_DATA: TStringField
      FieldName = 'NEUR_DATA'
      Size = 10
    end
  end
  object dpsCadNeuro: TDataSetProvider
    DataSet = sdsCadNeuro
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 811
    Top = 418
  end
  object cdsCadNeuro: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadNeuro'
    Left = 879
    Top = 418
    object cdsCadNeuroNEUR_ANOTACOES: TBlobField
      FieldName = 'NEUR_ANOTACOES'
      Size = 1
    end
    object cdsCadNeuroNEUR_AVAL_FOR_DORSI_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_DORSI_D'
      Size = 30
    end
    object cdsCadNeuroNEUR_AVAL_FOR_DORSI_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_DORSI_E'
      Size = 30
    end
    object cdsCadNeuroNEUR_AVAL_FOR_HALUZ_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_HALUZ_D'
      Size = 30
    end
    object cdsCadNeuroNEUR_AVAL_FOR_HALUZ_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_HALUZ_E'
      Size = 30
    end
    object cdsCadNeuroNEUR_AVAL_FOR_MEDIANO_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_MEDIANO_D'
      Size = 30
    end
    object cdsCadNeuroNEUR_AVAL_FOR_MEDIANO_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_MEDIANO_E'
      Size = 30
    end
    object cdsCadNeuroNEUR_AVAL_FOR_RADIAL_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_RADIAL_D'
      Size = 30
    end
    object cdsCadNeuroNEUR_AVAL_FOR_RADIAL_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_RADIAL_E'
      Size = 30
    end
    object cdsCadNeuroNEUR_COD_PESS: TIntegerField
      FieldName = 'NEUR_COD_PESS'
      Required = True
    end
    object cdsCadNeuroNEUR_GRAU_INCAP_ASS: TBlobField
      FieldName = 'NEUR_GRAU_INCAP_ASS'
      Size = 1
    end
    object cdsCadNeuroNEUR_GRAU_INCAP_MAO_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAO_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_GRAU_INCAP_OLHO_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_OLHO_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_GRAU_INCAP_OLHO_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_OLHO_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_GRAU_INCAP_PE_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_PE_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_GRAU_INCAP_PE_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_PE_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_MEM_SUP_QUEIXA: TStringField
      FieldName = 'NEUR_MEM_SUP_QUEIXA'
      Size = 60
    end
    object cdsCadNeuroNEUR_NARIZ_FERI_D: TStringField
      FieldName = 'NEUR_NARIZ_FERI_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_NARIZ_FERI_E: TStringField
      FieldName = 'NEUR_NARIZ_FERI_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_NARIZ_RESSEC_D: TStringField
      FieldName = 'NEUR_NARIZ_RESSEC_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_NARIZ_RESSEC_E: TStringField
      FieldName = 'NEUR_NARIZ_RESSEC_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_NARIZ_SEPTO_D: TStringField
      FieldName = 'NEUR_NARIZ_SEPTO_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_NARIZ_SEPTO_E: TStringField
      FieldName = 'NEUR_NARIZ_SEPTO_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_NERV_FIBULAR_D: TStringField
      FieldName = 'NEUR_NERV_FIBULAR_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_NERV_FIBULAR_E: TStringField
      FieldName = 'NEUR_NERV_FIBULAR_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_NERV_TIBIAL_D: TStringField
      FieldName = 'NEUR_NERV_TIBIAL_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_NERV_TIBIAL_E: TStringField
      FieldName = 'NEUR_NERV_TIBIAL_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_ACUCI_D: TStringField
      FieldName = 'NEUR_OLHO_ACUCI_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_ACUCI_E: TStringField
      FieldName = 'NEUR_OLHO_ACUCI_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_C_FORCA_D: TFMTBCDField
      FieldName = 'NEUR_OLHO_C_FORCA_D'
      Precision = 18
      Size = 2
    end
    object cdsCadNeuroNEUR_OLHO_C_FORCA_E: TFMTBCDField
      FieldName = 'NEUR_OLHO_C_FORCA_E'
      Precision = 18
      Size = 2
    end
    object cdsCadNeuroNEUR_OLHO_CATA_D: TStringField
      FieldName = 'NEUR_OLHO_CATA_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_CATA_E: TStringField
      FieldName = 'NEUR_OLHO_CATA_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_DIMI_SENS_D: TStringField
      FieldName = 'NEUR_OLHO_DIMI_SENS_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_DIMI_SENS_E: TStringField
      FieldName = 'NEUR_OLHO_DIMI_SENS_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_ECTRO_D: TStringField
      FieldName = 'NEUR_OLHO_ECTRO_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_ECTRO_E: TStringField
      FieldName = 'NEUR_OLHO_ECTRO_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_OPACI_E: TStringField
      FieldName = 'NEUR_OLHO_OPACI_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_S_FORCA_D: TFMTBCDField
      FieldName = 'NEUR_OLHO_S_FORCA_D'
      Precision = 18
      Size = 2
    end
    object cdsCadNeuroNEUR_OLHO_S_FORCA_E: TFMTBCDField
      FieldName = 'NEUR_OLHO_S_FORCA_E'
      Precision = 18
      Size = 2
    end
    object cdsCadNeuroNEUR_OLHO_TRIQUI_D: TStringField
      FieldName = 'NEUR_OLHO_TRIQUI_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_TRIQUI_E: TStringField
      FieldName = 'NEUR_OLHO_TRIQUI_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_PALP_MEDIANO_D: TStringField
      FieldName = 'NEUR_PALP_MEDIANO_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_PALP_RADIAL_D: TStringField
      FieldName = 'NEUR_PALP_RADIAL_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_PALP_RADIAL_E: TStringField
      FieldName = 'NEUR_PALP_RADIAL_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_PALP_ULNAR_D: TStringField
      FieldName = 'NEUR_PALP_ULNAR_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_PALP_ULNAR_E: TStringField
      FieldName = 'NEUR_PALP_ULNAR_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_GRAU_INCAP_MAO_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAO_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_MD1_INSP: TStringField
      FieldName = 'NEUR_MD1_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD2_INSP: TStringField
      FieldName = 'NEUR_MD2_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD3_INSP: TStringField
      FieldName = 'NEUR_MD3_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD4_INSP: TStringField
      FieldName = 'NEUR_MD4_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD5_INSP: TStringField
      FieldName = 'NEUR_MD5_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD6_INSP: TStringField
      FieldName = 'NEUR_MD6_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME1_INSP: TStringField
      FieldName = 'NEUR_ME1_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME2_INSP: TStringField
      FieldName = 'NEUR_ME2_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME3_INSP: TStringField
      FieldName = 'NEUR_ME3_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME4_INSP: TStringField
      FieldName = 'NEUR_ME4_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME5_INSP: TStringField
      FieldName = 'NEUR_ME5_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME6_INSP: TStringField
      FieldName = 'NEUR_ME6_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD1_INSP: TStringField
      FieldName = 'NEUR_PD1_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD2_INSP: TStringField
      FieldName = 'NEUR_PD2_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD3_INSP: TStringField
      FieldName = 'NEUR_PD3_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD4_INSP: TStringField
      FieldName = 'NEUR_PD4_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD5_INSP: TStringField
      FieldName = 'NEUR_PD5_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD6_INSP: TStringField
      FieldName = 'NEUR_PD6_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD7_INSP: TStringField
      FieldName = 'NEUR_PD7_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD8_INSP: TStringField
      FieldName = 'NEUR_PD8_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD9_INSP: TStringField
      FieldName = 'NEUR_PD9_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE1_INSP: TStringField
      FieldName = 'NEUR_PE1_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE2_INSP: TStringField
      FieldName = 'NEUR_PE2_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE3_INSP: TStringField
      FieldName = 'NEUR_PE3_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE4_INSP: TStringField
      FieldName = 'NEUR_PE4_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE5_INSP: TStringField
      FieldName = 'NEUR_PE5_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE6_INSP: TStringField
      FieldName = 'NEUR_PE6_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE7_INSP: TStringField
      FieldName = 'NEUR_PE7_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE8_INSP: TStringField
      FieldName = 'NEUR_PE8_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE9_INSP: TStringField
      FieldName = 'NEUR_PE9_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_NARIZ_QUEIXAPRIN: TStringField
      FieldName = 'NEUR_NARIZ_QUEIXAPRIN'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_QUEIXAPRIN: TStringField
      FieldName = 'NEUR_OLHO_QUEIXAPRIN'
      Size = 60
    end
    object cdsCadNeuroNEUR_PD_OBS: TStringField
      FieldName = 'NEUR_PD_OBS'
      Size = 60
    end
    object cdsCadNeuroNEUR_PE_OBS: TStringField
      FieldName = 'NEUR_PE_OBS'
      Size = 60
    end
    object cdsCadNeuroNEUR_MD_OBS: TStringField
      FieldName = 'NEUR_MD_OBS'
      Size = 60
    end
    object cdsCadNeuroNEUR_ME_OBS: TStringField
      FieldName = 'NEUR_ME_OBS'
      Size = 60
    end
    object cdsCadNeuroNEUR_OLHO_OPACI_D: TStringField
      FieldName = 'NEUR_OLHO_OPACI_D'
      Size = 60
    end
    object cdsCadNeuroNEUR_PALP_MEDIANO_E: TStringField
      FieldName = 'NEUR_PALP_MEDIANO_E'
      Size = 60
    end
    object cdsCadNeuroNEUR_AVAL_FOR_ULNAR_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_ULNAR_D'
      Size = 30
    end
    object cdsCadNeuroNEUR_AVAL_FOR_ULNAR_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_ULNAR_E'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD_FERIDA: TStringField
      FieldName = 'NEUR_MD_FERIDA'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_MD_GARRA_MOVEL'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_MD_GARRA_RIGIDA'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD_REABSORVICAO: TStringField
      FieldName = 'NEUR_MD_REABSORVICAO'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME_FERIDA: TStringField
      FieldName = 'NEUR_ME_FERIDA'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_ME_GARRA_MOVEL'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_ME_GARRA_RIGIDA'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME_REABSORVICAO: TStringField
      FieldName = 'NEUR_ME_REABSORVICAO'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD_FERIDA: TStringField
      FieldName = 'NEUR_PD_FERIDA'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_PD_GARRA_MOVEL'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_PD_GARRA_RIGIDA'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD_REABSORVICAO: TStringField
      FieldName = 'NEUR_PD_REABSORVICAO'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE_FERIDA: TStringField
      FieldName = 'NEUR_PE_FERIDA'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_PE_GARRA_MOVEL'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_PE_GARRA_RIGIDA'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE_REABSORVICAO: TStringField
      FieldName = 'NEUR_PE_REABSORVICAO'
      Size = 30
    end
    object cdsCadNeuroNEUR_MD7_INSP: TStringField
      FieldName = 'NEUR_MD7_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_ME7_INSP: TStringField
      FieldName = 'NEUR_ME7_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PD10_INSP: TStringField
      FieldName = 'NEUR_PD10_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_PE10_INSP: TStringField
      FieldName = 'NEUR_PE10_INSP'
      Size = 30
    end
    object cdsCadNeuroNEUR_MEM_INFER_QUEIXA: TStringField
      FieldName = 'NEUR_MEM_INFER_QUEIXA'
      Size = 30
    end
    object cdsCadNeuroNEUR_GRAU_INCAP_MAIORGRAU: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAIORGRAU'
      Size = 60
    end
    object cdsCadNeuroNEUR_DATA: TStringField
      FieldName = 'NEUR_DATA'
      EditMask = '!99/99/0000;1;_'
      Size = 10
    end
  end
  object sdsLocFotoRec: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select FOTO, FOTO_DESC, ID_TIPO_LESAO, ID_RECIDIVA_FOTO'#13#10'from Re' +
      'cidiva_fotos'#13#10'where ID_TIPO_LESAO=:ID_TIPO_LESAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TIPO_LESAO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1058
    Top = 234
  end
  object dpsLocFotoRec: TDataSetProvider
    DataSet = sdsLocFotoRec
    Left = 1151
    Top = 234
  end
  object cdsLocFotoRec: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocFotoRec'
    Left = 1239
    Top = 238
    object cdsLocFotoRecFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object cdsLocFotoRecFOTO_DESC: TStringField
      FieldName = 'FOTO_DESC'
      Size = 60
    end
    object cdsLocFotoRecID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
    object cdsLocFotoRecID_RECIDIVA_FOTO: TIntegerField
      FieldName = 'ID_RECIDIVA_FOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object sdsFotoRecid: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select ID_RECIDIVA_FOTO, FOTO_DESC, FOTO, ID_TIPO_LESAO'#13#10'FROM RE' +
      'CIDIVA_FOTOS'#13#10'WHERE ID_RECIDIVA_FOTO=:ID_RECIDIVA_FOTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_RECIDIVA_FOTO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1063
    Top = 169
    object sdsFotoRecidID_RECIDIVA_FOTO: TIntegerField
      FieldName = 'ID_RECIDIVA_FOTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsFotoRecidFOTO_DESC: TStringField
      FieldName = 'FOTO_DESC'
      Size = 60
    end
    object sdsFotoRecidFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object sdsFotoRecidID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
  end
  object dpsFotoRecid: TDataSetProvider
    DataSet = sdsFotoRecid
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 1159
    Top = 169
  end
  object cdsFotoRecid: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsFotoRecid'
    Left = 1231
    Top = 173
    object cdsFotoRecidID_RECIDIVA_FOTO: TIntegerField
      FieldName = 'ID_RECIDIVA_FOTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsFotoRecidFOTO_DESC: TStringField
      FieldName = 'FOTO_DESC'
      Size = 60
    end
    object cdsFotoRecidFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object cdsFotoRecidID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
  end
  object sdsLocComTipoLesao: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'Select ID_COM_TIPO_LESAO, COMUNICANTE_ID_COMUNICANTE, COM_TIPO_L' +
      'ESAO,'#13#10' COM_TIPO_LESAO_CLASS_OPERA, COM_TIPO_LESAO_FORMA_CLIN'#13#10#13 +
      #10'from COMUNICANTE_TIPO_LESAO'#13#10'WHERE COMUNICANTE_ID_COMUNICANTE=:' +
      'COMUNICANTE_ID_COMUNICANTE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COMUNICANTE_ID_COMUNICANTE'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 721
    Top = 353
  end
  object dpsLocComTipoLesao: TDataSetProvider
    DataSet = sdsLocComTipoLesao
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 825
    Top = 351
  end
  object cdsLocComTipoLesao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocComTipoLesao'
    Left = 929
    Top = 355
    object cdsLocComTipoLesaoID_COM_TIPO_LESAO: TIntegerField
      FieldName = 'ID_COM_TIPO_LESAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocComTipoLesaoCOMUNICANTE_ID_COMUNICANTE: TIntegerField
      FieldName = 'COMUNICANTE_ID_COMUNICANTE'
      Required = True
    end
    object cdsLocComTipoLesaoCOM_TIPO_LESAO: TStringField
      FieldName = 'COM_TIPO_LESAO'
      Size = 30
    end
    object cdsLocComTipoLesaoCOM_TIPO_LESAO_CLASS_OPERA: TStringField
      FieldName = 'COM_TIPO_LESAO_CLASS_OPERA'
      Size = 30
    end
    object cdsLocComTipoLesaoCOM_TIPO_LESAO_FORMA_CLIN: TStringField
      FieldName = 'COM_TIPO_LESAO_FORMA_CLIN'
      Size = 30
    end
  end
  object sdsFotoCom: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select ID_TIPO_LESAO, ID_COM_FOTO, FOTO_DESC, FOTO'#13#10#13#10'FROM COMUN' +
      'ICANTE_FOTO'#13#10'WHERE ID_COM_FOTO=:ID_COM_FOTO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COM_FOTO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1063
    Top = 320
    object sdsFotoComID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
    object sdsFotoComID_COM_FOTO: TIntegerField
      FieldName = 'ID_COM_FOTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsFotoComFOTO_DESC: TStringField
      FieldName = 'FOTO_DESC'
      Size = 30
    end
    object sdsFotoComFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
  end
  object dpsFotoCom: TDataSetProvider
    DataSet = sdsFotoCom
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 1143
    Top = 320
  end
  object cdsFotoCom: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsFotoCom'
    Left = 1231
    Top = 324
    object cdsFotoComID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
    object cdsFotoComID_COM_FOTO: TIntegerField
      FieldName = 'ID_COM_FOTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsFotoComFOTO_DESC: TStringField
      FieldName = 'FOTO_DESC'
      Size = 30
    end
    object cdsFotoComFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
  end
  object sdsLocFotoCom: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select ID_TIPO_LESAO, ID_COM_FOTO, FOTO_DESC, FOTO'#13#10'From COMUNIC' +
      'ANTE_FOTO'#13#10'WHERE ID_TIPO_LESAO=:ID_TIPO_LESAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TIPO_LESAO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1063
    Top = 376
  end
  object dpsLocFotoCom: TDataSetProvider
    DataSet = sdsLocFotoCom
    Left = 1143
    Top = 376
  end
  object cdsLocFotoCom: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocFotoCom'
    Left = 1231
    Top = 380
    object cdsLocFotoComID_TIPO_LESAO: TIntegerField
      FieldName = 'ID_TIPO_LESAO'
      Required = True
    end
    object cdsLocFotoComID_COM_FOTO: TIntegerField
      FieldName = 'ID_COM_FOTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocFotoComFOTO_DESC: TStringField
      FieldName = 'FOTO_DESC'
      Size = 30
    end
    object cdsLocFotoComFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
  end
  object sdsAnotacoes: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'Select* from ANOTACOESGERAIS'#13#10'WHERE ANOT_COD_PESS=:ANOT_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANOT_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 723
    Top = 474
    object sdsAnotacoesANOT_COD_PESS: TIntegerField
      FieldName = 'ANOT_COD_PESS'
    end
    object sdsAnotacoesANOTACAO: TStringField
      FieldName = 'ANOTACAO'
      Size = 255
    end
  end
  object dpsAnotacoes: TDataSetProvider
    DataSet = sdsAnotacoes
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 819
    Top = 474
  end
  object cdsAnotacoes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsAnotacoes'
    Left = 891
    Top = 478
    object cdsAnotacoesANOT_COD_PESS: TIntegerField
      FieldName = 'ANOT_COD_PESS'
    end
    object cdsAnotacoesANOTACAO: TStringField
      FieldName = 'ANOTACAO'
      Size = 255
    end
  end
  object sdsLocComunic: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'select ID_COMUNICANTE, COMU_GRAU_PAREN, COMU_NOME, COMU_IDADE, C' +
      'OMU_TEL, COMU_END, '#13#10'COMU_COD_PESS,COMU_DATACAD, COMU_NUMPRONT'#13#10 +
      'FROM COMUNICANTE'#13#10'WHERE COMU_COD_PESS=:COMU_COD_PESS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COMU_COD_PESS'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 713
    Top = 213
  end
  object dpsLocComunic: TDataSetProvider
    DataSet = sdsLocComunic
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 825
    Top = 213
  end
  object cdsLocComunic: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocComunic'
    Left = 929
    Top = 209
    object cdsLocComunicID_COMUNICANTE: TIntegerField
      FieldName = 'ID_COMUNICANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocComunicCOMU_NOME: TStringField
      FieldName = 'COMU_NOME'
      Size = 60
    end
    object cdsLocComunicCOMU_IDADE: TSmallintField
      FieldName = 'COMU_IDADE'
    end
    object cdsLocComunicCOMU_TEL: TStringField
      FieldName = 'COMU_TEL'
      Size = 30
    end
    object cdsLocComunicCOMU_END: TStringField
      FieldName = 'COMU_END'
      Size = 60
    end
    object cdsLocComunicCOMU_GRAU_PAREN: TStringField
      FieldName = 'COMU_GRAU_PAREN'
      Size = 30
    end
    object cdsLocComunicCOMU_COD_PESS: TIntegerField
      FieldName = 'COMU_COD_PESS'
      Required = True
    end
    object cdsLocComunicCOMU_DATACAD: TStringField
      FieldName = 'COMU_DATACAD'
      Size = 30
    end
    object cdsLocComunicCOMU_NUMPRONT: TStringField
      FieldName = 'COMU_NUMPRONT'
      Size = 30
    end
  end
  object SQLQueryPessoal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select gen_id(gen_pessoal_id,0)as Codigo from RDB$DATABASE')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 976
    Top = 440
    object SQLQueryPessoalCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object SQLQueryComunicante: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select gen_id(gen_comunicante_id,0)as Codigo from RDB$DATABASE')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1104
    Top = 440
    object SQLQueryComunicanteCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object SQLQueryRecidiva: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select gen_id(gen_recidiva_tipo_lesao_id,0)as Codigo from RDB$DA' +
        'TABASE')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1208
    Top = 440
    object SQLQueryRecidivaCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object SQLQueryDiagnostico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select gen_id(gen_Diagnostico_tipo_lesao_id,0)as Codigo from RDB' +
        '$DATABASE')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 976
    Top = 488
    object SQLQueryDiagnosticoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object SQLQueryComtipoLesao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select gen_id(gen_comunicante_tipo_lesao_id,0)as Codigo from RDB' +
        '$DATABASE')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1072
    Top = 488
    object SQLQueryComtipoLesaoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object cdsLocPessoal: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocPessoal'
    Left = 1560
    Top = 26
    object cdsLocPessoalID_PESS: TIntegerField
      FieldName = 'ID_PESS'
      Required = True
    end
    object cdsLocPessoalPESS_NOME: TStringField
      FieldName = 'PESS_NOME'
      Size = 60
    end
    object cdsLocPessoalPESS_IDADE: TStringField
      FieldName = 'PESS_IDADE'
      Size = 60
    end
    object cdsLocPessoalPESS_GENERO: TStringField
      FieldName = 'PESS_GENERO'
      Size = 60
    end
    object cdsLocPessoalPESS_NATU_CID: TStringField
      FieldName = 'PESS_NATU_CID'
      Size = 60
    end
    object cdsLocPessoalPESS_NATU_UF: TStringField
      FieldName = 'PESS_NATU_UF'
      Size = 30
    end
    object cdsLocPessoalPESS_EST_CIVIL: TStringField
      FieldName = 'PESS_EST_CIVIL'
      Size = 30
    end
    object cdsLocPessoalPESS_ETNIA: TStringField
      FieldName = 'PESS_ETNIA'
      Size = 60
    end
    object cdsLocPessoalPESS_ESCOL_ANOS: TStringField
      FieldName = 'PESS_ESCOL_ANOS'
      Size = 30
    end
    object cdsLocPessoalPESS_ESCOL_GRAU: TStringField
      FieldName = 'PESS_ESCOL_GRAU'
      Size = 30
    end
    object cdsLocPessoalPESS_OCUP_DESC: TStringField
      FieldName = 'PESS_OCUP_DESC'
      Size = 60
    end
    object cdsLocPessoalPESS_OCUP_OPC: TStringField
      FieldName = 'PESS_OCUP_OPC'
      Size = 30
    end
    object cdsLocPessoalPESS_REND_FAM: TStringField
      FieldName = 'PESS_REND_FAM'
      Size = 30
    end
    object cdsLocPessoalPESS_TRANS_GOV_OPC: TStringField
      FieldName = 'PESS_TRANS_GOV_OPC'
      Size = 30
    end
    object cdsLocPessoalPESS_TRANS_GOV_TIPO: TStringField
      FieldName = 'PESS_TRANS_GOV_TIPO'
      Size = 30
    end
    object cdsLocPessoalPESS_TRANS_GOV_DESC: TStringField
      FieldName = 'PESS_TRANS_GOV_DESC'
      Size = 60
    end
    object cdsLocPessoalPESS_PRIV_ALIMEN: TStringField
      FieldName = 'PESS_PRIV_ALIMEN'
      Size = 60
    end
    object cdsLocPessoalPESS_NUMPRONT: TStringField
      FieldName = 'PESS_NUMPRONT'
      Size = 30
    end
    object cdsLocPessoalPESS_TIPOPACIENTE: TStringField
      FieldName = 'PESS_TIPOPACIENTE'
      Size = 30
    end
    object cdsLocPessoalDOMI_COD_PESS: TIntegerField
      FieldName = 'DOMI_COD_PESS'
    end
    object cdsLocPessoalDOMI_END: TStringField
      FieldName = 'DOMI_END'
      Size = 60
    end
    object cdsLocPessoalDOMI_REFE: TStringField
      FieldName = 'DOMI_REFE'
      Size = 60
    end
    object cdsLocPessoalDOMI_BAIRRO: TStringField
      FieldName = 'DOMI_BAIRRO'
      Size = 60
    end
    object cdsLocPessoalDOMI_CIDADE: TStringField
      FieldName = 'DOMI_CIDADE'
      Size = 60
    end
    object cdsLocPessoalDOMI_ESTADO: TStringField
      FieldName = 'DOMI_ESTADO'
      Size = 60
    end
    object cdsLocPessoalDOMI_CEP: TStringField
      FieldName = 'DOMI_CEP'
      Size = 60
    end
    object cdsLocPessoalDOMI_ZONA: TStringField
      FieldName = 'DOMI_ZONA'
      Size = 30
    end
    object cdsLocPessoalDOMI_FONE: TStringField
      FieldName = 'DOMI_FONE'
      Size = 30
    end
    object cdsLocPessoalDOMI_CEL: TStringField
      FieldName = 'DOMI_CEL'
      Size = 30
    end
    object cdsLocPessoalDOMI_CONTATO: TStringField
      FieldName = 'DOMI_CONTATO'
      Size = 30
    end
    object cdsLocPessoalDOMI_GEOREF: TStringField
      FieldName = 'DOMI_GEOREF'
      Size = 60
    end
    object cdsLocPessoalDOMI_LATITUDE: TStringField
      FieldName = 'DOMI_LATITUDE'
      Size = 30
    end
    object cdsLocPessoalDOMI_LONGITUDE: TStringField
      FieldName = 'DOMI_LONGITUDE'
      Size = 30
    end
    object cdsLocPessoalDOMI_TEMPO_RESID: TStringField
      FieldName = 'DOMI_TEMPO_RESID'
      Size = 30
    end
    object cdsLocPessoalDOMI_NUM_COMODO: TSmallintField
      FieldName = 'DOMI_NUM_COMODO'
    end
    object cdsLocPessoalDOMI_TOTAL_MORA: TSmallintField
      FieldName = 'DOMI_TOTAL_MORA'
    end
    object cdsLocPessoalDOMI_DORM_DENSI: TStringField
      FieldName = 'DOMI_DORM_DENSI'
      Size = 60
    end
    object cdsLocPessoalDOMI_EXPC_OPC: TStringField
      FieldName = 'DOMI_EXPC_OPC'
      Size = 60
    end
    object cdsLocPessoalDOMI_EXPC_BAIRRO: TStringField
      FieldName = 'DOMI_EXPC_BAIRRO'
      Size = 60
    end
    object cdsLocPessoalDOMI_EXPC_CIDADE: TStringField
      FieldName = 'DOMI_EXPC_CIDADE'
      Size = 60
    end
    object cdsLocPessoalDOMI_EXPC_UF: TStringField
      FieldName = 'DOMI_EXPC_UF'
      Size = 30
    end
    object cdsLocPessoalDOMI_ABAST_AGUA_OPC: TStringField
      FieldName = 'DOMI_ABAST_AGUA_OPC'
      Size = 30
    end
    object cdsLocPessoalDOMI_ABAST_AGUA_DESC: TStringField
      FieldName = 'DOMI_ABAST_AGUA_DESC'
      Size = 60
    end
    object cdsLocPessoalDOMI_AGUA_CONS: TStringField
      FieldName = 'DOMI_AGUA_CONS'
      Size = 30
    end
    object cdsLocPessoalDOMI_REDE_ESGOTO_OPC: TStringField
      FieldName = 'DOMI_REDE_ESGOTO_OPC'
      Size = 60
    end
    object cdsLocPessoalDOMI_REDE_ESGOTO_DESC: TStringField
      FieldName = 'DOMI_REDE_ESGOTO_DESC'
      Size = 60
    end
    object cdsLocPessoalDOMI_DSTINO_LIXO: TStringField
      FieldName = 'DOMI_DSTINO_LIXO'
      Size = 30
    end
    object cdsLocPessoalDOMI_SUBNORMAL: TStringField
      FieldName = 'DOMI_SUBNORMAL'
      Size = 60
    end
    object cdsLocPessoalDIAG_COD_PESS: TIntegerField
      FieldName = 'DIAG_COD_PESS'
    end
    object cdsLocPessoalDIAG_UND_SAUDE: TStringField
      FieldName = 'DIAG_UND_SAUDE'
      Size = 60
    end
    object cdsLocPessoalDIAG_PRONTUARIO: TStringField
      FieldName = 'DIAG_PRONTUARIO'
      Size = 60
    end
    object cdsLocPessoalDIAG_SINAN: TStringField
      FieldName = 'DIAG_SINAN'
      Size = 60
    end
    object cdsLocPessoalDIAG_RECIDIVA: TStringField
      FieldName = 'DIAG_RECIDIVA'
      Size = 60
    end
    object cdsLocPessoalDIAG_FOTO: TStringField
      FieldName = 'DIAG_FOTO'
      Size = 60
    end
    object cdsLocPessoalDIAG_FOTO_REG: TStringField
      FieldName = 'DIAG_FOTO_REG'
      Size = 60
    end
    object cdsLocPessoalDIAG_GRAU_INCAP: TStringField
      FieldName = 'DIAG_GRAU_INCAP'
      Size = 30
    end
    object cdsLocPessoalDIAG_CICAT_BCG_NUM: TStringField
      FieldName = 'DIAG_CICAT_BCG_NUM'
      Size = 60
    end
    object cdsLocPessoalDIAG_CICAT_BCG_DIAM: TStringField
      FieldName = 'DIAG_CICAT_BCG_DIAM'
      Size = 30
    end
    object cdsLocPessoalDIAG_NUMERO_LES: TStringField
      FieldName = 'DIAG_NUMERO_LES'
      Size = 60
    end
    object cdsLocPessoalDIAG_CO_MORB_DIAB: TStringField
      FieldName = 'DIAG_CO_MORB_DIAB'
      Size = 60
    end
    object cdsLocPessoalDIAG_CO_MORB_HIPER: TStringField
      FieldName = 'DIAG_CO_MORB_HIPER'
      Size = 60
    end
    object cdsLocPessoalDIAG_CO_MORB_NEO: TStringField
      FieldName = 'DIAG_CO_MORB_NEO'
      Size = 60
    end
    object cdsLocPessoalDIAG_CO_MORB_OUTRAS: TStringField
      FieldName = 'DIAG_CO_MORB_OUTRAS'
      Size = 60
    end
    object cdsLocPessoalDIAG_CO_INFEC_HIV: TStringField
      FieldName = 'DIAG_CO_INFEC_HIV'
      Size = 60
    end
    object cdsLocPessoalDIAG_CO_INFEC_TUBER: TStringField
      FieldName = 'DIAG_CO_INFEC_TUBER'
      Size = 60
    end
    object cdsLocPessoalDIAG_CO_INFEC_HEPA: TStringField
      FieldName = 'DIAG_CO_INFEC_HEPA'
      Size = 60
    end
    object cdsLocPessoalDIAG_CO_INFEC_OUTRAS: TStringField
      FieldName = 'DIAG_CO_INFEC_OUTRAS'
      Size = 60
    end
    object cdsLocPessoalLAB_COD_PESS: TIntegerField
      FieldName = 'LAB_COD_PESS'
    end
    object cdsLocPessoalLAB_BACIL_OPC: TStringField
      FieldName = 'LAB_BACIL_OPC'
      Size = 30
    end
    object cdsLocPessoalLAB_BACIL_IB: TStringField
      FieldName = 'LAB_BACIL_IB'
      Size = 60
    end
    object cdsLocPessoalLAB_BACIL_IM: TStringField
      FieldName = 'LAB_BACIL_IM'
      Size = 60
    end
    object cdsLocPessoalLAB_BACIL_LOCAL: TStringField
      FieldName = 'LAB_BACIL_LOCAL'
      Size = 60
    end
    object cdsLocPessoalLAB_BACIL_TECN: TStringField
      FieldName = 'LAB_BACIL_TECN'
      Size = 60
    end
    object cdsLocPessoalLAB_HIST: TStringField
      FieldName = 'LAB_HIST'
      Size = 30
    end
    object cdsLocPessoalLAB_SOR_ELISA: TStringField
      FieldName = 'LAB_SOR_ELISA'
      Size = 60
    end
    object cdsLocPessoalLAB_SOR_DO: TStringField
      FieldName = 'LAB_SOR_DO'
      Size = 60
    end
    object cdsLocPessoalLAB_SOR_CUT_OFF: TStringField
      FieldName = 'LAB_SOR_CUT_OFF'
      Size = 60
    end
    object cdsLocPessoalLAB_SOR_LOCAL: TStringField
      FieldName = 'LAB_SOR_LOCAL'
      Size = 60
    end
    object cdsLocPessoalLAB_SOR_TECN_RESP: TStringField
      FieldName = 'LAB_SOR_TECN_RESP'
      Size = 60
    end
    object cdsLocPessoalLAB_SOR_NAO_REALI: TStringField
      FieldName = 'LAB_SOR_NAO_REALI'
      Size = 60
    end
    object cdsLocPessoalLAB_DIAG_MOLEC: TStringField
      FieldName = 'LAB_DIAG_MOLEC'
      Size = 30
    end
    object cdsLocPessoalLAB_SENS_RPOB: TStringField
      FieldName = 'LAB_SENS_RPOB'
      Size = 30
    end
    object cdsLocPessoalLAB_SENS_FOIP: TStringField
      FieldName = 'LAB_SENS_FOIP'
      Size = 30
    end
    object cdsLocPessoalLAB_SENS_GYRA: TStringField
      FieldName = 'LAB_SENS_GYRA'
      Size = 30
    end
    object cdsLocPessoalLAB_GENO_DESC: TStringField
      FieldName = 'LAB_GENO_DESC'
      Size = 60
    end
    object cdsLocPessoalLAB_GENO_NAO_REALI: TStringField
      FieldName = 'LAB_GENO_NAO_REALI'
      Size = 60
    end
    object cdsLocPessoalTRAT_COD_PESS: TIntegerField
      FieldName = 'TRAT_COD_PESS'
    end
    object cdsLocPessoalTRAT_ESQ_TRAT_OPC: TStringField
      FieldName = 'TRAT_ESQ_TRAT_OPC'
      Size = 30
    end
    object cdsLocPessoalTRAT_ESQ_TRAT_DESC: TStringField
      FieldName = 'TRAT_ESQ_TRAT_DESC'
      Size = 60
    end
    object cdsLocPessoalTRAT_REAC_HANS: TStringField
      FieldName = 'TRAT_REAC_HANS'
      Size = 60
    end
    object cdsLocPessoalTRAT_REAC_TIPO: TStringField
      FieldName = 'TRAT_REAC_TIPO'
      Size = 30
    end
    object cdsLocPessoalTRAT_REAC_TRAT_OPC: TStringField
      FieldName = 'TRAT_REAC_TRAT_OPC'
      Size = 30
    end
    object cdsLocPessoalTRAT_REAC_TRAT_DESC: TStringField
      FieldName = 'TRAT_REAC_TRAT_DESC'
      Size = 60
    end
    object cdsLocPessoalNEUR_COD_PESS: TIntegerField
      FieldName = 'NEUR_COD_PESS'
    end
    object cdsLocPessoalNEUR_NARIZ_RESSEC_D: TStringField
      FieldName = 'NEUR_NARIZ_RESSEC_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_NARIZ_RESSEC_E: TStringField
      FieldName = 'NEUR_NARIZ_RESSEC_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_NARIZ_FERI_D: TStringField
      FieldName = 'NEUR_NARIZ_FERI_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_NARIZ_FERI_E: TStringField
      FieldName = 'NEUR_NARIZ_FERI_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_NARIZ_SEPTO_D: TStringField
      FieldName = 'NEUR_NARIZ_SEPTO_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_NARIZ_SEPTO_E: TStringField
      FieldName = 'NEUR_NARIZ_SEPTO_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_S_FORCA_D: TFMTBCDField
      FieldName = 'NEUR_OLHO_S_FORCA_D'
      Precision = 18
      Size = 2
    end
    object cdsLocPessoalNEUR_OLHO_S_FORCA_E: TFMTBCDField
      FieldName = 'NEUR_OLHO_S_FORCA_E'
      Precision = 18
      Size = 2
    end
    object cdsLocPessoalNEUR_OLHO_C_FORCA_D: TFMTBCDField
      FieldName = 'NEUR_OLHO_C_FORCA_D'
      Precision = 18
      Size = 2
    end
    object cdsLocPessoalNEUR_OLHO_C_FORCA_E: TFMTBCDField
      FieldName = 'NEUR_OLHO_C_FORCA_E'
      Precision = 18
      Size = 2
    end
    object cdsLocPessoalNEUR_OLHO_TRIQUI_D: TStringField
      FieldName = 'NEUR_OLHO_TRIQUI_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_TRIQUI_E: TStringField
      FieldName = 'NEUR_OLHO_TRIQUI_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_ECTRO_D: TStringField
      FieldName = 'NEUR_OLHO_ECTRO_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_ECTRO_E: TStringField
      FieldName = 'NEUR_OLHO_ECTRO_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_DIMI_SENS_D: TStringField
      FieldName = 'NEUR_OLHO_DIMI_SENS_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_DIMI_SENS_E: TStringField
      FieldName = 'NEUR_OLHO_DIMI_SENS_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_OPACI_D: TStringField
      FieldName = 'NEUR_OLHO_OPACI_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_OPACI_E: TStringField
      FieldName = 'NEUR_OLHO_OPACI_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_CATA_D: TStringField
      FieldName = 'NEUR_OLHO_CATA_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_CATA_E: TStringField
      FieldName = 'NEUR_OLHO_CATA_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_ACUCI_D: TStringField
      FieldName = 'NEUR_OLHO_ACUCI_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_ACUCI_E: TStringField
      FieldName = 'NEUR_OLHO_ACUCI_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_MEM_SUP_QUEIXA: TStringField
      FieldName = 'NEUR_MEM_SUP_QUEIXA'
      Size = 60
    end
    object cdsLocPessoalNEUR_PALP_ULNAR_D: TStringField
      FieldName = 'NEUR_PALP_ULNAR_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_PALP_ULNAR_E: TStringField
      FieldName = 'NEUR_PALP_ULNAR_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_PALP_MEDIANO_D: TStringField
      FieldName = 'NEUR_PALP_MEDIANO_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_PALP_MEDIANO_E: TStringField
      FieldName = 'NEUR_PALP_MEDIANO_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_PALP_RADIAL_D: TStringField
      FieldName = 'NEUR_PALP_RADIAL_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_PALP_RADIAL_E: TStringField
      FieldName = 'NEUR_PALP_RADIAL_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_AVAL_FOR_ULNAR_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_ULNAR_D'
      Size = 30
    end
    object cdsLocPessoalNEUR_AVAL_FOR_ULNAR_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_ULNAR_E'
      Size = 30
    end
    object cdsLocPessoalNEUR_AVAL_FOR_MEDIANO_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_MEDIANO_D'
      Size = 30
    end
    object cdsLocPessoalNEUR_AVAL_FOR_MEDIANO_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_MEDIANO_E'
      Size = 30
    end
    object cdsLocPessoalNEUR_AVAL_FOR_RADIAL_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_RADIAL_D'
      Size = 30
    end
    object cdsLocPessoalNEUR_AVAL_FOR_RADIAL_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_RADIAL_E'
      Size = 30
    end
    object cdsLocPessoalNEUR_NERV_FIBULAR_D: TStringField
      FieldName = 'NEUR_NERV_FIBULAR_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_NERV_FIBULAR_E: TStringField
      FieldName = 'NEUR_NERV_FIBULAR_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_NERV_TIBIAL_D: TStringField
      FieldName = 'NEUR_NERV_TIBIAL_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_NERV_TIBIAL_E: TStringField
      FieldName = 'NEUR_NERV_TIBIAL_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_AVAL_FOR_HALUZ_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_HALUZ_D'
      Size = 30
    end
    object cdsLocPessoalNEUR_AVAL_FOR_HALUZ_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_HALUZ_E'
      Size = 30
    end
    object cdsLocPessoalNEUR_AVAL_FOR_DORSI_D: TStringField
      FieldName = 'NEUR_AVAL_FOR_DORSI_D'
      Size = 30
    end
    object cdsLocPessoalNEUR_AVAL_FOR_DORSI_E: TStringField
      FieldName = 'NEUR_AVAL_FOR_DORSI_E'
      Size = 30
    end
    object cdsLocPessoalNEUR_GRAU_INCAP_OLHO_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_OLHO_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_GRAU_INCAP_OLHO_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_OLHO_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_GRAU_INCAP_MAO_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAO_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_GRAU_INCAP_MAO_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAO_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_GRAU_INCAP_PE_D: TStringField
      FieldName = 'NEUR_GRAU_INCAP_PE_D'
      Size = 60
    end
    object cdsLocPessoalNEUR_GRAU_INCAP_PE_E: TStringField
      FieldName = 'NEUR_GRAU_INCAP_PE_E'
      Size = 60
    end
    object cdsLocPessoalNEUR_GRAU_INCAP_MAIORGRAU: TStringField
      FieldName = 'NEUR_GRAU_INCAP_MAIORGRAU'
      Size = 60
    end
    object cdsLocPessoalNEUR_GRAU_INCAP_ASS: TBlobField
      FieldName = 'NEUR_GRAU_INCAP_ASS'
      Size = 1
    end
    object cdsLocPessoalNEUR_ANOTACOES: TBlobField
      FieldName = 'NEUR_ANOTACOES'
      Size = 1
    end
    object cdsLocPessoalNEUR_MD1_INSP: TStringField
      FieldName = 'NEUR_MD1_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD2_INSP: TStringField
      FieldName = 'NEUR_MD2_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD3_INSP: TStringField
      FieldName = 'NEUR_MD3_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD4_INSP: TStringField
      FieldName = 'NEUR_MD4_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD5_INSP: TStringField
      FieldName = 'NEUR_MD5_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD6_INSP: TStringField
      FieldName = 'NEUR_MD6_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME1_INSP: TStringField
      FieldName = 'NEUR_ME1_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME2_INSP: TStringField
      FieldName = 'NEUR_ME2_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME3_INSP: TStringField
      FieldName = 'NEUR_ME3_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME4_INSP: TStringField
      FieldName = 'NEUR_ME4_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME5_INSP: TStringField
      FieldName = 'NEUR_ME5_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME6_INSP: TStringField
      FieldName = 'NEUR_ME6_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD1_INSP: TStringField
      FieldName = 'NEUR_PD1_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD2_INSP: TStringField
      FieldName = 'NEUR_PD2_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD3_INSP: TStringField
      FieldName = 'NEUR_PD3_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD4_INSP: TStringField
      FieldName = 'NEUR_PD4_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD5_INSP: TStringField
      FieldName = 'NEUR_PD5_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD6_INSP: TStringField
      FieldName = 'NEUR_PD6_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD7_INSP: TStringField
      FieldName = 'NEUR_PD7_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD8_INSP: TStringField
      FieldName = 'NEUR_PD8_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD9_INSP: TStringField
      FieldName = 'NEUR_PD9_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE1_INSP: TStringField
      FieldName = 'NEUR_PE1_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE2_INSP: TStringField
      FieldName = 'NEUR_PE2_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE3_INSP: TStringField
      FieldName = 'NEUR_PE3_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE4_INSP: TStringField
      FieldName = 'NEUR_PE4_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE5_INSP: TStringField
      FieldName = 'NEUR_PE5_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE6_INSP: TStringField
      FieldName = 'NEUR_PE6_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE7_INSP: TStringField
      FieldName = 'NEUR_PE7_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE8_INSP: TStringField
      FieldName = 'NEUR_PE8_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE9_INSP: TStringField
      FieldName = 'NEUR_PE9_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_NARIZ_QUEIXAPRIN: TStringField
      FieldName = 'NEUR_NARIZ_QUEIXAPRIN'
      Size = 60
    end
    object cdsLocPessoalNEUR_OLHO_QUEIXAPRIN: TStringField
      FieldName = 'NEUR_OLHO_QUEIXAPRIN'
      Size = 60
    end
    object cdsLocPessoalNEUR_MD_OBS: TStringField
      FieldName = 'NEUR_MD_OBS'
      Size = 60
    end
    object cdsLocPessoalNEUR_ME_OBS: TStringField
      FieldName = 'NEUR_ME_OBS'
      Size = 60
    end
    object cdsLocPessoalNEUR_PD_OBS: TStringField
      FieldName = 'NEUR_PD_OBS'
      Size = 60
    end
    object cdsLocPessoalNEUR_PE_OBS: TStringField
      FieldName = 'NEUR_PE_OBS'
      Size = 60
    end
    object cdsLocPessoalNEUR_MD_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_MD_GARRA_RIGIDA'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_MD_GARRA_MOVEL'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD_REABSORVICAO: TStringField
      FieldName = 'NEUR_MD_REABSORVICAO'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD_FERIDA: TStringField
      FieldName = 'NEUR_MD_FERIDA'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_ME_GARRA_RIGIDA'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_ME_GARRA_MOVEL'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME_REABSORVICAO: TStringField
      FieldName = 'NEUR_ME_REABSORVICAO'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME_FERIDA: TStringField
      FieldName = 'NEUR_ME_FERIDA'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_PD_GARRA_RIGIDA'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_PD_GARRA_MOVEL'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD_REABSORVICAO: TStringField
      FieldName = 'NEUR_PD_REABSORVICAO'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD_FERIDA: TStringField
      FieldName = 'NEUR_PD_FERIDA'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE_GARRA_RIGIDA: TStringField
      FieldName = 'NEUR_PE_GARRA_RIGIDA'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE_GARRA_MOVEL: TStringField
      FieldName = 'NEUR_PE_GARRA_MOVEL'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE_REABSORVICAO: TStringField
      FieldName = 'NEUR_PE_REABSORVICAO'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE_FERIDA: TStringField
      FieldName = 'NEUR_PE_FERIDA'
      Size = 30
    end
    object cdsLocPessoalNEUR_PD10_INSP: TStringField
      FieldName = 'NEUR_PD10_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_PE10_INSP: TStringField
      FieldName = 'NEUR_PE10_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_MD7_INSP: TStringField
      FieldName = 'NEUR_MD7_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_ME7_INSP: TStringField
      FieldName = 'NEUR_ME7_INSP'
      Size = 30
    end
    object cdsLocPessoalNEUR_MEM_INFER_QUEIXA: TStringField
      FieldName = 'NEUR_MEM_INFER_QUEIXA'
      Size = 30
    end
    object cdsLocPessoalDIAG_DATA: TStringField
      FieldName = 'DIAG_DATA'
      Size = 10
    end
    object cdsLocPessoalDIAG_FORMA_CLIN: TStringField
      FieldName = 'DIAG_FORMA_CLIN'
      Size = 60
    end
    object cdsLocPessoalDIAG_CLASS_OPERA: TStringField
      FieldName = 'DIAG_CLASS_OPERA'
      Size = 60
    end
    object cdsLocPessoalLAB_BACIL_DATA: TStringField
      FieldName = 'LAB_BACIL_DATA'
      Size = 10
    end
    object cdsLocPessoalLAB_SOR_DATA: TStringField
      FieldName = 'LAB_SOR_DATA'
      Size = 10
    end
    object cdsLocPessoalNEUR_DATA: TStringField
      FieldName = 'NEUR_DATA'
      Size = 10
    end
    object cdsLocPessoalPESS_NASC: TStringField
      FieldName = 'PESS_NASC'
      Size = 30
    end
    object cdsLocPessoalPESS_DATA_CAD: TStringField
      FieldName = 'PESS_DATA_CAD'
      Size = 10
    end
    object cdsLocPessoalPESS_DATA_ATU: TStringField
      FieldName = 'PESS_DATA_ATU'
      Size = 10
    end
  end
  object dpsLocPessoal: TDataSetProvider
    DataSet = sdsLocPessoal
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 1464
    Top = 25
  end
  object sdsLocPessoal: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'Select* FROM pessoal left join domiciliar ON PESSOAL.id_pess=DOM' +
      'ICILIAR.domi_cod_pess left join '#13#10' diagnostico ON PESSOAL.id_pes' +
      's=DIAGNOSTICO.diag_cod_pess left join '#13#10' laboratorio ON pessoal.' +
      'id_pess=LABORATORIO.lab_cod_pess left join '#13#10' tratamento ON pess' +
      'oal.id_pess=TRATAMENTO.trat_cod_pess left join '#13#10' neurologica ON' +
      ' pessoal.id_pess=NEUROLOGICA.neur_cod_pess '#13#10'where PESS_NUMPRONT' +
      ' CONTAINING :PESS_NUMPRONT'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'PESS_NUMPRONT'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1368
    Top = 26
  end
  object SQLQueryNumPront: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Max(PESS_NUMPRONT)from pessoal')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 1200
    Top = 496
    object SQLQueryNumProntMAX: TStringField
      FieldName = 'MAX'
      Size = 30
    end
  end
end
