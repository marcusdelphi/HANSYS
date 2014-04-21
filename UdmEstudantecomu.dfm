object dmEstudantecomu: TdmEstudantecomu
  OldCreateOrder = False
  Height = 226
  Width = 422
  object cdsLocEstudanteComu: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocEstudanteComu'
    Left = 302
    Top = 93
    object cdsLocEstudanteComuESTCOMU_COMUNUMPRONT: TStringField
      FieldName = 'ESTCOMU_COMUNUMPRONT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsLocEstudanteComuESTCOMU_NOME: TStringField
      FieldName = 'ESTCOMU_NOME'
      Size = 60
    end
    object cdsLocEstudanteComuESTCOMU_IDADE: TSmallintField
      FieldName = 'ESTCOMU_IDADE'
    end
    object cdsLocEstudanteComuESTCOMU_CASO_NOVO_OPC: TStringField
      FieldName = 'ESTCOMU_CASO_NOVO_OPC'
      FixedChar = True
      Size = 10
    end
    object cdsLocEstudanteComuESTCOMU_TEL: TStringField
      FieldName = 'ESTCOMU_TEL'
      Size = 30
    end
    object cdsLocEstudanteComuESTCOMU_ESTNUMPRONT: TStringField
      FieldName = 'ESTCOMU_ESTNUMPRONT'
      Required = True
      Size = 10
    end
  end
  object cdsCadEstudanteComu: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadEstudanteComu'
    Left = 302
    Top = 21
    object cdsCadEstudanteComuESTCOMU_CASO_NOVO_NUM: TStringField
      FieldName = 'ESTCOMU_CASO_NOVO_NUM'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_CASO_NOVO_OPC: TStringField
      FieldName = 'ESTCOMU_CASO_NOVO_OPC'
      FixedChar = True
      Size = 10
    end
    object cdsCadEstudanteComuESTCOMU_CICA_BCG_DIAM: TSmallintField
      FieldName = 'ESTCOMU_CICA_BCG_DIAM'
    end
    object cdsCadEstudanteComuESTCOMU_CICA_BCG_NUM: TSmallintField
      FieldName = 'ESTCOMU_CICA_BCG_NUM'
    end
    object cdsCadEstudanteComuESTCOMU_COMUNUMPRONT: TStringField
      FieldName = 'ESTCOMU_COMUNUMPRONT'
      Required = True
      Size = 10
    end
    object cdsCadEstudanteComuESTCOMU_DATACAD: TStringField
      FieldName = 'ESTCOMU_DATACAD'
      EditMask = '!99/99/0000;1;_'
      Size = 25
    end
    object cdsCadEstudanteComuESTCOMU_DIAGN_MOLE: TStringField
      FieldName = 'ESTCOMU_DIAGN_MOLE'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_END: TStringField
      FieldName = 'ESTCOMU_END'
      Size = 60
    end
    object cdsCadEstudanteComuESTCOMU_ESTNUMPRONT: TStringField
      FieldName = 'ESTCOMU_ESTNUMPRONT'
      Required = True
      Size = 10
    end
    object cdsCadEstudanteComuESTCOMU_FORMA_CLIN: TStringField
      FieldName = 'ESTCOMU_FORMA_CLIN'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_GEN: TStringField
      FieldName = 'ESTCOMU_GEN'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_GRAU_PAREN: TStringField
      FieldName = 'ESTCOMU_GRAU_PAREN'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_IDADE: TSmallintField
      FieldName = 'ESTCOMU_IDADE'
    end
    object cdsCadEstudanteComuESTCOMU_NASC: TStringField
      FieldName = 'ESTCOMU_NASC'
      EditMask = '!99/99/0000;1;_'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_NOME: TStringField
      FieldName = 'ESTCOMU_NOME'
      Size = 60
    end
    object cdsCadEstudanteComuESTCOMU_NUMPRONTALT: TStringField
      FieldName = 'ESTCOMU_NUMPRONTALT'
      Required = True
      Size = 10
    end
    object cdsCadEstudanteComuESTCOMU_OBS: TStringField
      FieldName = 'ESTCOMU_OBS'
      Size = 60
    end
    object cdsCadEstudanteComuESTCOMU_REF: TStringField
      FieldName = 'ESTCOMU_REF'
      Size = 60
    end
    object cdsCadEstudanteComuESTCOMU_PERI_CONV: TStringField
      FieldName = 'ESTCOMU_PERI_CONV'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_SOR_COTOFF: TStringField
      FieldName = 'ESTCOMU_SOR_COTOFF'
      Size = 10
    end
    object cdsCadEstudanteComuESTCOMU_SOR_DATA: TStringField
      FieldName = 'ESTCOMU_SOR_DATA'
      EditMask = '!99/99/0000;1;_'
      Size = 25
    end
    object cdsCadEstudanteComuESTCOMU_SOR_DO: TStringField
      FieldName = 'ESTCOMU_SOR_DO'
      Size = 10
    end
    object cdsCadEstudanteComuESTCOMU_SOR_ELISA: TStringField
      FieldName = 'ESTCOMU_SOR_ELISA'
      Size = 10
    end
    object cdsCadEstudanteComuESTCOMU_SOR_LOCAL: TStringField
      FieldName = 'ESTCOMU_SOR_LOCAL'
      Size = 60
    end
    object cdsCadEstudanteComuESTCOMU_TEL: TStringField
      FieldName = 'ESTCOMU_TEL'
      EditMask = '!\(999\)0000-0000;1;_'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_SOR_TECN_RESP: TStringField
      FieldName = 'ESTCOMU_SOR_TECN_RESP'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_TESTERAPIDO: TStringField
      FieldName = 'ESTCOMU_TESTERAPIDO'
      Size = 30
    end
    object cdsCadEstudanteComuESTCOMU_TIPO_CONV: TStringField
      FieldName = 'ESTCOMU_TIPO_CONV'
      Size = 30
    end
  end
  object dpsLocEstudanteComu: TDataSetProvider
    DataSet = sdsLocEstudanteComu
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 176
    Top = 93
  end
  object dpsCadEstudanteComu: TDataSetProvider
    DataSet = sdsCadEstudanteComu
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 176
    Top = 21
  end
  object sdsLocEstudanteComu: TSQLDataSet
    SchemaName = 'sysdba'
    Active = True
    CommandText = 
      'SELECT ESTCOMU_COMUNUMPRONT, ESTCOMU_NOME, ESTCOMU_IDADE, ESTCOM' +
      'U_CASO_NOVO_OPC, ESTCOMU_TEL, ESTCOMU_ESTNUMPRONT'#13#10'FROM ESTUDANT' +
      'E_COMU'#13#10'where ESTCOMU_ESTNUMPRONT CONTAINING :ESTCOMU_ESTNUMPRON' +
      'T'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESTCOMU_ESTNUMPRONT'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 44
    Top = 93
  end
  object sdsCadEstudanteComu: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ESTCOMU_CASO_NOVO_NUM, ESTCOMU_CASO_NOVO_OPC, ESTCOMU_CIC' +
      'A_BCG_DIAM, ESTCOMU_CICA_BCG_NUM, ESTCOMU_COMUNUMPRONT, ESTCOMU_' +
      'DATACAD, ESTCOMU_DIAGN_MOLE,'#13#10'             ESTCOMU_END, ESTCOMU_' +
      'ESTNUMPRONT, ESTCOMU_FORMA_CLIN, ESTCOMU_GEN, ESTCOMU_GRAU_PAREN' +
      ', ESTCOMU_IDADE, ESTCOMU_NASC, ESTCOMU_NOME, ESTCOMU_NUMPRONTALT' +
      ', ESTCOMU_OBS, '#13#10'             ESTCOMU_REF,ESTCOMU_PERI_CONV, EST' +
      'COMU_SOR_COTOFF, ESTCOMU_SOR_DATA, ESTCOMU_SOR_DO, ESTCOMU_SOR_E' +
      'LISA, ESTCOMU_SOR_LOCAL, ESTCOMU_TEL, ESTCOMU_SOR_TECN_RESP, '#13#10' ' +
      '            ESTCOMU_TESTERAPIDO, ESTCOMU_TIPO_CONV'#13#10#13#10'FROM ESTUD' +
      'ANTE_COMU'#13#10'where  ESTCOMU_COMUNUMPRONT = :ESTCOMU_COMUNUMPRONT'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESTCOMU_COMUNUMPRONT'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 44
    Top = 21
    object sdsCadEstudanteComuESTCOMU_CASO_NOVO_NUM: TStringField
      FieldName = 'ESTCOMU_CASO_NOVO_NUM'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_CASO_NOVO_OPC: TStringField
      FieldName = 'ESTCOMU_CASO_NOVO_OPC'
      FixedChar = True
      Size = 10
    end
    object sdsCadEstudanteComuESTCOMU_CICA_BCG_DIAM: TSmallintField
      FieldName = 'ESTCOMU_CICA_BCG_DIAM'
    end
    object sdsCadEstudanteComuESTCOMU_CICA_BCG_NUM: TSmallintField
      FieldName = 'ESTCOMU_CICA_BCG_NUM'
    end
    object sdsCadEstudanteComuESTCOMU_COMUNUMPRONT: TStringField
      FieldName = 'ESTCOMU_COMUNUMPRONT'
      Required = True
      Size = 10
    end
    object sdsCadEstudanteComuESTCOMU_DATACAD: TStringField
      FieldName = 'ESTCOMU_DATACAD'
      Size = 25
    end
    object sdsCadEstudanteComuESTCOMU_DIAGN_MOLE: TStringField
      FieldName = 'ESTCOMU_DIAGN_MOLE'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_END: TStringField
      FieldName = 'ESTCOMU_END'
      Size = 60
    end
    object sdsCadEstudanteComuESTCOMU_ESTNUMPRONT: TStringField
      FieldName = 'ESTCOMU_ESTNUMPRONT'
      Required = True
      Size = 10
    end
    object sdsCadEstudanteComuESTCOMU_FORMA_CLIN: TStringField
      FieldName = 'ESTCOMU_FORMA_CLIN'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_GEN: TStringField
      FieldName = 'ESTCOMU_GEN'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_GRAU_PAREN: TStringField
      FieldName = 'ESTCOMU_GRAU_PAREN'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_IDADE: TSmallintField
      FieldName = 'ESTCOMU_IDADE'
    end
    object sdsCadEstudanteComuESTCOMU_NASC: TStringField
      FieldName = 'ESTCOMU_NASC'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_NOME: TStringField
      FieldName = 'ESTCOMU_NOME'
      Size = 60
    end
    object sdsCadEstudanteComuESTCOMU_NUMPRONTALT: TStringField
      FieldName = 'ESTCOMU_NUMPRONTALT'
      Required = True
      Size = 10
    end
    object sdsCadEstudanteComuESTCOMU_OBS: TStringField
      FieldName = 'ESTCOMU_OBS'
      Size = 60
    end
    object sdsCadEstudanteComuESTCOMU_REF: TStringField
      FieldName = 'ESTCOMU_REF'
      Size = 60
    end
    object sdsCadEstudanteComuESTCOMU_PERI_CONV: TStringField
      FieldName = 'ESTCOMU_PERI_CONV'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_SOR_COTOFF: TStringField
      FieldName = 'ESTCOMU_SOR_COTOFF'
      Size = 10
    end
    object sdsCadEstudanteComuESTCOMU_SOR_DATA: TStringField
      FieldName = 'ESTCOMU_SOR_DATA'
      Size = 25
    end
    object sdsCadEstudanteComuESTCOMU_SOR_DO: TStringField
      FieldName = 'ESTCOMU_SOR_DO'
      Size = 10
    end
    object sdsCadEstudanteComuESTCOMU_SOR_ELISA: TStringField
      FieldName = 'ESTCOMU_SOR_ELISA'
      Size = 10
    end
    object sdsCadEstudanteComuESTCOMU_SOR_LOCAL: TStringField
      FieldName = 'ESTCOMU_SOR_LOCAL'
      Size = 60
    end
    object sdsCadEstudanteComuESTCOMU_TEL: TStringField
      FieldName = 'ESTCOMU_TEL'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_SOR_TECN_RESP: TStringField
      FieldName = 'ESTCOMU_SOR_TECN_RESP'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_TESTERAPIDO: TStringField
      FieldName = 'ESTCOMU_TESTERAPIDO'
      Size = 30
    end
    object sdsCadEstudanteComuESTCOMU_TIPO_CONV: TStringField
      FieldName = 'ESTCOMU_TIPO_CONV'
      Size = 30
    end
  end
  object SQLQueryEstudanteComu: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Max(ESTCOMU_COMUNUMPRONT) FROM ESTUDANTE_COMU')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 68
    Top = 159
    object SQLQueryEstudanteComuMAX: TStringField
      FieldName = 'MAX'
      Size = 10
    end
  end
  object SQLQueryEstudantes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select Max(ESTU_NUMPRONT) FROM ESTUDANTES')
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 224
    Top = 152
    object SQLQueryEstudantesMAX: TStringField
      FieldName = 'MAX'
      Size = 10
    end
  end
end
