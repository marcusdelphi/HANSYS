unit UfrmCoresME7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresME7 = class(TForm)
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
  frmCoresME7: TfrmCoresME7;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresME7.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgEVerde7.Visible:=true;
   frmFichadeCadastro.imgEVazio7.Visible:=false;
   frmFichadeCadastro.imgEAzul7.Visible:=false;
   frmFichadeCadastro.imgELilas7.Visible:=false;
   frmFichadeCadastro.imgEVermelho7.Visible:=false;
   frmFichadeCadastro.imgEVermCruzado7.Visible:=false;
   frmFichadeCadastro.imgEVermAberto7.Visible:=false;
   frmFichadeCadastro.imgEPreto7.Visible:=false;
   ME7:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgEAzul7.Visible:=true;
    frmFichadeCadastro.imgEVazio7.Visible:=false;
    frmFichadeCadastro.imgEVerde7.Visible:=false;
    frmFichadeCadastro.imgELilas7.Visible:=false;
    frmFichadeCadastro.imgEVermelho7.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgEVermAberto7.Visible:=false;
    frmFichadeCadastro.imgEPreto7.Visible:=false;
    ME7:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgELilas7.Visible:=true;
    frmFichadeCadastro.imgEVazio7.Visible:=false;
    frmFichadeCadastro.imgEVerde7.Visible:=false;
    frmFichadeCadastro.imgEAzul7.Visible:=false;
    frmFichadeCadastro.imgEVermelho7.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgEVermAberto7.Visible:=false;
    frmFichadeCadastro.imgEPreto7.Visible:=false;
    ME7:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermelho7.Visible:=true;
    frmFichadeCadastro.imgEVazio7.Visible:=false;
    frmFichadeCadastro.imgELilas7.Visible:=false;
    frmFichadeCadastro.imgEVerde7.Visible:=false;
    frmFichadeCadastro.imgEAzul7.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgEVermAberto7.Visible:=false;
    frmFichadeCadastro.imgEPreto7.Visible:=false;
    ME7:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermCruzado7.Visible:=true;
    frmFichadeCadastro.imgEVazio7.Visible:=false;
    frmFichadeCadastro.imgELilas7.Visible:=false;
    frmFichadeCadastro.imgEVerde7.Visible:=false;
    frmFichadeCadastro.imgEAzul7.Visible:=false;
    frmFichadeCadastro.imgEVermelho7.Visible:=false;
    frmFichadeCadastro.imgEVermAberto7.Visible:=false;
    frmFichadeCadastro.imgEPreto7.Visible:=false;
    ME7:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgEVermAberto7.Visible:=true;
    frmFichadeCadastro.imgEVazio7.Visible:=false;
    frmFichadeCadastro.imgELilas7.Visible:=false;
    frmFichadeCadastro.imgEVerde7.Visible:=false;
    frmFichadeCadastro.imgEAzul7.Visible:=false;
    frmFichadeCadastro.imgEVermelho7.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgEPreto7.Visible:=false;
    ME7:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgEPreto7.Visible:=true;
    frmFichadeCadastro.imgEVazio7.Visible:=false;
    frmFichadeCadastro.imgELilas7.Visible:=false;
    frmFichadeCadastro.imgEVerde7.Visible:=false;
    frmFichadeCadastro.imgEAzul7.Visible:=false;
    frmFichadeCadastro.imgEVermelho7.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgEVermAberto7.Visible:=false;
    ME7:='PRETO';
  end;
end;

end.
