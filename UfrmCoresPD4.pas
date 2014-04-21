unit UfrmCoresPD4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPD4 = class(TForm)
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
  frmCoresPD4: TfrmCoresPD4;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPD4.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPDVerde4.Visible:=true;
   frmFichadeCadastro.imgPDVazio4.Visible:=false;
   frmFichadeCadastro.imgPDAzul4.Visible:=false;
   frmFichadeCadastro.imgPDLilas4.Visible:=false;
   frmFichadeCadastro.imgPDVermelho4.Visible:=false;
   frmFichadeCadastro.imgPDVermCruzado4.Visible:=false;
   frmFichadeCadastro.imgPDVermAberto4.Visible:=false;
   frmFichadeCadastro.imgPDPreto4.Visible:=false;
   PD4:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPDAzul4.Visible:=true;
    frmFichadeCadastro.imgPDVazio4.Visible:=false;
    frmFichadeCadastro.imgPDVerde4.Visible:=false;
    frmFichadeCadastro.imgPDLilas4.Visible:=false;
    frmFichadeCadastro.imgPDVermelho4.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto4.Visible:=false;
    frmFichadeCadastro.imgPDPreto4.Visible:=false;
    PD4:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPDLilas4.Visible:=true;
    frmFichadeCadastro.imgPDVazio4.Visible:=false;
    frmFichadeCadastro.imgPDVerde4.Visible:=false;
    frmFichadeCadastro.imgPDAzul4.Visible:=false;
    frmFichadeCadastro.imgPDVermelho4.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto4.Visible:=false;
    frmFichadeCadastro.imgPDPreto4.Visible:=false;
    PD4:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermelho4.Visible:=true;
    frmFichadeCadastro.imgPDVazio4.Visible:=false;
    frmFichadeCadastro.imgPDLilas4.Visible:=false;
    frmFichadeCadastro.imgPDVerde4.Visible:=false;
    frmFichadeCadastro.imgPDAzul4.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto4.Visible:=false;
    frmFichadeCadastro.imgPDPreto4.Visible:=false;
    PD4:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermCruzado4.Visible:=true;
    frmFichadeCadastro.imgPDVazio4.Visible:=false;
    frmFichadeCadastro.imgPDLilas4.Visible:=false;
    frmFichadeCadastro.imgPDVerde4.Visible:=false;
    frmFichadeCadastro.imgPDAzul4.Visible:=false;
    frmFichadeCadastro.imgPDVermelho4.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto4.Visible:=false;
    frmFichadeCadastro.imgPDPreto4.Visible:=false;
    PD4:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPDVermAberto4.Visible:=true;
    frmFichadeCadastro.imgPDVazio4.Visible:=false;
    frmFichadeCadastro.imgPDLilas4.Visible:=false;
    frmFichadeCadastro.imgPDVerde4.Visible:=false;
    frmFichadeCadastro.imgPDAzul4.Visible:=false;
    frmFichadeCadastro.imgPDVermelho4.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPDPreto4.Visible:=false;
    PD4:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPDPreto4.Visible:=true;
    frmFichadeCadastro.imgPDVazio4.Visible:=false;
    frmFichadeCadastro.imgPDLilas4.Visible:=false;
    frmFichadeCadastro.imgPDVerde4.Visible:=false;
    frmFichadeCadastro.imgPDAzul4.Visible:=false;
    frmFichadeCadastro.imgPDVermelho4.Visible:=false;
    frmFichadeCadastro.imgPDVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPDVermAberto4.Visible:=false;
    PD4:='PRETO';
  end;
end;

end.
