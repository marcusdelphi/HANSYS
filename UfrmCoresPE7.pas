unit UfrmCoresPE7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPE7 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    BitBtn1: TBitBtn;
    RbVerde: TRadioButton;
    RbAzul: TRadioButton;
    RbLilas: TRadioButton;
    RbVermFechado: TRadioButton;
    RbVermCruzado: TRadioButton;
    RbVermAberto: TRadioButton;
    RbPreto: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCoresPE7: TfrmCoresPE7;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPE7.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPEVerde7.Visible:=true;
   frmFichadeCadastro.imgPEVazio7.Visible:=false;
   frmFichadeCadastro.imgPEAzul7.Visible:=false;
   frmFichadeCadastro.imgPELilas7.Visible:=false;
   frmFichadeCadastro.imgPEVermelho7.Visible:=false;
   frmFichadeCadastro.imgPEVermCruzado7.Visible:=false;
   frmFichadeCadastro.imgPEVermAberto7.Visible:=false;
   frmFichadeCadastro.imgPEPreto7.Visible:=false;
   PE7:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPEAzul7.Visible:=true;
    frmFichadeCadastro.imgPEVazio7.Visible:=false;
    frmFichadeCadastro.imgPEVerde7.Visible:=false;
    frmFichadeCadastro.imgPELilas7.Visible:=false;
    frmFichadeCadastro.imgPEVermelho7.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto7.Visible:=false;
    frmFichadeCadastro.imgPEPreto7.Visible:=false;
    PE7:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPELilas7.Visible:=true;
    frmFichadeCadastro.imgPEVazio7.Visible:=false;
    frmFichadeCadastro.imgPEVerde7.Visible:=false;
    frmFichadeCadastro.imgPEAzul7.Visible:=false;
    frmFichadeCadastro.imgPEVermelho7.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto7.Visible:=false;
    frmFichadeCadastro.imgPEPreto7.Visible:=false;
    PE7:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermelho7.Visible:=true;
    frmFichadeCadastro.imgPEVazio7.Visible:=false;
    frmFichadeCadastro.imgPELilas7.Visible:=false;
    frmFichadeCadastro.imgPEVerde7.Visible:=false;
    frmFichadeCadastro.imgPEAzul7.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto7.Visible:=false;
    frmFichadeCadastro.imgPEPreto7.Visible:=false;
    PE7:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermCruzado7.Visible:=true;
    frmFichadeCadastro.imgPEVazio7.Visible:=false;
    frmFichadeCadastro.imgPELilas7.Visible:=false;
    frmFichadeCadastro.imgPEVerde7.Visible:=false;
    frmFichadeCadastro.imgPEAzul7.Visible:=false;
    frmFichadeCadastro.imgPEVermelho7.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto7.Visible:=false;
    frmFichadeCadastro.imgPEPreto7.Visible:=false;
    PE7:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermAberto7.Visible:=true;
    frmFichadeCadastro.imgPEVazio7.Visible:=false;
    frmFichadeCadastro.imgPELilas7.Visible:=false;
    frmFichadeCadastro.imgPEVerde7.Visible:=false;
    frmFichadeCadastro.imgPEAzul7.Visible:=false;
    frmFichadeCadastro.imgPEVermelho7.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPEPreto7.Visible:=false;
    PE7:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPEPreto7.Visible:=true;
    frmFichadeCadastro.imgPEVazio7.Visible:=false;
    frmFichadeCadastro.imgPELilas7.Visible:=false;
    frmFichadeCadastro.imgPEVerde7.Visible:=false;
    frmFichadeCadastro.imgPEAzul7.Visible:=false;
    frmFichadeCadastro.imgPEVermelho7.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto7.Visible:=false;
    PE7:='PRETO';
  end;
end;

end.
