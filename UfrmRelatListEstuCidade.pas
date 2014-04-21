unit UfrmRelatListEstuCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, RpCon, RpConDS, RpBase, RpSystem,
  RpDefine, RpRave, RpRender, RpRenderPDF, RpRenderText, RpRenderHTML;

type
  TfrmRelatListEstuCidade = class(TForm)
    StbEstudante2: TStatusBar;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    LbeCidade: TLabeledEdit;
    ckbEstuCidades: TCheckBox;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderText1: TRvRenderText;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatListEstuCidade: TfrmRelatListEstuCidade;

implementation

{$R *.dfm}

uses UdmRelatEstudantes;

procedure TfrmRelatListEstuCidade.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  dmRelatEstudantes.cdsRelatEstuCidade.Close;
end;

procedure TfrmRelatListEstuCidade.FormCreate(Sender: TObject);
begin
  if not Assigned(dmRelatEstudantes) then
    begin
      dmRelatEstudantes:=TdmRelatEstudantes.Create(Self);
      dmRelatEstudantes.cdsRelatEstuCidade.Open;
    end;
end;

procedure TfrmRelatListEstuCidade.FormDestroy(Sender: TObject);
begin
  dmRelatEstudantes.Free;
  dmRelatEstudantes:=nil;
end;

procedure TfrmRelatListEstuCidade.FormShow(Sender: TObject);
begin
  StbEstudante2.Panels[0].Text:='Hansys 1.0 - LSD / e-mail: lsdufopa@googlegroups.com';
end;

procedure TfrmRelatListEstuCidade.SpeedButton1Click(Sender: TObject);
begin

case ckbEstuCidades.Checked of
 true:
   try
     if LbeCidade.Text='' then
       begin
         With dmRelatEstudantes.cdsRelatEstuCidade do
           begin
            close;
            FetchParams;
            Params.ParamByName('ESTU_CIDADE').AsString:=LbeCidade.Text;
            open;
           end;
         //Executa o Relatório
          RvProject1.Open;
          RvProject1.Execute;
          RvProject1.Close;
        end else
       LbeCidade.SetFocus;
   Except
       ShowMessage('Relatório não encontrado');
  end;

  false:
   if (LbeCidade.Text<>'') then
     begin
      try
      //Alimenta o Filtro do Relatório
       With dmRelatEstudantes.cdsRelatEstuCidade do
         begin
          close;
          FetchParams;
          Params.ParamByName('ESTU_CIDADE').AsString:=LbeCidade.Text;
          open;
         end;
       //Executa o Relatório
       RvProject1.Open;
       RvProject1.Execute;
       RvProject1.Close;
       Except
        ShowMessage('Relatório não encontrado');
     end;
   end else
   LbeCidade.SetFocus;
 end;
end;

end.
