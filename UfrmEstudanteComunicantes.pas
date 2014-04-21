unit UfrmEstudanteComunicantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Imaging.pngimage, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEstudanteComu = class(TForm)
    ImgListEstudanteCOMU: TImageList;
    dsPesqComuEst: TDataSource;
    dsComuEst: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    Label241: TLabel;
    Label7: TLabel;
    Label80: TLabel;
    Label8: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label84: TLabel;
    Label83: TLabel;
    Label85: TLabel;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    btnNovo: TToolButton;
    ToolButton3: TToolButton;
    btnCancelar: TToolButton;
    ToolButton5: TToolButton;
    btnExcluir: TToolButton;
    ToolButton7: TToolButton;
    btnEditar: TToolButton;
    ToolButton9: TToolButton;
    btnSalvar: TToolButton;
    ToolButton11: TToolButton;
    btnPesquisar: TToolButton;
    ToolButton15: TToolButton;
    btnSair: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit24: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup36: TDBRadioGroup;
    DBRadioGroup40: TDBRadioGroup;
    DBRadioGroup82: TDBRadioGroup;
    DBRadioGroup78: TDBRadioGroup;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBComboBox5: TDBComboBox;
    Label14: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstudanteComu: TfrmEstudanteComu;
  cont:integer;
implementation

{$R *.dfm}

uses UdmEstudantecomu, UfrmFichaEstudantes, UdmFichaEstudante;

procedure TfrmEstudanteComu.btnNovoClick(Sender: TObject);

begin
  if MessageDlg('Deseja lança novo Comunicante?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      dmEstudanteComu.cdsCadEstudanteComu.Refresh;
      dmEstudanteComu.cdsCadEstudanteComu.Append;
      btnSalvar.Enabled:=True;
      btnEditar.Enabled:=False;
      btnCancelar.Enabled:=True;
      btnExcluir.Enabled:=False;
      btnNovo.Enabled:=False;
      btnPesquisar.Enabled:=False;
      btnsair.Enabled:=False;
      dmEstudanteComu.cdsCadEstudanteComuESTCOMU_DATACAD.Value:=FormatDatetime('dd"/"mm"/"yyyy',now);
      //Gerar o Código do comunicante do Estudante
        case Cont of
        0:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'A';
        1:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'B';
        2:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'C';
        3:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'D';
        4:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'E';
        5:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'F';
        6:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'G';
        7:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'H';
        8:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'I';
        9:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'J';
        10:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'L';
        11:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'M';
        12:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'N';
        13:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'O';
        14:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'P';
        15:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'Q';
        16:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'R';
        17:DBEdit1.Text:=frmFichaEstudantes.DBENumPront.Text+'S';
      end;
      dmEstudantecomu.cdsCadEstudanteComuESTCOMU_NUMPRONTALT.value:=DBEdit1.Text;
      dmEstudantecomu.cdsCadEstudanteComuESTCOMU_ESTNUMPRONT.Value:=frmFichaEstudantes.DBENumPront.Text;
      DBEdit2.SetFocus;
    end;
end;

procedure TfrmEstudanteComu.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 dmEstudanteComu.cdsCadEstudanteComu.Close;
end;

procedure TfrmEstudanteComu.FormCreate(Sender: TObject);
begin
  if not assigned(dmEstudantecomu) then
    begin
      dmEstudantecomu:=TdmEstudantecomu.Create(Self);
      dmEstudantecomu.cdsCadEstudanteComu.Open;
    end;
end;

procedure TfrmEstudanteComu.FormDestroy(Sender: TObject);
begin
  dmEstudanteComu.Free;
  dmEstudanteComu:=nil;
end;

end.
