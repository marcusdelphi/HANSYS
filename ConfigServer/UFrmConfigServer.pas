unit UFrmConfigServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,iniFiles,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmConfigServer = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    edtIp: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigServer: TfrmConfigServer;
  IP: String;
  ArquIni:Tinifile;
implementation

{$R *.dfm}

procedure TfrmConfigServer.BitBtn1Click(Sender: TObject);
begin
  IP:= edtIp.Text;
  try
    ArquIni:=TInifile.Create('C:\HANSYS\Win32\Debug\CONF.ini');
    //arquini. writestring ('clear') ;
    arquini.WriteString( 'DADOS' , 'DATABASE' ,IP+'/3050:C:\HANSYS\BD\BASE.FDB');
    arquini.WriteString( 'DADOS' ,'USERNAME','SYSDBA');
    arquini.WriteString( 'DADOS' ,'PASSWORD','masterkey');
  finally
    arquini.Free;
    MessageDlg('Gravado Com Sucesso!', mtconfirmation,[mbOk],0);
  end;
  end;
end.
