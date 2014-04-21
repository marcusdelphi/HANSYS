unit UfrmCoresPE4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresPE4 = class(TForm)
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
  frmCoresPE4: TfrmCoresPE4;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresPE4.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgPEVerde4.Visible:=true;
   frmFichadeCadastro.imgPEVazio4.Visible:=false;
   frmFichadeCadastro.imgPEAzul4.Visible:=false;
   frmFichadeCadastro.imgPELilas4.Visible:=false;
   frmFichadeCadastro.imgPEVermelho4.Visible:=false;
   frmFichadeCadastro.imgPEVermCruzado4.Visible:=false;
   frmFichadeCadastro.imgPEVermAberto4.Visible:=false;
   frmFichadeCadastro.imgPEPreto4.Visible:=false;
   PE4:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgPEAzul4.Visible:=true;
    frmFichadeCadastro.imgPEVazio4.Visible:=false;
    frmFichadeCadastro.imgPEVerde4.Visible:=false;
    frmFichadeCadastro.imgPELilas4.Visible:=false;
    frmFichadeCadastro.imgPEVermelho4.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto4.Visible:=false;
    frmFichadeCadastro.imgPEPreto4.Visible:=false;
    PE4:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgPELilas4.Visible:=true;
    frmFichadeCadastro.imgPEVazio4.Visible:=false;
    frmFichadeCadastro.imgPEVerde4.Visible:=false;
    frmFichadeCadastro.imgPEAzul4.Visible:=false;
    frmFichadeCadastro.imgPEVermelho4.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto4.Visible:=false;
    frmFichadeCadastro.imgPEPreto4.Visible:=false;
    PE4:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermelho4.Visible:=true;
    frmFichadeCadastro.imgPEVazio4.Visible:=false;
    frmFichadeCadastro.imgPELilas4.Visible:=false;
    frmFichadeCadastro.imgPEVerde4.Visible:=false;
    frmFichadeCadastro.imgPEAzul4.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto4.Visible:=false;
    frmFichadeCadastro.imgPEPreto4.Visible:=false;
    PE4:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermCruzado4.Visible:=true;
    frmFichadeCadastro.imgPEVazio4.Visible:=false;
    frmFichadeCadastro.imgPELilas4.Visible:=false;
    frmFichadeCadastro.imgPEVerde4.Visible:=false;
    frmFichadeCadastro.imgPEAzul4.Visible:=false;
    frmFichadeCadastro.imgPEVermelho4.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto4.Visible:=false;
    frmFichadeCadastro.imgPEPreto4.Visible:=false;
    PE4:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgPEVermAberto4.Visible:=true;
    frmFichadeCadastro.imgPEVazio4.Visible:=false;
    frmFichadeCadastro.imgPELilas4.Visible:=false;
    frmFichadeCadastro.imgPEVerde4.Visible:=false;
    frmFichadeCadastro.imgPEAzul4.Visible:=false;
    frmFichadeCadastro.imgPEVermelho4.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPEPreto4.Visible:=false;
    PE4:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgPEPreto4.Visible:=true;
    frmFichadeCadastro.imgPEVazio4.Visible:=false;
    frmFichadeCadastro.imgPELilas4.Visible:=false;
    frmFichadeCadastro.imgPEVerde4.Visible:=false;
    frmFichadeCadastro.imgPEAzul4.Visible:=false;
    frmFichadeCadastro.imgPEVermelho4.Visible:=false;
    frmFichadeCadastro.imgPEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgPEVermAberto4.Visible:=false;
    PE4:='PRETO';
  end;
end;

end.
