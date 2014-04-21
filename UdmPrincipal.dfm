object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Height = 308
  Width = 333
  object SqlConPrincipal: TSQLConnection
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=16.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'ErrorResourceFile='
      'ServerCharSet='
      'drivername=Firebird'
      'rolename=RoleName'
      'user_name=sysdba'
      'password=masterkey'
      'sqldialect=3'
      'localecode=0000'
      'blobsize=-1'
      'commitretain=False'
      'waitonlocks=True'
      'isolationlevel=ReadCommitted'
      'trim char=False'
      
        'ConnectionString=DriverUnit=Data.DBXFirebird,DriverPackageLoader' +
        '=TDBXDynalinkDriverLoader,DbxCommonDriver160.bpl,DriverAssemblyL' +
        'oader=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data.DbxComm' +
        'onDriver,Version=16.0.0.0,Culture=neutral,PublicKeyToken=91d62eb' +
        'b5b0d1b1b,MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFacto' +
        'ry,DbxFirebirdDriver160.bpl,MetaDataAssemblyLoader=Borland.Data.' +
        'TDBXFirebirdMetaDataCommandFactory,Borland.Data.DbxFirebirdDrive' +
        'r,Version=16.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b' +
        '1b,GetDriverFunc=getSQLDriverINTERBASE,LibraryName=dbxfb.dll,Lib' +
        'raryNameOsx=libsqlfb.dylib,VendorLib=fbclient.dll,VendorLibWin64' +
        '=fbclient.dll,VendorLibOsx=/Library/Frameworks/Firebird.framewor' +
        'k/Firebird,Role=RoleName,MaxBlobSize=-1,TrimChar=False,ErrorReso' +
        'urceFile=,ServerCharSet=,drivername=Firebird,Database=192.168.1.' +
        '4:c:\HANSYS\BD\BASE.FDB,rolename=RoleName,user_name=sysdba,passw' +
        'ord=masterkey,sqldialect=3,localecode=0000,blobsize=-1,commitret' +
        'ain=False,waitonlocks=True,isolationlevel=ReadCommitted,trim cha' +
        'r=False,ConnectionString=DriverUnit=Data.DBXFirebird,DriverPacka' +
        'geLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.bpl,DriverA' +
        'ssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data' +
        '.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicKeyToken' +
        '=91d62ebb5b0d1b1b,MetaDataPackageLoader=TDBXFirebirdMetaDataComm' +
        'andFactory,DbxFirebirdDriver160.bpl,MetaDataAssemblyLoader=Borla' +
        'nd.Data.TDBXFirebirdMetaDataCommandFactory,Borland.Data.DbxFireb' +
        'irdDriver,Version=16.0.0.0,Culture=neutral,PublicKeyToken=91d62e' +
        'bb5b0d1b1b,GetDriverFunc=getSQLDriverINTERBASE,LibraryName=dbxfb' +
        '.dll,LibraryNameOsx=libsqlfb.dylib,VendorLib=fbclient.dll,Vendor' +
        'LibWin64=fbclient.dll,VendorLibOsx=/Library/Frameworks/Firebird.' +
        'framework/Firebird,Role=RoleName,MaxBlobSize=-1,TrimChar=False,E' +
        'rrorResourceFile=,ServerCharSet=,drivername=Firebird,Database=19' +
        '2.168.1.4:c:\HANSYS\BD\BASE.FDB,rolename=RoleName,user_name=sysd' +
        'ba,password=masterkey,sqldialect=3,localecode=0000,blobsize=-1,c' +
        'ommitretain=False,waitonlocks=True,isolationlevel=ReadCommitted,' +
        'trim char=False'
      'Database=LOCALHOST/3050:c:\HANSYS\BD\BASE.FDB')
    VendorLib = 'fbclient.dll'
    BeforeConnect = SqlConPrincipalBeforeConnect
    Left = 50
    Top = 16
  end
  object sdsCadUsuario: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT USUA_ID, USUA_NOME, USUA_SENHA'#13#10#13#10'FROM USUARIOS'#13#10'where US' +
      'UA_ID=:USUA_ID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUA_ID'
        ParamType = ptInput
      end>
    SQLConnection = SqlConPrincipal
    Left = 46
    Top = 85
    object sdsCadUsuarioUSUA_ID: TIntegerField
      FieldName = 'USUA_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object sdsCadUsuarioUSUA_NOME: TStringField
      FieldName = 'USUA_NOME'
      Size = 60
    end
    object sdsCadUsuarioUSUA_SENHA: TStringField
      FieldName = 'USUA_SENHA'
      Size = 10
    end
  end
  object dpsCadUsuario: TDataSetProvider
    DataSet = sdsCadUsuario
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 152
    Top = 85
  end
  object cdsCadUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsCadUsuario'
    Left = 264
    Top = 85
    object cdsCadUsuarioUSUA_ID: TIntegerField
      FieldName = 'USUA_ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsCadUsuarioUSUA_NOME: TStringField
      FieldName = 'USUA_NOME'
      Size = 60
    end
    object cdsCadUsuarioUSUA_SENHA: TStringField
      FieldName = 'USUA_SENHA'
      Size = 10
    end
  end
  object sdsLocUsuario: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT USUA_ID, USUA_NOME, USUA_SENHA'#13#10#13#10'FROM USUARIOS'#13#10'where US' +
      'UA_NOME  CONTAINING :USUA_NOME'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUA_NOME'
        ParamType = ptInput
      end>
    SQLConnection = SqlConPrincipal
    Left = 41
    Top = 157
  end
  object dspLocUsuario: TDataSetProvider
    DataSet = sdsLocUsuario
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 147
    Top = 157
  end
  object cdsLocUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLocUsuario'
    Left = 259
    Top = 157
    object cdsLocUsuarioUSUA_ID: TIntegerField
      FieldName = 'USUA_ID'
      Required = True
    end
    object cdsLocUsuarioUSUA_NOME: TStringField
      FieldName = 'USUA_NOME'
      Size = 60
    end
    object cdsLocUsuarioUSUA_SENHA: TStringField
      FieldName = 'USUA_SENHA'
      Size = 10
    end
  end
  object sdsLogin: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT USUA_ID, USUA_NOME, USUA_SENHA'#13#10'FROM USUARIOS'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SqlConPrincipal
    Left = 38
    Top = 237
    object sdsLoginUSUA_ID: TIntegerField
      FieldName = 'USUA_ID'
      Required = True
    end
    object sdsLoginUSUA_NOME: TStringField
      FieldName = 'USUA_NOME'
      Size = 60
    end
    object sdsLoginUSUA_SENHA: TStringField
      FieldName = 'USUA_SENHA'
      Size = 10
    end
  end
  object dpsLogin: TDataSetProvider
    DataSet = sdsLogin
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 144
    Top = 237
  end
  object cdsLogin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLogin'
    Left = 256
    Top = 237
    object cdsLoginUSUA_ID: TIntegerField
      FieldName = 'USUA_ID'
      Required = True
    end
    object cdsLoginUSUA_NOME: TStringField
      FieldName = 'USUA_NOME'
      Size = 60
    end
    object cdsLoginUSUA_SENHA: TStringField
      FieldName = 'USUA_SENHA'
      Size = 10
    end
  end
end
