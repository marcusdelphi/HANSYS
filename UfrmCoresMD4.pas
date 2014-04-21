unit UfrmCoresMD4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresMD4 = class(TForm)
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
  frmCoresMD4: TfrmCoresMD4;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresMD4.BitBtn1Click(Sender: TObject);
begin
if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgDVerde4.Visible:=true;
   frmFichadeCadastro.imgDVazio4.Visible:=false;
   frmFichadeCadastro.imgDAzul4.Visible:=false;
   frmFichadeCadastro.imgDLilas4.Visible:=false;
   frmFichadeCadastro.imgDVermelho4.Visible:=false;
   frmFichadeCadastro.imgDVermCruzado4.Visible:=false;
   frmFichadeCadastro.imgDVermAberto4.Visible:=false;
   frmFichadeCadastro.imgDPreto4.Visible:=false;
   MD4:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgDAzul4.Visible:=true;
    frmFichadeCadastro.imgDVazio4.Visible:=false;
    frmFichadeCadastro.imgDVerde4.Visible:=false;
    frmFichadeCadastro.imgDLilas4.Visible:=false;
    frmFichadeCadastro.imgDVermelho4.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgDVermAberto4.Visible:=false;
    frmFichadeCadastro.imgDPreto4.Visible:=false;
    MD4:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgDLilas4.Visible:=true;
    frmFichadeCadastro.imgDVazio4.Visible:=false;
    frmFichadeCadastro.imgDVerde4.Visible:=false;
    frmFichadeCadastro.imgDAzul4.Visible:=false;
    frmFichadeCadastro.imgDVermelho4.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgDVermAberto4.Visible:=false;
    frmFichadeCadastro.imgDPreto4.Visible:=false;
    MD4:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermelho4.Visible:=true;
    frmFichadeCadastro.imgDVazio4.Visible:=false;
    frmFichadeCadastro.imgDLilas4.Visible:=false;
    frmFichadeCadastro.imgDVerde4.Visible:=false;
    frmFichadeCadastro.imgDAzul4.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgDVermAberto4.Visible:=false;
    frmFichadeCadastro.imgDPreto4.Visible:=false;
    MD4:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgDVermCruzado4.Visible:=true;
    frmFichadeCadastro.imgDVazio4.Visible:=false;
    frmFichadeCadastro.imgDLilas4.Visible:=false;
    frmFichadeCadastro.imgDVerde4.Visible:=false;
    frmFichadeCadastro.imgDAzul4.Visible:=false;
    frmFichadeCadastro.imgDVermelho4.Visible:=false;
    frmFichadeCadastro.imgDVermAberto4.Visible:=false;
    frmFichadeCadastro.imgDPreto4.Visible:=false;
    MD4:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgDVermAberto4.Visible:=true;
    frmFichadeCadastro.imgDVazio4.Visible:=false;
    frmFichadeCadastro.imgDLilas4.Visible:=false;
    frmFichadeCadastro.imgDVerde4.Visible:=false;
    frmFichadeCadastro.imgDAzul4.Visible:=false;
    frmFichadeCadastro.imgDVermelho4.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgDPreto4.Visible:=false;
    MD4:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgDPreto4.Visible:=true;
    frmFichadeCadastro.imgDVazio4.Visible:=false;
    frmFichadeCadastro.imgDLilas4.Visible:=false;
    frmFichadeCadastro.imgDVerde4.Visible:=false;
    frmFichadeCadastro.imgDAzul4.Visible:=false;
    frmFichadeCadastro.imgDVermelho4.Visible:=false;
    frmFichadeCadastro.imgDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgDVermAberto4.Visible:=false;
    MD4:='PRETO';
  end;
end;
end.
