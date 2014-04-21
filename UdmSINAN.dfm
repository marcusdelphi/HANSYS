object dmSINAN: TdmSINAN
  OldCreateOrder = False
  Height = 168
  Width = 269
  object cdsLocSINAN: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocSINAN'
    Left = 208
    Top = 106
    object cdsLocSINANSINAN_ID: TSmallintField
      FieldName = 'SINAN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocSINANSINAN_NOM_PACIENT: TStringField
      FieldName = 'SINAN_NOM_PACIENT'
      Size = 60
    end
    object cdsLocSINANSINAN_DT_NASC: TStringField
      FieldName = 'SINAN_DT_NASC'
      Size = 30
    end
    object cdsLocSINANSINAN_SEXO: TStringField
      FieldName = 'SINAN_SEXO'
      FixedChar = True
      Size = 10
    end
    object cdsLocSINANSINAN_CORPELE: TStringField
      FieldName = 'SINAN_CORPELE'
      Size = 30
    end
    object cdsLocSINANSINAN_MAE: TStringField
      FieldName = 'SINAN_MAE'
      Size = 60
    end
    object cdsLocSINANSINAN_BAIRRO: TStringField
      FieldName = 'SINAN_BAIRRO'
      Size = 60
    end
    object cdsLocSINANSINAN_ENDERECO: TStringField
      FieldName = 'SINAN_ENDERECO'
      Size = 60
    end
    object cdsLocSINANSINAN_NUMERO: TStringField
      FieldName = 'SINAN_NUMERO'
      Size = 30
    end
    object cdsLocSINANSINAN_REFEREN: TStringField
      FieldName = 'SINAN_REFEREN'
      Size = 60
    end
    object cdsLocSINANSINAN_TELEFON: TStringField
      FieldName = 'SINAN_TELEFON'
      Size = 30
    end
    object cdsLocSINANSINAN_NUM_LESOES: TIntegerField
      FieldName = 'SINAN_NUM_LESOES'
    end
    object cdsLocSINANSINAN_FORMCLIN: TStringField
      FieldName = 'SINAN_FORMCLIN'
      Size = 30
    end
    object cdsLocSINANSINAN_CLASSOPERA: TStringField
      FieldName = 'SINAN_CLASSOPERA'
      Size = 30
    end
    object cdsLocSINANSINAN_BACILOSCOP: TStringField
      FieldName = 'SINAN_BACILOSCOP'
      Size = 30
    end
    object cdsLocSINANSINAN_ESQUEMA_TRAT: TStringField
      FieldName = 'SINAN_ESQUEMA_TRAT'
      Size = 30
    end
    object cdsLocSINANSINAN_NERVOSAFET: TIntegerField
      FieldName = 'SINAN_NERVOSAFET'
    end
    object cdsLocSINANSINAN_CEP: TStringField
      FieldName = 'SINAN_CEP'
      Size = 30
    end
    object cdsLocSINANSINAN_DT_DIAG: TStringField
      FieldName = 'SINAN_DT_DIAG'
      Size = 30
    end
  end
  object dpsLocSINAN: TDataSetProvider
    DataSet = sdsLocSINAN
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 120
    Top = 105
  end
  object sdsLocSINAN: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'Select* FROM SINAN'#13#10'where SINAN_NOM_PACIENT CONTAINING :SINAN_NO' +
      'M_PACIENT'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'SINAN_NOM_PACIENT'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 24
    Top = 106
  end
end
