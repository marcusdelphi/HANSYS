object dmFichaEstudante: TdmFichaEstudante
  OldCreateOrder = False
  Height = 242
  Width = 337
  object dpsCadEstudante: TDataSetProvider
    DataSet = sdsCadEstudante
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 150
    Top = 21
  end
  object sdsCadEstudante: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ESTU_BAIRRO, ESTU_CEL, ESTU_CEP, ESTU_CICA_BCG_DIAM, ESTU' +
      '_CICA_BCG_NUM, ESTU_CIDADE, ESTU_CLASS_OPER, ESTU_CONT, ESTU_CON' +
      'T_NOME,'#13#10'             ESTU_CONV_CASO_HANS, ESTU_NASC, ESTU_DATAC' +
      'AD, ESTU_DIAG_MOLE, ESTU_END, ESTU_ESCOLA, ESTU_ETNIA, ESTU_FONE' +
      '_FIXO, ESTU_FORMA_CLIN, ESTU_GENERO, '#13#10'             ESTU_GENO_DE' +
      'SC, ESTU_GENO_REALIZ, ESTU_GEOREF, ESTU_IDADE, ESTU_LATITUDE, ES' +
      'TU_LONGITUDE, ESTU_NATU_CID, ESTU_NATU_UF, ESTU_NOME, ESTU_NOMEM' +
      'AE, '#13#10'             ESTU_NOMEPAI, ESTU_NOVOCASO, ESTU_NOVONUM, ES' +
      'TU_NUMPRONT, ESTU_NUMPRONTALT, ESTU_PONTO_REF, ESTU_SENS_MEDI_FO' +
      'LP, ESTU_SENS_MEDI_GYRA, '#13#10'            ESTU_SENS_MEDI_RPOB, ESTU' +
      '_SERIEATUAL, ESTU_SOR_COTOFF, ESTU_SOR_DO, ESTU_SOR_ELISA, ESTU_' +
      'SOR_REALIZ, ESTU_TESTERAPIDO, ESTU_UF'#13#10#13#10'FROM ESTUDANTES'#13#10'where ' +
      'ESTU_NUMPRONT = :ESTU_NUMPRONT'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESTU_NUMPRONT'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 44
    Top = 21
    object sdsCadEstudanteESTU_BAIRRO: TStringField
      FieldName = 'ESTU_BAIRRO'
      Size = 60
    end
    object sdsCadEstudanteESTU_CEL: TStringField
      FieldName = 'ESTU_CEL'
      Size = 30
    end
    object sdsCadEstudanteESTU_CEP: TStringField
      FieldName = 'ESTU_CEP'
      Size = 30
    end
    object sdsCadEstudanteESTU_CICA_BCG_DIAM: TSmallintField
      FieldName = 'ESTU_CICA_BCG_DIAM'
    end
    object sdsCadEstudanteESTU_CICA_BCG_NUM: TSmallintField
      FieldName = 'ESTU_CICA_BCG_NUM'
    end
    object sdsCadEstudanteESTU_CIDADE: TStringField
      FieldName = 'ESTU_CIDADE'
      Size = 60
    end
    object sdsCadEstudanteESTU_CLASS_OPER: TStringField
      FieldName = 'ESTU_CLASS_OPER'
      Size = 30
    end
    object sdsCadEstudanteESTU_CONT: TStringField
      FieldName = 'ESTU_CONT'
      Size = 30
    end
    object sdsCadEstudanteESTU_CONT_NOME: TStringField
      FieldName = 'ESTU_CONT_NOME'
      Size = 60
    end
    object sdsCadEstudanteESTU_CONV_CASO_HANS: TStringField
      FieldName = 'ESTU_CONV_CASO_HANS'
      Size = 30
    end
    object sdsCadEstudanteESTU_DATACAD: TStringField
      FieldName = 'ESTU_DATACAD'
      Size = 30
    end
    object sdsCadEstudanteESTU_DIAG_MOLE: TStringField
      FieldName = 'ESTU_DIAG_MOLE'
      Size = 30
    end
    object sdsCadEstudanteESTU_END: TStringField
      FieldName = 'ESTU_END'
      Size = 60
    end
    object sdsCadEstudanteESTU_ESCOLA: TStringField
      FieldName = 'ESTU_ESCOLA'
      Size = 60
    end
    object sdsCadEstudanteESTU_ETNIA: TStringField
      FieldName = 'ESTU_ETNIA'
      Size = 30
    end
    object sdsCadEstudanteESTU_FONE_FIXO: TStringField
      FieldName = 'ESTU_FONE_FIXO'
      Size = 30
    end
    object sdsCadEstudanteESTU_FORMA_CLIN: TStringField
      FieldName = 'ESTU_FORMA_CLIN'
      Size = 30
    end
    object sdsCadEstudanteESTU_GENERO: TStringField
      FieldName = 'ESTU_GENERO'
      Size = 30
    end
    object sdsCadEstudanteESTU_GENO_DESC: TStringField
      FieldName = 'ESTU_GENO_DESC'
      Size = 60
    end
    object sdsCadEstudanteESTU_GENO_REALIZ: TStringField
      FieldName = 'ESTU_GENO_REALIZ'
      Size = 30
    end
    object sdsCadEstudanteESTU_GEOREF: TStringField
      FieldName = 'ESTU_GEOREF'
      Size = 10
    end
    object sdsCadEstudanteESTU_IDADE: TSmallintField
      FieldName = 'ESTU_IDADE'
    end
    object sdsCadEstudanteESTU_LATITUDE: TStringField
      FieldName = 'ESTU_LATITUDE'
      Size = 60
    end
    object sdsCadEstudanteESTU_LONGITUDE: TStringField
      FieldName = 'ESTU_LONGITUDE'
      Size = 60
    end
    object sdsCadEstudanteESTU_NATU_CID: TStringField
      FieldName = 'ESTU_NATU_CID'
      Size = 30
    end
    object sdsCadEstudanteESTU_NATU_UF: TStringField
      FieldName = 'ESTU_NATU_UF'
      Size = 30
    end
    object sdsCadEstudanteESTU_NOME: TStringField
      FieldName = 'ESTU_NOME'
      Size = 60
    end
    object sdsCadEstudanteESTU_NOMEMAE: TStringField
      FieldName = 'ESTU_NOMEMAE'
      Size = 60
    end
    object sdsCadEstudanteESTU_NOMEPAI: TStringField
      FieldName = 'ESTU_NOMEPAI'
      Size = 60
    end
    object sdsCadEstudanteESTU_NOVOCASO: TStringField
      FieldName = 'ESTU_NOVOCASO'
      FixedChar = True
      Size = 10
    end
    object sdsCadEstudanteESTU_NOVONUM: TStringField
      FieldName = 'ESTU_NOVONUM'
      Size = 30
    end
    object sdsCadEstudanteESTU_NUMPRONT: TStringField
      FieldName = 'ESTU_NUMPRONT'
      Required = True
      Size = 10
    end
    object sdsCadEstudanteESTU_NUMPRONTALT: TStringField
      FieldName = 'ESTU_NUMPRONTALT'
      Required = True
      Size = 10
    end
    object sdsCadEstudanteESTU_PONTO_REF: TStringField
      FieldName = 'ESTU_PONTO_REF'
      Size = 60
    end
    object sdsCadEstudanteESTU_SENS_MEDI_FOLP: TStringField
      FieldName = 'ESTU_SENS_MEDI_FOLP'
      Size = 30
    end
    object sdsCadEstudanteESTU_SENS_MEDI_GYRA: TStringField
      FieldName = 'ESTU_SENS_MEDI_GYRA'
      Size = 30
    end
    object sdsCadEstudanteESTU_SENS_MEDI_RPOB: TStringField
      FieldName = 'ESTU_SENS_MEDI_RPOB'
      Size = 30
    end
    object sdsCadEstudanteESTU_SERIEATUAL: TStringField
      FieldName = 'ESTU_SERIEATUAL'
      Size = 30
    end
    object sdsCadEstudanteESTU_SOR_COTOFF: TStringField
      FieldName = 'ESTU_SOR_COTOFF'
      Size = 10
    end
    object sdsCadEstudanteESTU_SOR_DO: TStringField
      FieldName = 'ESTU_SOR_DO'
      Size = 10
    end
    object sdsCadEstudanteESTU_SOR_ELISA: TStringField
      FieldName = 'ESTU_SOR_ELISA'
      Size = 10
    end
    object sdsCadEstudanteESTU_SOR_REALIZ: TStringField
      FieldName = 'ESTU_SOR_REALIZ'
      Size = 30
    end
    object sdsCadEstudanteESTU_TESTERAPIDO: TStringField
      FieldName = 'ESTU_TESTERAPIDO'
      Size = 30
    end
    object sdsCadEstudanteESTU_UF: TStringField
      FieldName = 'ESTU_UF'
      Size = 60
    end
    object sdsCadEstudanteESTU_NASC: TStringField
      FieldName = 'ESTU_NASC'
      Size = 30
    end
  end
  object cdsCadEstudante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadEstudante'
    Left = 262
    Top = 21
    object cdsCadEstudanteESTU_BAIRRO: TStringField
      FieldName = 'ESTU_BAIRRO'
      Size = 60
    end
    object cdsCadEstudanteESTU_CEL: TStringField
      FieldName = 'ESTU_CEL'
      EditMask = '!\(999\)0000-0000;1;_'
      Size = 30
    end
    object cdsCadEstudanteESTU_CEP: TStringField
      FieldName = 'ESTU_CEP'
      EditMask = '00000\-999;1;_'
      Size = 30
    end
    object cdsCadEstudanteESTU_CICA_BCG_DIAM: TSmallintField
      FieldName = 'ESTU_CICA_BCG_DIAM'
    end
    object cdsCadEstudanteESTU_CICA_BCG_NUM: TSmallintField
      FieldName = 'ESTU_CICA_BCG_NUM'
    end
    object cdsCadEstudanteESTU_CIDADE: TStringField
      FieldName = 'ESTU_CIDADE'
      Size = 60
    end
    object cdsCadEstudanteESTU_CLASS_OPER: TStringField
      FieldName = 'ESTU_CLASS_OPER'
      Size = 30
    end
    object cdsCadEstudanteESTU_CONT: TStringField
      FieldName = 'ESTU_CONT'
      Size = 30
    end
    object cdsCadEstudanteESTU_CONT_NOME: TStringField
      FieldName = 'ESTU_CONT_NOME'
      Size = 60
    end
    object cdsCadEstudanteESTU_CONV_CASO_HANS: TStringField
      FieldName = 'ESTU_CONV_CASO_HANS'
      Size = 30
    end
    object cdsCadEstudanteESTU_DATACAD: TStringField
      FieldName = 'ESTU_DATACAD'
      EditMask = '!99/99/0000;1;_'
      Size = 30
    end
    object cdsCadEstudanteESTU_DIAG_MOLE: TStringField
      FieldName = 'ESTU_DIAG_MOLE'
      Size = 30
    end
    object cdsCadEstudanteESTU_END: TStringField
      FieldName = 'ESTU_END'
      Size = 60
    end
    object cdsCadEstudanteESTU_ESCOLA: TStringField
      FieldName = 'ESTU_ESCOLA'
      Size = 60
    end
    object cdsCadEstudanteESTU_ETNIA: TStringField
      FieldName = 'ESTU_ETNIA'
      Size = 30
    end
    object cdsCadEstudanteESTU_FONE_FIXO: TStringField
      FieldName = 'ESTU_FONE_FIXO'
      EditMask = '!\(999\)0000-0000;1;_'
      Size = 30
    end
    object cdsCadEstudanteESTU_FORMA_CLIN: TStringField
      FieldName = 'ESTU_FORMA_CLIN'
      Size = 30
    end
    object cdsCadEstudanteESTU_GENERO: TStringField
      FieldName = 'ESTU_GENERO'
      Size = 30
    end
    object cdsCadEstudanteESTU_GENO_DESC: TStringField
      FieldName = 'ESTU_GENO_DESC'
      Size = 60
    end
    object cdsCadEstudanteESTU_GENO_REALIZ: TStringField
      FieldName = 'ESTU_GENO_REALIZ'
      Size = 30
    end
    object cdsCadEstudanteESTU_GEOREF: TStringField
      FieldName = 'ESTU_GEOREF'
      Size = 10
    end
    object cdsCadEstudanteESTU_IDADE: TSmallintField
      FieldName = 'ESTU_IDADE'
    end
    object cdsCadEstudanteESTU_LATITUDE: TStringField
      FieldName = 'ESTU_LATITUDE'
      Size = 60
    end
    object cdsCadEstudanteESTU_LONGITUDE: TStringField
      FieldName = 'ESTU_LONGITUDE'
      Size = 60
    end
    object cdsCadEstudanteESTU_NATU_CID: TStringField
      FieldName = 'ESTU_NATU_CID'
      Size = 30
    end
    object cdsCadEstudanteESTU_NATU_UF: TStringField
      FieldName = 'ESTU_NATU_UF'
      Size = 30
    end
    object cdsCadEstudanteESTU_NOME: TStringField
      FieldName = 'ESTU_NOME'
      Size = 60
    end
    object cdsCadEstudanteESTU_NOMEMAE: TStringField
      FieldName = 'ESTU_NOMEMAE'
      Size = 60
    end
    object cdsCadEstudanteESTU_NOMEPAI: TStringField
      FieldName = 'ESTU_NOMEPAI'
      Size = 60
    end
    object cdsCadEstudanteESTU_NOVOCASO: TStringField
      FieldName = 'ESTU_NOVOCASO'
      FixedChar = True
      Size = 10
    end
    object cdsCadEstudanteESTU_NOVONUM: TStringField
      FieldName = 'ESTU_NOVONUM'
      Size = 30
    end
    object cdsCadEstudanteESTU_NUMPRONT: TStringField
      FieldName = 'ESTU_NUMPRONT'
      Required = True
      Size = 10
    end
    object cdsCadEstudanteESTU_NUMPRONTALT: TStringField
      FieldName = 'ESTU_NUMPRONTALT'
      Required = True
      Size = 10
    end
    object cdsCadEstudanteESTU_PONTO_REF: TStringField
      FieldName = 'ESTU_PONTO_REF'
      Size = 60
    end
    object cdsCadEstudanteESTU_SENS_MEDI_FOLP: TStringField
      FieldName = 'ESTU_SENS_MEDI_FOLP'
      Size = 30
    end
    object cdsCadEstudanteESTU_SENS_MEDI_GYRA: TStringField
      FieldName = 'ESTU_SENS_MEDI_GYRA'
      Size = 30
    end
    object cdsCadEstudanteESTU_SENS_MEDI_RPOB: TStringField
      FieldName = 'ESTU_SENS_MEDI_RPOB'
      Size = 30
    end
    object cdsCadEstudanteESTU_SERIEATUAL: TStringField
      FieldName = 'ESTU_SERIEATUAL'
      Size = 30
    end
    object cdsCadEstudanteESTU_SOR_COTOFF: TStringField
      FieldName = 'ESTU_SOR_COTOFF'
      Size = 10
    end
    object cdsCadEstudanteESTU_SOR_DO: TStringField
      FieldName = 'ESTU_SOR_DO'
      Size = 10
    end
    object cdsCadEstudanteESTU_SOR_ELISA: TStringField
      FieldName = 'ESTU_SOR_ELISA'
      Size = 10
    end
    object cdsCadEstudanteESTU_SOR_REALIZ: TStringField
      FieldName = 'ESTU_SOR_REALIZ'
      Size = 30
    end
    object cdsCadEstudanteESTU_TESTERAPIDO: TStringField
      FieldName = 'ESTU_TESTERAPIDO'
      Size = 30
    end
    object cdsCadEstudanteESTU_UF: TStringField
      FieldName = 'ESTU_UF'
      Size = 60
    end
    object cdsCadEstudanteESTU_NASC: TStringField
      FieldName = 'ESTU_NASC'
      EditMask = '!99/99/0000;1;_'
      Size = 30
    end
  end
  object dpsLocEstudante: TDataSetProvider
    DataSet = sdsLocEstudante
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 150
    Top = 93
  end
  object sdsLocEstudante: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ESTU_NUMPRONT, ESTU_NOME, ESTU_IDADE, ESTU_CIDADE, ESTU_E' +
      'SCOLA, ESTU_NOVOCASO'#13#10'FROM ESTUDANTES'#13#10'where ESTU_NUMPRONT  CONT' +
      'AINING  :ESTU_NUMPRONT'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESTU_NUMPRONT'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 44
    Top = 93
  end
  object cdsLocEstudante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocEstudante'
    Left = 262
    Top = 93
    object cdsLocEstudanteESTU_NUMPRONT: TStringField
      FieldName = 'ESTU_NUMPRONT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsLocEstudanteESTU_NOME: TStringField
      FieldName = 'ESTU_NOME'
      Size = 60
    end
    object cdsLocEstudanteESTU_IDADE: TSmallintField
      FieldName = 'ESTU_IDADE'
    end
    object cdsLocEstudanteESTU_CIDADE: TStringField
      FieldName = 'ESTU_CIDADE'
      Size = 60
    end
    object cdsLocEstudanteESTU_ESCOLA: TStringField
      FieldName = 'ESTU_ESCOLA'
      Size = 60
    end
    object cdsLocEstudanteESTU_NOVOCASO: TStringField
      FieldName = 'ESTU_NOVOCASO'
      FixedChar = True
      Size = 10
    end
  end
  object SQLQueryEstudantes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Max(ESTU_NUMPRONT) FROM ESTUDANTES')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 56
    Top = 168
    object SQLQueryEstudantesMAX: TStringField
      FieldName = 'MAX'
      Size = 10
    end
  end
end
