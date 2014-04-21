unit UfrmCoresME4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmCoresME4 = class(TForm)
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
  frmCoresME4: TfrmCoresME4;

implementation

{$R *.dfm}

uses UfrmFichadeCadastro;

procedure TfrmCoresME4.BitBtn1Click(Sender: TObject);
begin

if RbVerde.Checked=true  then
  begin
   frmFichadeCadastro.imgEVerde4.Visible:=true;
   frmFichadeCadastro.imgEVazio4.Visible:=false;
   frmFichadeCadastro.imgEAzul4.Visible:=false;
   frmFichadeCadastro.imgELilas4.Visible:=false;
   frmFichadeCadastro.imgEVermelho4.Visible:=false;
   frmFichadeCadastro.imgEVermCruzado4.Visible:=false;
   frmFichadeCadastro.imgEVermAberto4.Visible:=false;
   frmFichadeCadastro.imgEPreto4.Visible:=false;
   ME4:='VERDE';
  end;
  if RbAzul.Checked=true then
  begin
    frmFichadeCadastro.imgEAzul4.Visible:=true;
    frmFichadeCadastro.imgEVazio4.Visible:=false;
    frmFichadeCadastro.imgEVerde4.Visible:=false;
    frmFichadeCadastro.imgELilas4.Visible:=false;
    frmFichadeCadastro.imgEVermelho4.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgEVermAberto4.Visible:=false;
    frmFichadeCadastro.imgEPreto4.Visible:=false;
    ME4:='AZUL';
  end;
  if RbLilas.Checked=true then
  begin
    frmFichadeCadastro.imgELilas4.Visible:=true;
    frmFichadeCadastro.imgEVazio4.Visible:=false;
    frmFichadeCadastro.imgEVerde4.Visible:=false;
    frmFichadeCadastro.imgEAzul4.Visible:=false;
    frmFichadeCadastro.imgEVermelho4.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgEVermAberto4.Visible:=false;
    frmFichadeCadastro.imgEPreto4.Visible:=false;
    ME4:='LILAS';
  end;
  if RbVermFechado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermelho4.Visible:=true;
    frmFichadeCadastro.imgEVazio4.Visible:=false;
    frmFichadeCadastro.imgELilas4.Visible:=false;
    frmFichadeCadastro.imgEVerde4.Visible:=false;
    frmFichadeCadastro.imgEAzul4.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgEVermAberto4.Visible:=false;
    frmFichadeCadastro.imgEPreto4.Visible:=false;
    ME4:='VERM FECHADO';
  end;
  if RbVermCruzado.Checked=true then
  begin
    frmFichadeCadastro.imgEVermCruzado4.Visible:=true;
    frmFichadeCadastro.imgEVazio4.Visible:=false;
    frmFichadeCadastro.imgELilas4.Visible:=false;
    frmFichadeCadastro.imgEVerde4.Visible:=false;
    frmFichadeCadastro.imgEAzul4.Visible:=false;
    frmFichadeCadastro.imgEVermelho4.Visible:=false;
    frmFichadeCadastro.imgEVermAberto4.Visible:=false;
    frmFichadeCadastro.imgEPreto4.Visible:=false;
    ME4:='VERM CRUZADO';
  end;
  if RbVermAberto.Checked=true then
  begin
    frmFichadeCadastro.imgEVermAberto4.Visible:=true;
    frmFichadeCadastro.imgEVazio4.Visible:=false;
    frmFichadeCadastro.imgELilas4.Visible:=false;
    frmFichadeCadastro.imgEVerde4.Visible:=false;
    frmFichadeCadastro.imgEAzul4.Visible:=false;
    frmFichadeCadastro.imgEVermelho4.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgEPreto4.Visible:=false;
    ME4:='VERM ABERTO';
  end;
  if RbPreto.Checked=true then
  begin
    frmFichadeCadastro.imgEPreto4.Visible:=true;
    frmFichadeCadastro.imgEVazio4.Visible:=false;
    frmFichadeCadastro.imgELilas4.Visible:=false;
    frmFichadeCadastro.imgEVerde4.Visible:=false;
    frmFichadeCadastro.imgEAzul4.Visible:=false;
    frmFichadeCadastro.imgEVermelho4.Visible:=false;
    frmFichadeCadastro.imgEVermCruzado4.Visible:=false;
    frmFichadeCadastro.imgEVermAberto4.Visible:=false;
    ME4:='PRETO';
  end;
end;

end.
