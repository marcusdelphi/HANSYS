unit UfrmCoresMD7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresMD7 = class(TForm)
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
  frmCoresMD7: TfrmCoresMD7;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresMD7.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgDVerde7.Visible:=true;
   frmFichadeCadastro.imgDVazio7.Visible:=false;
   frmFichadeCadastro.imgDAzul7.Visible:=false;
   frmFichadeCadastro.imgDLilas7.Visible:=false;
   frmFichadeCadastro.imgDVermelho7.Visible:=false;
   frmFichadeCadastro.imgDVermCruzado7.Visible:=false;
   frmFichadeCadastro.imgDVermAberto7.Visible:=false;
   frmFichadeCadastro.imgDPreto7.Visible:=false;
   MD7:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgDAzul7.Visible:=true;
    frmFichadeCadastro.imgDVazio7.Visible:=false;
    frmFichadeCadastro.imgDVerde7.Visible:=false;
    frmFichadeCadastro.imgDLilas7.Visible:=false;
    frmFichadeCadastro.imgDVermelho7.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgDVermAberto7.Visible:=false;
    frmFichadeCadastro.imgDPreto7.Visible:=false;
    MD7:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgDLilas7.Visible:=true;
    frmFichadeCadastro.imgDVazio7.Visible:=false;
    frmFichadeCadastro.imgDVerde7.Visible:=false;
    frmFichadeCadastro.imgDAzul7.Visible:=false;
    frmFichadeCadastro.imgDVermelho7.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgDVermAberto7.Visible:=false;
    frmFichadeCadastro.imgDPreto7.Visible:=false;
    MD7:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermelho7.Visible:=true;
    frmFichadeCadastro.imgDVazio7.Visible:=false;
    frmFichadeCadastro.imgDLilas7.Visible:=false;
    frmFichadeCadastro.imgDVerde7.Visible:=false;
    frmFichadeCadastro.imgDAzul7.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgDVermAberto7.Visible:=false;
    frmFichadeCadastro.imgDPreto7.Visible:=false;
    MD7:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermCruzado7.Visible:=true;
    frmFichadeCadastro.imgDVazio7.Visible:=false;
    frmFichadeCadastro.imgDLilas7.Visible:=false;
    frmFichadeCadastro.imgDVerde7.Visible:=false;
    frmFichadeCadastro.imgDAzul7.Visible:=false;
    frmFichadeCadastro.imgDVermelho7.Visible:=false;
    frmFichadeCadastro.imgDVermAberto7.Visible:=false;
    frmFichadeCadastro.imgDPreto7.Visible:=false;
    MD7:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgDVermAberto7.Visible:=true;
    frmFichadeCadastro.imgDVazio7.Visible:=false;
    frmFichadeCadastro.imgDLilas7.Visible:=false;
    frmFichadeCadastro.imgDVerde7.Visible:=false;
    frmFichadeCadastro.imgDAzul7.Visible:=false;
    frmFichadeCadastro.imgDVermelho7.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgDPreto7.Visible:=false;
    MD7:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgDPreto7.Visible:=true;
    frmFichadeCadastro.imgDVazio7.Visible:=false;
    frmFichadeCadastro.imgDLilas7.Visible:=false;
    frmFichadeCadastro.imgDVerde7.Visible:=false;
    frmFichadeCadastro.imgDAzul7.Visible:=false;
    frmFichadeCadastro.imgDVermelho7.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado7.Visible:=false;
    frmFichadeCadastro.imgDVermAberto7.Visible:=false;
    MD7:='PRETO';
  end;
end;
end.
