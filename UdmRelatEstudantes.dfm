object dmRelatEstudantes: TdmRelatEstudantes
  OldCreateOrder = False
  Height = 370
  Width = 636
  object dpsRelatEstuCidade: TDataSetProvider
    DataSet = sdsRelatEstuCidade
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 158
    Top = 45
  end
  object sdsRelatEstuCidade: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT ESTU_NUMPRONT, ESTU_NOME, ESTU_END, ESTU_BAIRRO, ESTU_CID' +
      'ADE, ESTU_UF, ESTU_FONE_FIXO, ESTU_CEL, ESTU_ESCOLA, ESTU_NOVOCA' +
      'SO'#13#10'FROM ESTUDANTES'#13#10'WHERE ESTU_CIDADE CONTAINING :ESTU_CIDADE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ESTU_CIDADE'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SqlConPrincipal
    Left = 52
    Top = 45
  end
  object cdsRelatEstuCidade: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsRelatEstuCidade'
    Left = 270
    Top = 45
    object cdsRelatEstuCidadeESTU_NUMPRONT: TStringField
      FieldName = 'ESTU_NUMPRONT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsRelatEstuCidadeESTU_NOME: TStringField
      FieldName = 'ESTU_NOME'
      Size = 60
    end
    object cdsRelatEstuCidadeESTU_END: TStringField
      FieldName = 'ESTU_END'
      Size = 60
    end
    object cdsRelatEstuCidadeESTU_BAIRRO: TStringField
      FieldName = 'ESTU_BAIRRO'
      Size = 60
    end
    object cdsRelatEstuCidadeESTU_CIDADE: TStringField
      FieldName = 'ESTU_CIDADE'
      Size = 60
    end
    object cdsRelatEstuCidadeESTU_UF: TStringField
      FieldName = 'ESTU_UF'
      Size = 60
    end
    object cdsRelatEstuCidadeESTU_FONE_FIXO: TStringField
      FieldName = 'ESTU_FONE_FIXO'
      Size = 30
    end
    object cdsRelatEstuCidadeESTU_CEL: TStringField
      FieldName = 'ESTU_CEL'
      Size = 30
    end
    object cdsRelatEstuCidadeESTU_ESCOLA: TStringField
      FieldName = 'ESTU_ESCOLA'
      Size = 60
    end
    object cdsRelatEstuCidadeESTU_NOVOCASO: TStringField
      FieldName = 'ESTU_NOVOCASO'
      FixedChar = True
      Size = 10
    end
  end
end
