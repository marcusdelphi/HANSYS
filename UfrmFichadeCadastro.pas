unit UfrmFichadeCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TfrmFichadeCadastro = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox10: TGroupBox;
    imgFicha: TImageList;
    DsPessoal: TDataSource;
    DsInforGenero: TDataSource;
    GroupBox9: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    lbCODIGO: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btnSalvarPessoal: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    dblbGENERO: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBinfEstado: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    GroupBox13: TGroupBox;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    GroupBox14: TGroupBox;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    RadioButton1: TRadioButton;
    DBEdit6: TDBEdit;
    RadioButton2: TRadioButton;
    DBEdit7: TDBEdit;
    DBRadioGroup9: TDBRadioGroup;
    btnAlterar: TBitBtn;
    GroupBox15: TGroupBox;
    btnNovo: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnPesquisar: TBitBtn;
    btnSair: TBitBtn;
    DsInfEstado: TDataSource;
    btnSalvarDiagnostico: TBitBtn;
    btnAlterarDiagnostico: TBitBtn;
    btnSalvarLab: TBitBtn;
    btnAlterarLab: TBitBtn;
    btnSalvarTrat: TBitBtn;
    btnAlterarTrat: TBitBtn;
    btnSalvarDOMICILIAR: TBitBtn;
    btnAlterarInfDomiciliar: TBitBtn;
    Image1: TImage;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    DsDomiciliar: TDataSource;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit12: TDBEdit;
    DBRadioGroup10: TDBRadioGroup;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    DBEdit15: TDBEdit;
    GroupBox17: TGroupBox;
    DBRadioGroup11: TDBRadioGroup;
    Label23: TLabel;
    DBEdit16: TDBEdit;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    Label27: TLabel;
    DBEdit20: TDBEdit;
    Label28: TLabel;
    DBRadioGroup12: TDBRadioGroup;
    GroupBox18: TGroupBox;
    DBRadioGroup13: TDBRadioGroup;
    Label29: TLabel;
    DBEdit21: TDBEdit;
    Label30: TLabel;
    DBEdit22: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label31: TLabel;
    GroupBox19: TGroupBox;
    DBRadioGroup14: TDBRadioGroup;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    DBRadioGroup15: TDBRadioGroup;
    GroupBox20: TGroupBox;
    DBRadioGroup16: TDBRadioGroup;
    Label33: TLabel;
    DBEdit24: TDBEdit;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    BitBtn2: TBitBtn;
    gbxContHansPess: TGroupBox;
    DBGrid2: TDBGrid;
    btnSalvarContHansPess: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    DsContHans: TDataSource;
    GroupBox21: TGroupBox;
    DBRadioGroup19: TDBRadioGroup;
    DBRadioGroup20: TDBRadioGroup;
    btnSalvarContHans: TBitBtn;
    btnAlterarContHans: TBitBtn;
    Label1: TLabel;
    DBEdit25: TDBEdit;
    DsContHansPess: TDataSource;
    DBRadioGroup21: TDBRadioGroup;
    DBRadioGroup22: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    DsLocContHansPess: TDataSource;
    Label2: TLabel;
    DBEdit26: TDBEdit;
    DsCadDiagnostico: TDataSource;
    Label13: TLabel;
    DBEdit27: TDBEdit;
    Label34: TLabel;
    DBEdit28: TDBEdit;
    Label35: TLabel;
    DBEdit29: TDBEdit;
    DBRadioGroup25: TDBRadioGroup;
    GroupBox11: TGroupBox;
    DBRadioGroup26: TDBRadioGroup;
    Label36: TLabel;
    DBEdit30: TDBEdit;
    DBRadioGroup27: TDBRadioGroup;
    GroupBox16: TGroupBox;
    DBRadioGroup28: TDBRadioGroup;
    Label37: TLabel;
    DBEdit31: TDBEdit;
    DBRadioGroup29: TDBRadioGroup;
    gbxTipoLesao: TGroupBox;
    DBGrid4: TDBGrid;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button20: TButton;
    Button21: TButton;
    BitBtn1: TBitBtn;
    GroupBox23: TGroupBox;
    DBRadioGroup30: TDBRadioGroup;
    GroupBox24: TGroupBox;
    DBRadioGroup31: TDBRadioGroup;
    DBRadioGroup32: TDBRadioGroup;
    DBRadioGroup33: TDBRadioGroup;
    Label38: TLabel;
    DBEdit32: TDBEdit;
    DBRadioGroup34: TDBRadioGroup;
    DBRadioGroup35: TDBRadioGroup;
    Label39: TLabel;
    DBEdit33: TDBEdit;
    DBComboBox3: TDBComboBox;
    Label40: TLabel;
    DsCadTipodeLesao: TDataSource;
    Label41: TLabel;
    DsLocTipoLesao: TDataSource;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    GroupBox12: TGroupBox;
    TabSheet10: TTabSheet;
    GroupBox22: TGroupBox;
    DsLoboratorio: TDataSource;
    GroupBox25: TGroupBox;
    DBRadioGroup38: TDBRadioGroup;
    Label3: TLabel;
    DBEdit35: TDBEdit;
    Label42: TLabel;
    DBEdit36: TDBEdit;
    Label43: TLabel;
    DBEdit37: TDBEdit;
    Label44: TLabel;
    DBEdit38: TDBEdit;
    Label45: TLabel;
    DBEdit39: TDBEdit;
    DBRadioGroup39: TDBRadioGroup;
    DBRadioGroup40: TDBRadioGroup;
    GroupBox26: TGroupBox;
    Label46: TLabel;
    DBEdit40: TDBEdit;
    Label47: TLabel;
    DBEdit41: TDBEdit;
    Label48: TLabel;
    DBEdit42: TDBEdit;
    Label49: TLabel;
    DBEdit43: TDBEdit;
    Label50: TLabel;
    DBEdit44: TDBEdit;
    Label51: TLabel;
    DBEdit45: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox27: TGroupBox;
    DBRadioGroup41: TDBRadioGroup;
    DBRadioGroup42: TDBRadioGroup;
    DBRadioGroup43: TDBRadioGroup;
    GroupBox28: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit46: TDBEdit;
    DsCadTrat: TDataSource;
    GroupBox29: TGroupBox;
    DBRadioGroup44: TDBRadioGroup;
    Label52: TLabel;
    DBEdit47: TDBEdit;
    GroupBox30: TGroupBox;
    DBRadioGroup45: TDBRadioGroup;
    DBRadioGroup46: TDBRadioGroup;
    DBRadioGroup47: TDBRadioGroup;
    Label53: TLabel;
    DBEdit48: TDBEdit;
    GroupBox31: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    DBGrid3: TDBGrid;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    BitBtn3: TBitBtn;
    PageControl3: TPageControl;
    TabSheet11: TTabSheet;
    GroupBox32: TGroupBox;
    TabSheet12: TTabSheet;
    GroupBox34: TGroupBox;
    DBRadioGroup52: TDBRadioGroup;
    DsRecidiva: TDataSource;
    Label58: TLabel;
    DBEdit51: TDBEdit;
    Label59: TLabel;
    DBEdit52: TDBEdit;
    GroupBox35: TGroupBox;
    DBEdit53: TDBEdit;
    DBRadioGroup53: TDBRadioGroup;
    DBRadioGroup54: TDBRadioGroup;
    DBRadioGroup55: TDBRadioGroup;
    DBRadioGroup57: TDBRadioGroup;
    Label60: TLabel;
    DBEdit54: TDBEdit;
    DBRadioGroup56: TDBRadioGroup;
    DBRadioGroup58: TDBRadioGroup;
    DBRadioGroup59: TDBRadioGroup;
    DBRadioGroup60: TDBRadioGroup;
    DBRadioGroup61: TDBRadioGroup;
    DBRadioGroup62: TDBRadioGroup;
    GroupBox36: TGroupBox;
    DBRadioGroup63: TDBRadioGroup;
    Label61: TLabel;
    DBEdit55: TDBEdit;
    Label62: TLabel;
    DBEdit56: TDBEdit;
    GroupBox38: TGroupBox;
    GroupBox37: TGroupBox;
    DBGrid5: TDBGrid;
    Button28: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    DBRadioGroup64: TDBRadioGroup;
    DBCheckBox3: TDBCheckBox;
    TabSheet13: TTabSheet;
    GroupBox39: TGroupBox;
    DBRadioGroup65: TDBRadioGroup;
    GroupBox40: TGroupBox;
    DBRadioGroup68: TDBRadioGroup;
    DBRadioGroup69: TDBRadioGroup;
    DBRadioGroup66: TDBRadioGroup;
    DBRadioGroup67: TDBRadioGroup;
    DBEdit49: TDBEdit;
    DBRadioGroup71: TDBRadioGroup;
    DBRadioGroup72: TDBRadioGroup;
    DBRadioGroup73: TDBRadioGroup;
    Label67: TLabel;
    DBEdit62: TDBEdit;
    DBRadioGroup70: TDBRadioGroup;
    DBEdit57: TDBEdit;
    DBEdit59: TDBEdit;
    Label66: TLabel;
    Label63: TLabel;
    btnSalvarRecidiva: TBitBtn;
    btnAlterarRecidiva: TBitBtn;
    DBComboBox4: TDBComboBox;
    DsRecTipoLesao: TDataSource;
    DsLocRecTipoLesao: TDataSource;
    DsRecTronAfe: TDataSource;
    DBRadioGroup74: TDBRadioGroup;
    DBEdit60: TDBEdit;
    DsLocRecTronAfe: TDataSource;
    Label64: TLabel;
    DBEdit61: TDBEdit;
    DsCadComunicante: TDataSource;
    Label65: TLabel;
    Label68: TLabel;
    DBEdit64: TDBEdit;
    DBEdit63: TDBEdit;
    Label69: TLabel;
    DBComboBox6: TDBComboBox;
    Label70: TLabel;
    DBRadioGroup75: TDBRadioGroup;
    DBRadioGroup76: TDBRadioGroup;
    DBRadioGroup77: TDBRadioGroup;
    DBRadioGroup78: TDBRadioGroup;
    Label71: TLabel;
    DBEdit65: TDBEdit;
    Label72: TLabel;
    DBEdit66: TDBEdit;
    Label73: TLabel;
    DBEdit67: TDBEdit;
    Label74: TLabel;
    DBEdit68: TDBEdit;
    Label75: TLabel;
    DBEdit69: TDBEdit;
    Label76: TLabel;
    DBEdit70: TDBEdit;
    Label77: TLabel;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    Label79: TLabel;
    DBRadioGroup81: TDBRadioGroup;
    DBRadioGroup82: TDBRadioGroup;
    Label86: TLabel;
    DBEdit78: TDBEdit;
    DsComTipoLesao: TDataSource;
    DsLocComTipoLesao: TDataSource;
    TabSheet14: TTabSheet;
    PageControl4: TPageControl;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    GroupBox42: TGroupBox;
    GroupBox43: TGroupBox;
    TabSheet17: TTabSheet;
    GroupBox44: TGroupBox;
    TabSheet18: TTabSheet;
    GroupBox45: TGroupBox;
    btnSalvarNeuro: TBitBtn;
    btnAlterarNeuro: TBitBtn;
    GroupBox46: TGroupBox;
    DsCadNeuro: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Label78: TLabel;
    Label88: TLabel;
    DBEdit81: TDBEdit;
    Label89: TLabel;
    DBEdit82: TDBEdit;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    DBComboBox10: TDBComboBox;
    Label97: TLabel;
    DBComboBox11: TDBComboBox;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    DBComboBox9: TDBComboBox;
    Label101: TLabel;
    DBComboBox12: TDBComboBox;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    DBEdit83: TDBEdit;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBComboBox15: TDBComboBox;
    DBComboBox16: TDBComboBox;
    DBComboBox17: TDBComboBox;
    DBComboBox18: TDBComboBox;
    DBComboBox19: TDBComboBox;
    DBComboBox20: TDBComboBox;
    DBComboBox21: TDBComboBox;
    DBComboBox22: TDBComboBox;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    GroupBox47: TGroupBox;
    Label133: TLabel;
    DBEdit90: TDBEdit;
    Panel4: TPanel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    DBComboBox23: TDBComboBox;
    DBComboBox24: TDBComboBox;
    DBComboBox25: TDBComboBox;
    DBComboBox26: TDBComboBox;
    DBComboBox27: TDBComboBox;
    DBComboBox28: TDBComboBox;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    GroupBox48: TGroupBox;
    Panel5: TPanel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    DBComboBox29: TDBComboBox;
    DBComboBox30: TDBComboBox;
    DBComboBox31: TDBComboBox;
    DBComboBox32: TDBComboBox;
    DBComboBox33: TDBComboBox;
    DBComboBox34: TDBComboBox;
    DBComboBox35: TDBComboBox;
    DBComboBox36: TDBComboBox;
    DBComboBox37: TDBComboBox;
    DBComboBox38: TDBComboBox;
    DBComboBox39: TDBComboBox;
    DBComboBox40: TDBComboBox;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    GroupBox49: TGroupBox;
    Panel6: TPanel;
    Image5: TImage;
    Image6: TImage;
    Label170: TLabel;
    Label171: TLabel;
    imgDAzul1: TImage;
    imgDAzul2: TImage;
    imgDAzul3: TImage;
    imgDAzul4: TImage;
    imgDAzul5: TImage;
    imgDAzul6: TImage;
    imgDAzul7: TImage;
    imgEAzul4: TImage;
    imgEAzul6: TImage;
    imgEAzul5: TImage;
    imgEAzul7: TImage;
    imgEAzul3: TImage;
    imgEAzul1: TImage;
    imgEAzul2: TImage;
    imgDVerde3: TImage;
    imgDVerde4: TImage;
    imgDVerde2: TImage;
    imgDVerde1: TImage;
    imgDVerde7: TImage;
    imgDVerde6: TImage;
    imgDVerde5: TImage;
    imgEVerde7: TImage;
    imgEVerde1: TImage;
    imgEVerde2: TImage;
    imgEVerde4: TImage;
    imgEVerde6: TImage;
    imgEVerde5: TImage;
    imgEVerde3: TImage;
    imgDLilas3: TImage;
    imgDLilas4: TImage;
    imgDLilas1: TImage;
    imgDLilas2: TImage;
    imgDLilas6: TImage;
    imgDLilas7: TImage;
    imgDLilas5: TImage;
    imgELilas7: TImage;
    imgELilas6: TImage;
    imgELilas5: TImage;
    imgELilas3: TImage;
    imgELilas4: TImage;
    imgELilas2: TImage;
    imgELilas1: TImage;
    imgDVermelho3: TImage;
    imgDVermelho7: TImage;
    imgDVermelho6: TImage;
    imgDVermelho5: TImage;
    imgDVermelho4: TImage;
    imgDVermelho2: TImage;
    imgDVermelho1: TImage;
    imgEVermelho7: TImage;
    imgEVermelho6: TImage;
    imgEVermelho5: TImage;
    imgEVermelho4: TImage;
    imgEVermelho3: TImage;
    imgEVermelho2: TImage;
    imgEVermelho1: TImage;
    imgDVermCruzado3: TImage;
    imgDVermCruzado4: TImage;
    imgDVermCruzado2: TImage;
    imgDVermCruzado1: TImage;
    imgDVermCruzado7: TImage;
    imgDVermCruzado6: TImage;
    imgDVermCruzado5: TImage;
    imgEVermCruzado7: TImage;
    imgEVermCruzado6: TImage;
    imgEVermCruzado5: TImage;
    imgEVermCruzado2: TImage;
    imgEVermCruzado1: TImage;
    imgEVermCruzado4: TImage;
    imgEVermCruzado3: TImage;
    imgDVermAberto5: TImage;
    imgDVermAberto7: TImage;
    imgDVermAberto6: TImage;
    imgDVermAberto3: TImage;
    imgDVermAberto4: TImage;
    imgDVermAberto2: TImage;
    imgDVermAberto1: TImage;
    imgEVermAberto7: TImage;
    imgEVermAberto6: TImage;
    imgEVermAberto5: TImage;
    imgEVermAberto3: TImage;
    imgEVermAberto4: TImage;
    imgEVermAberto2: TImage;
    imgEVermAberto1: TImage;
    imgDPreto1: TImage;
    imgDPreto4: TImage;
    imgDPreto2: TImage;
    imgDPreto3: TImage;
    imgDPreto5: TImage;
    imgDPreto6: TImage;
    imgDPreto7: TImage;
    imgEPreto7: TImage;
    imgEPreto6: TImage;
    imgEPreto5: TImage;
    imgEPreto3: TImage;
    imgEPreto4: TImage;
    imgEPreto2: TImage;
    imgEPreto1: TImage;
    GroupBox50: TGroupBox;
    Label172: TLabel;
    Panel7: TPanel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    imgDVazio3: TImage;
    imgDVazio4: TImage;
    imgDVazio1: TImage;
    imgDVazio2: TImage;
    imgDVazio6: TImage;
    imgDVazio7: TImage;
    imgDVazio5: TImage;
    imgEVazio7: TImage;
    imgEVazio6: TImage;
    imgEVazio5: TImage;
    imgEVazio3: TImage;
    imgEVazio4: TImage;
    imgEVazio2: TImage;
    imgEVazio1: TImage;
    chbMdGarraRigida: TDBCheckBox;
    chbMdFerrida: TDBCheckBox;
    chbMdRabisorvicao: TDBCheckBox;
    chbMdGarraMovel: TDBCheckBox;
    chbMeGarraRigida: TDBCheckBox;
    chbMeFerida: TDBCheckBox;
    chbMeReabisorvicao: TDBCheckBox;
    chbMeGarraMovel: TDBCheckBox;
    GroupBox62: TGroupBox;
    Image242: TImage;
    Image243: TImage;
    Label323: TLabel;
    Label324: TLabel;
    imgPDPreto6: TImage;
    imgPDPreto2: TImage;
    imgPDPreto3: TImage;
    imgPDPreto1: TImage;
    imgPDPreto4: TImage;
    imgPDPreto5: TImage;
    imgPDPreto8: TImage;
    Panel17: TPanel;
    chbPdGarraRigida: TDBCheckBox;
    chbPdFerida: TDBCheckBox;
    chbPdReabsorvicao: TDBCheckBox;
    chbPdGarraMovel: TDBCheckBox;
    chbPeGarraRigida: TDBCheckBox;
    chbPeFerida: TDBCheckBox;
    chbPeReabsorvicao: TDBCheckBox;
    chbPeGarraMovel: TDBCheckBox;
    GroupBox53: TGroupBox;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Image122: TImage;
    Image123: TImage;
    Panel10: TPanel;
    DBComboBox45: TDBComboBox;
    DBComboBox46: TDBComboBox;
    DBComboBox47: TDBComboBox;
    DBComboBox48: TDBComboBox;
    GroupBox51: TGroupBox;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Panel8: TPanel;
    DBComboBox41: TDBComboBox;
    DBComboBox42: TDBComboBox;
    DBComboBox43: TDBComboBox;
    DBComboBox44: TDBComboBox;
    GroupBox52: TGroupBox;
    Label199: TLabel;
    Label223: TLabel;
    Label224: TLabel;
    Panel9: TPanel;
    DBComboBox49: TDBComboBox;
    DBComboBox50: TDBComboBox;
    Label196: TLabel;
    DBComboBox51: TDBComboBox;
    Label212: TLabel;
    DBComboBox52: TDBComboBox;
    Label213: TLabel;
    DBComboBox53: TDBComboBox;
    Label214: TLabel;
    DBComboBox54: TDBComboBox;
    DBComboBox55: TDBComboBox;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    GroupBox54: TGroupBox;
    Label225: TLabel;
    Label226: TLabel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label230: TLabel;
    Label234: TLabel;
    Label235: TLabel;
    Label236: TLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label231: TLabel;
    Label232: TLabel;
    Label233: TLabel;
    imgPDPreto7: TImage;
    imgPDPreto9: TImage;
    imgPDPreto10: TImage;
    imgPDVerde9: TImage;
    imgPDVerde8: TImage;
    imgPDVerde7: TImage;
    imgPDVerde4: TImage;
    imgPDVerde5: TImage;
    imgPDVerde6: TImage;
    imgPDVerde3: TImage;
    imgPDVerde2: TImage;
    imgPDVerde1: TImage;
    imgPDVerde10: TImage;
    imgPEVerde3: TImage;
    imgPEVerde9: TImage;
    imgPEVerde7: TImage;
    imgPEVerde8: TImage;
    imgPEVerde4: TImage;
    imgPEVerde5: TImage;
    imgPEVerde6: TImage;
    imgPEVerde2: TImage;
    imgPEVerde1: TImage;
    imgPEVerde10: TImage;
    imgPEPreto10: TImage;
    imgPEPreto9: TImage;
    imgPEPreto7: TImage;
    imgPEPreto4: TImage;
    imgPEPreto5: TImage;
    imgPEPreto6: TImage;
    imgPEPreto8: TImage;
    imgPEPreto3: TImage;
    imgPEPreto2: TImage;
    imgPEPreto1: TImage;
    imgPDAzul3: TImage;
    imgPDAzul2: TImage;
    imgPDAzul1: TImage;
    imgPDAzul10: TImage;
    imgPDAzul4: TImage;
    imgPDAzul5: TImage;
    imgPDAzul6: TImage;
    imgPDAzul8: TImage;
    imgPDAzul7: TImage;
    imgPDAzul9: TImage;
    imgPEAzul1: TImage;
    imgPEAzul2: TImage;
    imgPEAzul5: TImage;
    imgPEAzul10: TImage;
    imgPEAzul4: TImage;
    imgPEAzul3: TImage;
    imgPEAzul6: TImage;
    imgPEAzul8: TImage;
    imgPEAzul7: TImage;
    imgPEAzul9: TImage;
    imgPDLilas9: TImage;
    imgPDLilas8: TImage;
    imgPDLilas7: TImage;
    imgPDLilas4: TImage;
    imgPDLilas5: TImage;
    imgPDLilas6: TImage;
    imgPDLilas3: TImage;
    imgPDLilas2: TImage;
    imgPDLilas1: TImage;
    imgPDLilas10: TImage;
    imgPELilas9: TImage;
    imgPELilas7: TImage;
    imgPELilas4: TImage;
    imgPELilas8: TImage;
    imgPELilas6: TImage;
    imgPELilas5: TImage;
    imgPELilas1: TImage;
    imgPELilas2: TImage;
    imgPELilas3: TImage;
    imgPELilas10: TImage;
    imgPDVermelho6: TImage;
    imgPDVermelho10: TImage;
    imgPDVermelho1: TImage;
    imgPDVermelho2: TImage;
    imgPDVermelho3: TImage;
    imgPDVermelho5: TImage;
    imgPDVermelho4: TImage;
    imgPDVermelho7: TImage;
    imgPDVermelho8: TImage;
    imgPDVermelho9: TImage;
    imgPEVermelho9: TImage;
    imgPEVermelho7: TImage;
    imgPEVermelho4: TImage;
    imgPEVermelho10: TImage;
    imgPEVermelho1: TImage;
    imgPEVermelho2: TImage;
    imgPEVermelho3: TImage;
    imgPEVermelho6: TImage;
    imgPEVermelho5: TImage;
    imgPEVermelho8: TImage;
    imgPDVermCruzado3: TImage;
    imgPDVermCruzado10: TImage;
    imgPDVermCruzado1: TImage;
    imgPDVermCruzado2: TImage;
    imgPDVermCruzado6: TImage;
    imgPDVermCruzado5: TImage;
    imgPDVermCruzado4: TImage;
    imgPDVermCruzado7: TImage;
    imgPDVermCruzado8: TImage;
    imgPDVermCruzado9: TImage;
    imgPEVermCruzado9: TImage;
    imgPEVermCruzado7: TImage;
    imgPEVermCruzado8: TImage;
    imgPEVermCruzado6: TImage;
    imgPEVermCruzado5: TImage;
    imgPEVermCruzado4: TImage;
    imgPEVermCruzado10: TImage;
    imgPEVermCruzado1: TImage;
    imgPEVermCruzado2: TImage;
    imgPEVermCruzado3: TImage;
    imgPDVermAberto9: TImage;
    imgPDVermAberto8: TImage;
    imgPDVermAberto7: TImage;
    imgPDVermAberto6: TImage;
    imgPDVermAberto5: TImage;
    imgPDVermAberto3: TImage;
    imgPDVermAberto2: TImage;
    imgPDVermAberto1: TImage;
    imgPDVermAberto10: TImage;
    imgPDVermAberto4: TImage;
    imgPEVermAberto10: TImage;
    imgPEVermAberto1: TImage;
    imgPEVermAberto2: TImage;
    imgPEVermAberto3: TImage;
    imgPEVermAberto6: TImage;
    imgPEVermAberto5: TImage;
    imgPEVermAberto4: TImage;
    imgPEVermAberto7: TImage;
    imgPEVermAberto8: TImage;
    imgPEVermAberto9: TImage;
    imgPDVazio1: TImage;
    imgPDVazio2: TImage;
    imgPDVazio3: TImage;
    imgPDVazio6: TImage;
    imgPDVazio5: TImage;
    imgPDVazio4: TImage;
    imgPDVazio8: TImage;
    imgPDVazio7: TImage;
    imgPDVazio9: TImage;
    imgPDVazio10: TImage;
    imgPEVazio10: TImage;
    imgPEVazio1: TImage;
    imgPEVazio2: TImage;
    imgPEVazio3: TImage;
    imgPEVazio6: TImage;
    imgPEVazio5: TImage;
    imgPEVazio4: TImage;
    imgPEVazio7: TImage;
    imgPEVazio8: TImage;
    imgPEVazio9: TImage;
    GroupBox55: TGroupBox;
    Panel16: TPanel;
    DBMemo1: TDBMemo;
    TabSheet19: TTabSheet;
    GroupBox56: TGroupBox;
    GroupBox57: TGroupBox;
    Panel18: TPanel;
    btnAlterarAnotacao: TBitBtn;
    btnSalvarAnotacao: TBitBtn;
    DsAnotacao: TDataSource;
    DBMemo2: TDBMemo;
    DBComboBox56: TDBComboBox;
    DBComboBox57: TDBComboBox;
    btnNovoComunicante: TBitBtn;
    TabSheet20: TTabSheet;
    GroupBox58: TGroupBox;
    DBGrid6: TDBGrid;
    btnSalvarComunicante: TBitBtn;
    btnAlterarComunicante: TBitBtn;
    Button35: TButton;
    DsLocComunicante: TDataSource;
    btnCancelarComunicante: TButton;
    DBEdit34: TDBEdit;
    GroupBox59: TGroupBox;
    DBENumPront: TDBEdit;
    Label219: TLabel;
    GroupBox60: TGroupBox;
    dbcTipoPaciente: TDBComboBox;
    Label220: TLabel;
    DBRadioGroup37: TDBRadioGroup;
    DBRadioGroup36: TDBRadioGroup;
    DBRadioGroup49: TDBRadioGroup;
    DBRadioGroup48: TDBRadioGroup;
    DBRadioGroup50: TDBRadioGroup;
    DBRadioGroup51: TDBRadioGroup;
    GroupBox33: TGroupBox;
    Label56: TLabel;
    Label57: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    BitBtn6: TBitBtn;
    DBComboBox5: TDBComboBox;
    DBComboBox58: TDBComboBox;
    GroupBox41: TGroupBox;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBEdit50: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit79: TDBEdit;
    Label87: TLabel;
    Panel19: TPanel;
    DBRadioGroup79: TDBRadioGroup;
    DBRadioGroup80: TDBRadioGroup;
    Label237: TLabel;
    Label238: TLabel;
    GroupBox61: TGroupBox;
    Label239: TLabel;
    DBEdit80: TDBEdit;
    Label240: TLabel;
    Label241: TLabel;
    Label242: TLabel;
    DBEdit84: TDBEdit;
    Label243: TLabel;
    DBEdit85: TDBEdit;
    Label244: TLabel;
    DBEdit86: TDBEdit;
    Panel20: TPanel;
    Label85: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    function getCodPess: integer;
    procedure btnSalvarPessoalClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarDOMICILIARClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnSalvarContHansClick(Sender: TObject);
    procedure btnSalvarContHansPessClick(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure btnSalvarDiagnosticoClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure btnSalvarLabClick(Sender: TObject);
    procedure btnSalvarTratClick(Sender: TObject);
    function getCodDiag: integer;
    procedure btnSalvarRecidivaClick(Sender: TObject);
    function getCodRecidiva: integer;
    function getCodComTipoLesao: integer;
    function getCodigoComunicante: integer;
    function getNumPront:String;
    procedure Button5Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnSalvarComunicanteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure imgDVazio1Click(Sender: TObject);
    procedure imgDVazio2Click(Sender: TObject);
    procedure imgDVazio3Click(Sender: TObject);
    procedure imgDVazio4Click(Sender: TObject);
    procedure imgDVazio5Click(Sender: TObject);
    procedure imgDVazio6Click(Sender: TObject);
    procedure imgDVazio7Click(Sender: TObject);
    procedure imgEVazio1Click(Sender: TObject);
    procedure imgEVazio2Click(Sender: TObject);
    procedure imgEVazio3Click(Sender: TObject);
    procedure imgEVazio4Click(Sender: TObject);
    procedure imgEVazio5Click(Sender: TObject);
    procedure imgEVazio6Click(Sender: TObject);
    procedure imgEVazio7Click(Sender: TObject);
    procedure imgPDVazio1Click(Sender: TObject);
    procedure imgPDVazio2Click(Sender: TObject);
    procedure imgPDVazio3Click(Sender: TObject);
    procedure imgPDVazio4Click(Sender: TObject);
    procedure imgPDVazio5Click(Sender: TObject);
    procedure imgPDVazio6Click(Sender: TObject);
    procedure imgPDVazio7Click(Sender: TObject);
    procedure imgPDVazio8Click(Sender: TObject);
    procedure imgPDVazio9Click(Sender: TObject);
    procedure imgPDVazio10Click(Sender: TObject);
    procedure imgPEVazio1Click(Sender: TObject);
    procedure imgPEVazio2Click(Sender: TObject);
    procedure imgPEVazio3Click(Sender: TObject);
    procedure imgPEVazio4Click(Sender: TObject);
    procedure imgPEVazio5Click(Sender: TObject);
    procedure imgPEVazio6Click(Sender: TObject);
    procedure imgPEVazio7Click(Sender: TObject);
    procedure imgPEVazio8Click(Sender: TObject);
    procedure imgPEVazio9Click(Sender: TObject);
    procedure imgPEVazio10Click(Sender: TObject);
    procedure btnSalvarNeuroClick(Sender: TObject);
    procedure btnSalvarAnotacaoClick(Sender: TObject);
    procedure btnNovoComunicanteClick(Sender: TObject);
    procedure btnCancelarComunicanteClick(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure dbcTipoPacienteExit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    Cont:Integer; // Contador para Usar na Geração do Código do COMUNICANTE
    CodNumPront:Integer;// Armazena Temporariamente o Numero do PRONTUARIO
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFichadeCadastro: TfrmFichadeCadastro;
  CodPessoal: integer;
  MD1,MD2,MD3,MD4,MD5,MD6,MD7,ME1,ME2,ME3,ME4,ME5,ME6,ME7:AnsiString;//GUARDA TEMPORARIAMENTE AS CORES DA MÃO SELECIONADAS A SEREM GRAVADAS NO BD
  PD1,PD2,PD3,PD4,PD5,PD6,PD7,PD8,PD9,PD10,PE1,PE2,PE3,PE4,PE5,PE6,PE7,PE8,PE9,PE10:AnsiString;//GUARDA TEMPORARIAMENTE AS CORES DO PÉ SELECIONADAS A SEREM GRAVADAS NO BD

implementation

{$R *.dfm}

uses UdmFicha, UfrmFotosdiagnostico, UFuncoes, Data.DBXCommon,
  UfrmResidAnteriores, UfrmFotosRecidiva, UfrmFotoComunicante, UfrmCoresMD1,
  UfrmCoresMD2, UfrmCoresMD3, UfrmCoresMD4, UfrmCoresMD5, UfrmCoresMD6,
  UfrmCoresMD7, UfrmCoresME1, UfrmCoresME2, UfrmCoresME3, UfrmCoresME4,
  UfrmCoresME5, UfrmCoresME6, UfrmCoresME7, UfrmCoresPD1, UfrmCoresPD2,
  UfrmCoresPD3, UfrmCoresPD4, UfrmCoresPD5, UfrmCoresPD6, UfrmCoresPD7,
  UfrmCoresPD8, UfrmCoresPD9, UfrmCoresPD10, UfrmCoresPE1, UfrmCoresPE2,
  UfrmCoresPE3, UfrmCoresPE4, UfrmCoresPE5, UfrmCoresPE6, UfrmCoresPE7,
  UfrmCoresPE8, UfrmCoresPE9, UfrmCoresPE10;

procedure LocalizadoComTipoLesao;
begin
  with dmFicha.cdsCadComTipoLesao do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_COM_TIPO_LESAO').AsInteger:=dmFicha.cdsLocComTipoLesaoID_COM_TIPO_LESAO.AsInteger;
    Open;
  end;
end;

procedure LocalizadoComunicante;
begin
  with dmFicha.cdsCadComunicante do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_COMUNICANTE').AsInteger:=dmFicha.cdsLocComunicID_comunicante.AsInteger;
    Open;
  end;
end;

procedure LocalizadoRecTronAfe;
begin
  with dmFicha.cdsRecTroncAfe do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_NUM_TRON_AFETA').AsInteger:=dmFicha.cdsLocRecTronAfeID_NUME_TRON_AFETA.AsInteger;
    Open;
  end;
end;
procedure LocalizadoRecTipoLesao;
begin
  with dmFicha.cdsRecTipoLesao do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_TIPO_LESAO_RECIDIVA').AsInteger:=dmFicha.cdsLocRecTipoLesaoID_TIPO_LESAO_RECIDIVA.AsInteger;
    Open;
  end;
end;
procedure LocalizadoTipoLesao;
begin
  with dmFicha.cdsCadTipoLesao do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_DIAGNOSTICO_TIPO_LESAO').AsInteger:=dmFicha.cdsLocTipoLesaoID_DIAGNOSTICO_TIPO_LESAO.AsInteger;
    Open;
  end;
end;
procedure LocalizadoContaHansPess;
begin
  with dmFicha.cdsCadContHansPess do
  begin
    Close;
    FetchParams;
    Params.ParamByName('ID_CONTATO_HANSENIASE_PESS').AsInteger:=dmFicha.cdsLocContHansPessID_CONTATO_HANSENIASE_PESS.AsInteger;
    Open;
  end;
end;

procedure TfrmFichadeCadastro.BitBtn1Click(Sender: TObject);
begin
  dmFicha.cdsLocFotoDiag.Refresh;
  try
    frmFotosdiagnostico:=TfrmFotosdiagnostico.Create(Self);
    frmFotosdiagnostico.ShowModal;
  finally
    frmFotosdiagnostico.Free;
    frmFotosdiagnostico:=nil;
  end;
end;

procedure TfrmFichadeCadastro.btnSalvarAnotacaoClick(Sender: TObject);
begin
  dmFicha.cdsAnotacoesANOT_COD_PESS.Value:=getCodPess;
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsAnotacoes.Post;
    if dmFicha.cdsAnotacoes.ApplyUpdates(0)<>0 then
      dmFicha.cdsAnotacoes.CancelUpdates;
      btnSalvarAnotacao.Enabled:=False;
      btnAlterarAnotacao.Enabled:=true;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
    else
      begin
        dmFicha.cdsAnotacoes.Cancel;
        dmFicha.cdsAnotacoes.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.btnSalvarComunicanteClick(Sender: TObject);
begin
dmFicha.cdsCadComunicanteCOMU_COD_PESS.Value:=getCodPess;
dmFicha.cdsCadComunicanteCOMU_DATACAD.Value:=FormatDatetime('dd"/"mm"/"yyyy',now);
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsCadComunicante.Post;
    if dmFicha.cdsCadComunicante.ApplyUpdates(0)<>0 then
      dmFicha.cdsCadComunicante.CancelUpdates;
      btnSalvarComunicante.Enabled:=False;
      btnAlterarComunicante.Enabled:=true;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
      frmFichadeCadastro.Button35Click(Self);
      Cont:=Cont+1;
    end
    else
      begin
        dmFicha.cdsCadComunicante.Cancel;
        dmFicha.cdsCadComunicante.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.btnSalvarContHansClick(Sender: TObject);
begin
dmFicha.cdsCadContHansCONT_HANS_COD_PESS.Value:=getCodPess;
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsCadContHans.Post;
    if dmFicha.cdsCadContHans.ApplyUpdates(0)<>0 then
      dmFicha.cdsCadContHans.CancelUpdates;
      btnSalvarContHans.Enabled:=False;
      btnAlterarContHans.Enabled:=true;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
    else
      begin
        dmFicha.cdsCadContHans.Cancel;
        dmFicha.cdsCadContHans.CancelUpdates;
      end;
      gbxContHansPess.Enabled:=True;
end;

procedure TfrmFichadeCadastro.btnSalvarDiagnosticoClick(Sender: TObject);
begin
dmFicha.cdsCadDiagnosticoDIAG_COD_PESS.Value:=getCodPess;
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsCadDiagnostico.Post;
    if dmFicha.cdsCadDiagnostico.ApplyUpdates(0)<>0 then
      dmFicha.cdsCadDiagnostico.CancelUpdates;
      btnSalvarDiagnostico.Enabled:=False;
      btnAlterarDiagnostico.Enabled:=true;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
    else
      begin
        dmFicha.cdsCadDiagnostico.Cancel;
        dmFicha.cdsCadDiagnostico.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.btnSalvarDOMICILIARClick(Sender: TObject);
begin
dmFicha.cdsCadDOMICILIARDOMI_COD_PESS.Value:=getCodPess;
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsCadDOMICILIAR.Post;
    if dmFicha.cdsCadDOMICILIAR.ApplyUpdates(0)<>0 then
      dmFicha.cdsCadDOMICILIAR.CancelUpdates;
      btnSalvarDOMICILIAR.Enabled:=False;
      btnAlterarInfDomiciliar.Enabled:=true;
      btnCancelar.Enabled:=False;
      btnExcluir.Enabled:=true;
      btnNovo.Enabled:=True;
      btnPesquisar.Enabled:=True;
      btnsair.Enabled:=True;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
    else
      begin
        dmFicha.cdsCadDOMICILIAR.Cancel;
        dmFicha.cdsCadDOMICILIAR.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.btnSalvarPessoalClick(Sender: TObject);
begin
   if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
     dmFicha.cdsCadPessoalPESS_DATA_ATU.Value:=FormatDatetime('dd"/"mm"/"yyyy',now);
     dmFicha.cdsCadPessoal.Post;
    if dmFicha.cdsCadPessoal.ApplyUpdates(0)<>0 then
    dmFicha.cdsCadPessoal.CancelUpdates;
    btnSalvarPessoal.Enabled:=False;
    btnAlterar.Enabled:=true;
    btnCancelar.Enabled:=False;
    btnExcluir.Enabled:=true;
    btnNovo.Enabled:=True;
    btnPesquisar.Enabled:=True;
    btnsair.Enabled:=True;
    dbcTipoPaciente.Enabled:=false;
    MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    dmFicha.SQLQueryPessoal.Open;
    dmFicha.SQLQueryPessoal.Refresh;
    end
    else
      begin
        dmFicha.cdsCadPessoal.Cancel;
        dmFicha.cdsCadPessoal.CancelUpdates;
      end;
  TabSheet2.Enabled:=true;
  TabSheet3.Enabled:=true;
  TabSheet4.Enabled:=true;
  TabSheet5.Enabled:=true;
  TabSheet6.Enabled:=true;
  TabSheet7.Enabled:=true;
  TabSheet8.Enabled:=true;
  TabSheet14.Enabled:=true;
  CodPessoal:=getCodPess;
  //dmFicha.cdsCadPessoal.Refresh;
  lbCODIGO.Caption:='0'+IntToStr(getCodPess);
  CodNumPront:=StrToInt(DBENumPront.Text);
  Cont:=0;
end;

procedure TfrmFichadeCadastro.btnSalvarRecidivaClick(Sender: TObject);
begin
dmFicha.cdsCadRecidivaREC_COD_PESS.Value:=getCodPess;
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsCadRecidiva.Post;
    if dmFicha.cdsCadRecidiva.ApplyUpdates(0)<>0 then
      dmFicha.cdsCadRecidiva.CancelUpdates;
      btnSalvarRecidiva.Enabled:=False;
      btnAlterarRecidiva.Enabled:=true;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
    else
      begin
        dmFicha.cdsCadRecidiva.Cancel;
        dmFicha.cdsCadRecidiva.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.btnSalvarTratClick(Sender: TObject);
begin
dmFicha.cdsCadTratTRAT_COD_PESS.Value:=getCodPess;
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsCadTrat.Post;
    if dmFicha.cdsCadTrat.ApplyUpdates(0)<>0 then
      dmFicha.cdsCadTrat.CancelUpdates;
      btnSalvarTrat.Enabled:=False;
      btnAlterarTrat.Enabled:=true;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
    else
      begin
        dmFicha.cdsCadTrat.Cancel;
        dmFicha.cdsCadTrat.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.Button10Click(Sender: TObject);
begin
 with dmFicha.cdsCadTipoLesao do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmFichadeCadastro.Button11Click(Sender: TObject);
begin
with dmFicha.cdsCadTipoLesao do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button12Click(Sender: TObject);
begin
 if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsCadTipoLesao do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
       frmFichadeCadastro.Button13Click(Self);
      end;
    dmFicha.cdsCadTipoLesao.Cancel;
    dmFicha.cdsCadTipoLesao.CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button13Click(Sender: TObject);
begin
With dmFicha.cdsLocTipoLesao do
    begin
      close;
      FetchParams;
      Params.ParamByName('DIAG_TIPO_LESOES_COD_PESS').AsInteger:=CodPessoal;
      open;
      DBGrid4.SetFocus;
    end;
end;

procedure TfrmFichadeCadastro.Button14Click(Sender: TObject);
begin
 with dmFicha.cdsCadContHansPess do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmFichadeCadastro.Button15Click(Sender: TObject);
begin
 with dmFicha.cdsCadContHansPess do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button16Click(Sender: TObject);
begin
 if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsCadContHansPess do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
       frmFichadeCadastro.Button17Click(Self);
      end;
    dmFicha.cdsCadContHansPess.Cancel;
    dmFicha.cdsCadContHansPess.CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button17Click(Sender: TObject);
begin
 With dmFicha.cdsLocContHansPess do
    begin
      close;
      FetchParams;
      Params.ParamByName('CONTATO_HANSENIASE_PESS_COD_PES').AsInteger:=CodPessoal;
      open;
      DBGrid2.SetFocus;
    end;
end;

procedure TfrmFichadeCadastro.Button18Click(Sender: TObject);
begin
with dmFicha.cdsCadContHansPess do
  begin
   edit;
   end;
end;

procedure TfrmFichadeCadastro.Button1Click(Sender: TObject);
begin
dmFicha.cdsCadComTipoLesao.Refresh;
  with dmFicha.cdsCadComTipoLesao do
    begin
      DBComboBox5.SetFocus;
      append;
      dmFicha.cdsCadComTipoLesaoCOMUNICANTE_ID_COMUNICANTE.Value:=frmFichadeCadastro.getCodigoComunicante;
    end;
end;

procedure TfrmFichadeCadastro.Button20Click(Sender: TObject);
begin
with dmFicha.cdsCadTipoLesao do
  begin
   edit;
   end;
end;

procedure TfrmFichadeCadastro.Button22Click(Sender: TObject);
begin
With dmFicha.cdsLocRecTipoLesao do
    begin
      close;
      FetchParams;
      Params.ParamByName('REC_COD_PESS').AsInteger:=CodPessoal;
      open;
    end;
end;

procedure TfrmFichadeCadastro.Button23Click(Sender: TObject);
begin
  with dmFicha.cdsRecTipoLesao do
    begin
       edit;
     end;
end;

procedure TfrmFichadeCadastro.Button25Click(Sender: TObject);
begin
  With dmFicha.cdsLocComTipoLesao do
      begin
        close;
        FetchParams;
        Params.ParamByName('COMUNICANTE_ID_COMUNICANTE').AsInteger:=getCodigoComunicante;
        open;
      end;
end;

procedure TfrmFichadeCadastro.Button26Click(Sender: TObject);
begin
with dmFicha.cdsCadComTipoLesao do
  begin
   edit;
   end;
end;

procedure TfrmFichadeCadastro.Button28Click(Sender: TObject);
begin
dmFicha.cdsRecTroncAfe.Refresh;
  with dmFicha.cdsRecTroncAfe do
    begin
      append;
      dmFicha.cdsRecTroncAfeREC_COD_PESS.Value:=frmFichadeCadastro.getCodPess;
    end;
end;

procedure TfrmFichadeCadastro.Button29Click(Sender: TObject);
begin
 with dmFicha.cdsRecTroncAfe do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmFichadeCadastro.Button2Click(Sender: TObject);
begin
with dmFicha.cdsCadComTipoLesao do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmFichadeCadastro.Button30Click(Sender: TObject);
begin
with dmFicha.cdsRecTroncAfe do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button31Click(Sender: TObject);
begin
 if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsRecTroncAfe do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
      end;
    dmFicha.cdsRecTroncAfe.Cancel;
    dmFicha.cdsRecTroncAfe.CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button32Click(Sender: TObject);
begin
With dmFicha.cdsLocRecTronAfe do
    begin
      close;
      FetchParams;
      Params.ParamByName('REC_COD_PESS').AsInteger:=CodPessoal;
      open;
    end;
end;

procedure TfrmFichadeCadastro.Button33Click(Sender: TObject);
begin
with dmFicha.cdsRecTroncAfe do
  begin
   edit;
   end;
end;

procedure TfrmFichadeCadastro.Button35Click(Sender: TObject);
begin
 With dmFicha.cdsLocComunic do
    begin
      close;
      FetchParams;
      Params.ParamByName('COMU_COD_PESS').AsInteger:=getCodPess;
      open;
      DBGrid6.SetFocus;
    end;
end;

procedure TfrmFichadeCadastro.Button3Click(Sender: TObject);
begin
with dmFicha.cdsCadComTipoLesao do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button4Click(Sender: TObject);
begin
 if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsCadComTipoLesao do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
      end;
    dmFicha.cdsCadComTipoLesao.Cancel;
    dmFicha.cdsCadComTipoLesao.CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button5Click(Sender: TObject);
begin
dmFicha.cdsRecTipoLesao.Refresh;
  with dmFicha.cdsRecTipoLesao do
    begin
      DBComboBox4.SetFocus;
      append;
      dmFicha.cdsRecTipoLesaoREC_COD_PESS.Value:=frmFichadeCadastro.getCodPess;
    end;
end;

procedure TfrmFichadeCadastro.Button6Click(Sender: TObject);
begin
 with dmFicha.cdsRecTipoLesao do
    begin
    Delete;
    if ApplyUpdates(0)<>0 then
       CancelUpdates;
    end;
end;

procedure TfrmFichadeCadastro.Button7Click(Sender: TObject);
begin
with dmFicha.cdsRecTipoLesao do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button8Click(Sender: TObject);
begin
 if MessageDlg('Você Confirma a Gravação?',mtConfirmation,[mbyes,mbNo],0)=mryes then
    begin
     with dmFicha.cdsRecTipoLesao do
      begin
       Post;
       if ApplyUpdates(0)<>0 then
       CancelUpdates;
       MessageDlg('Gravado com Sucesso!',mtInformation,[mbOk],0);
       frmFichadeCadastro.Button22Click(Self);
      end;
    dmFicha.cdsRecTipoLesao.Cancel;
    dmFicha.cdsRecTipoLesao.CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.Button9Click(Sender: TObject);
begin
 dmFicha.cdsCadTipoLesao.Refresh;
  with dmFicha.cdsCadTipoLesao do
    begin
      DBComboBox3.SetFocus;
      append;
      dmFicha.cdsCadTipoLesaoDIAG_TIPO_LESOES_COD_PESS.Value:=frmFichadeCadastro.getCodPess;
    end;
end;

procedure TfrmFichadeCadastro.dbcTipoPacienteExit(Sender: TObject);
begin
  if dbcTipoPaciente.Text='ESCOLARES' then
  begin
      DbEdit84.Enabled:=True;
      DbEdit85.Enabled:=True;
      DbEdit86.Visible:=True;
      label242.Enabled:=True;
      label243.Enabled:=True;
      label244.Visible:=True;
  end else
  begin
      DbEdit84.Enabled:=false;
      DbEdit85.Enabled:=false;
      DbEdit86.Visible:=false;
      label242.Enabled:=false;
      label243.Enabled:=false;
      label244.Visible:=false;
  end;
end;
{Procedure para calcular a idade a partir da data de nascimento}
procedure TfrmFichadeCadastro.DBEdit1Exit(Sender: TObject);
begin
  try
    strtodate(DBEDIT1.Text); //-- Verifica se a data é valida
  except
    messagedlg('Data de nascimento inválida!', MTERROR, [MBOK], 0);
    abort;
  end;
  DBEdit3.Text:= inttoStr(Trunc((Date - StrToDate(DBEDIT1.Text))/365.25));
end;

procedure TfrmFichadeCadastro.DBGrid1DblClick(Sender: TObject);
begin
  LocalizadoComTipoLesao;
end;

procedure TfrmFichadeCadastro.DBGrid2DblClick(Sender: TObject);
begin
  LocalizadoContaHansPess;
end;

procedure TfrmFichadeCadastro.DBGrid3DblClick(Sender: TObject);
begin
  LocalizadoRecTipoLesao;
end;

procedure TfrmFichadeCadastro.DBGrid4DblClick(Sender: TObject);
begin
  LocalizadoTipoLesao;
end;

procedure TfrmFichadeCadastro.DBGrid5DblClick(Sender: TObject);
begin
  LocalizadoRecTronAfe;
end;

procedure TfrmFichadeCadastro.DBGrid6DblClick(Sender: TObject);
begin
LocalizadoComunicante;
end;

procedure TfrmFichadeCadastro.btnSalvarContHansPessClick(Sender: TObject);
begin
 dmFicha.cdsCadContHansPess.Refresh;
  with dmFicha.cdsCadContHansPess do
    begin
      dbedit25.SetFocus;
      append;
      dmFicha.cdsCadContHansPessCONTATO_HANSENIASE_PESS_COD_PES.Value:=frmFichadeCadastro.getCodPess;
    end;
end;

procedure TfrmFichadeCadastro.BitBtn2Click(Sender: TObject);
begin
  try
    frmResidAnteriores:=TfrmResidAnteriores.Create(Self);
    frmResidAnteriores.ShowModal;
  finally
    frmResidAnteriores.Free;
    frmResidAnteriores:=nil;
  end;
end;

procedure TfrmFichadeCadastro.BitBtn3Click(Sender: TObject);
begin
try
  frmFotosRecidiva:=TfrmFotosRecidiva.Create(Self);
  frmFotosRecidiva.ShowModal;
finally
  frmFotosRecidiva.Free;
  frmFotosRecidiva:=nil;
end;
end;

procedure TfrmFichadeCadastro.BitBtn6Click(Sender: TObject);
begin
  try
    frmFotoComunicante:=TfrmFotoComunicante.Create(Self);
    frmFotoComunicante.ShowModal;
  finally
    frmFotoComunicante.Free;
    frmFotoComunicante:=nil;
  end;
end;

procedure TfrmFichadeCadastro.btnSalvarLabClick(Sender: TObject);
begin
dmFicha.cdsCadLaboratorioLAB_COD_PESS.Value:=getCodPess;
 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsCadLaboratorio.Post;
    if dmFicha.cdsCadLaboratorio.ApplyUpdates(0)<>0 then
      dmFicha.cdsCadLaboratorio.CancelUpdates;
      btnSalvarLab.Enabled:=False;
      btnAlterarLab.Enabled:=true;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
    else
      begin
        dmFicha.cdsCadLaboratorio.Cancel;
        dmFicha.cdsCadLaboratorio.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.btnSalvarNeuroClick(Sender: TObject);
begin
// Salva o Código do Paciênte
dmFicha.cdsCadNeuroNEUR_COD_PESS.Value:=getCodPess;
//Salvar os Pontos de monofilamento das mãos e pés
 dmFicha.cdsCadNeuroNEUR_MD1_INSP.Value:=MD1;
 dmFicha.cdsCadNeuroNEUR_MD2_INSP.Value:=MD2;
 dmFicha.cdsCadNeuroNEUR_MD3_INSP.Value:=MD3;
 dmFicha.cdsCadNeuroNEUR_MD4_INSP.Value:=MD4;
 dmFicha.cdsCadNeuroNEUR_MD5_INSP.Value:=MD5;
 dmFicha.cdsCadNeuroNEUR_MD6_INSP.Value:=MD6;
 dmFicha.cdsCadNeuroNEUR_MD7_INSP.Value:=MD7;
 dmFicha.cdsCadNeuroNEUR_ME1_INSP.Value:=ME1;
 dmFicha.cdsCadNeuroNEUR_ME2_INSP.Value:=ME2;
 dmFicha.cdsCadNeuroNEUR_ME3_INSP.Value:=ME3;
 dmFicha.cdsCadNeuroNEUR_ME4_INSP.Value:=ME4;
 dmFicha.cdsCadNeuroNEUR_ME5_INSP.Value:=ME5;
 dmFicha.cdsCadNeuroNEUR_ME6_INSP.Value:=ME6;
 dmFicha.cdsCadNeuroNEUR_ME7_INSP.Value:=ME7;
 dmFicha.cdsCadNeuroNEUR_PD1_INSP.Value:=PD1;
 dmFicha.cdsCadNeuroNEUR_PD2_INSP.Value:=PD2;
 dmFicha.cdsCadNeuroNEUR_PD3_INSP.Value:=PD3;
 dmFicha.cdsCadNeuroNEUR_PD4_INSP.Value:=PD4;
 dmFicha.cdsCadNeuroNEUR_PD5_INSP.Value:=PD5;
 dmFicha.cdsCadNeuroNEUR_PD6_INSP.Value:=PD6;
 dmFicha.cdsCadNeuroNEUR_PD7_INSP.Value:=PD7;
 dmFicha.cdsCadNeuroNEUR_PD8_INSP.Value:=PD8;
 dmFicha.cdsCadNeuroNEUR_PD9_INSP.Value:=PD9;
 dmFicha.cdsCadNeuroNEUR_PD10_INSP.Value:=PD10;
 dmFicha.cdsCadNeuroNEUR_PE1_INSP.Value:=PE1;
 dmFicha.cdsCadNeuroNEUR_PE2_INSP.Value:=PE2;
 dmFicha.cdsCadNeuroNEUR_PE3_INSP.Value:=PE3;
 dmFicha.cdsCadNeuroNEUR_PE4_INSP.Value:=PE4;
 dmFicha.cdsCadNeuroNEUR_PE5_INSP.Value:=PE5;
 dmFicha.cdsCadNeuroNEUR_PE6_INSP.Value:=PE6;
 dmFicha.cdsCadNeuroNEUR_PE7_INSP.Value:=PE7;
 dmFicha.cdsCadNeuroNEUR_PE8_INSP.Value:=PE8;
 dmFicha.cdsCadNeuroNEUR_PE9_INSP.Value:=PE9;
 dmFicha.cdsCadNeuroNEUR_PE10_INSP.Value:=PE10;

 if MessageDlg('Deseja Gravar este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    dmFicha.cdsCadNeuro.Post;
    if dmFicha.cdsCadNeuro.ApplyUpdates(0)<>0 then
      dmFicha.cdsCadNeuro.CancelUpdates;
      btnSalvarNeuro.Enabled:=False;
      btnAlterarNeuro.Enabled:=true;
      MessageDlg('GRAVADO COM SUCESSO!', mtconfirmation,[mbClose],0);//exibe mensagem depois da gravação
    end
    else
      begin
        dmFicha.cdsCadNeuro.Cancel;
        dmFicha.cdsCadNeuro.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.btnCancelarClick(Sender: TObject);
begin
  dmFicha.cdsCadPessoal.Cancel;
  dmFicha.cdsCadPessoal.CancelUpdates;
  dmFicha.cdsCadDOMICILIAR.Cancel;
  dmFicha.cdsCadDOMICILIAR.CancelUpdates;
  dmFicha.cdsCadContHans.Cancel;
  dmFicha.cdsCadContHans.CancelUpdates;
  dmFicha.cdsCadDiagnostico.Cancel;
  dmFicha.cdsCadDiagnostico.CancelUpdates;
  dmFicha.cdsCadLaboratorio.Cancel;
  dmFicha.cdsCadLaboratorio.CancelUpdates;
  dmFicha.cdsCadTrat.Cancel;
  dmFicha.cdsCadTrat.CancelUpdates;
  dmFicha.cdsCadRecidiva.Cancel;
  dmFicha.cdsCadRecidiva.CancelUpdates;
  dmFicha.CdsCadComunicante.Cancel;
  dmFicha.cdsCadComunicante.CancelUpdates;
  dmFicha.cdsCadNeuro.Cancel;
  dmFicha.cdsCadNeuro.CancelUpdates;
  dmFicha.cdsAnotacoes.Cancel;
  dmFicha.cdsAnotacoes.CancelUpdates;
  btnSalvarPessoal.Enabled:=False;
  btnAlterar.Enabled:=True;
  btnCancelar.Enabled:=False;
  btnExcluir.Enabled:=True;
  btnNovo.Enabled:=True;
  btnPesquisar.Enabled:=True;
  btnsair.Enabled:=True;
end;

procedure TfrmFichadeCadastro.btnCancelarComunicanteClick(Sender: TObject);
begin
with dmFicha.cdscadComunicante do
  begin
    Cancel;
    CancelUpdates;
  end;
end;

procedure TfrmFichadeCadastro.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir este Registro?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        dmFicha.cdsCadPessoal.Delete;
        dmFicha.cdsCadDOMICILIAR.Delete;
        dmFicha.cdsCadContHans.Delete;
          if dmFicha.cdsCadPessoal.ApplyUpdates(0)<>0 then
            dmFicha.cdsCadPessoal.CancelUpdates;
            btnSalvarPessoal.Enabled:=False;
            btnAlterar.Enabled:=False;
            btnCancelar.Enabled:=False;
            btnExcluir.Enabled:=False;
            btnNovo.Enabled:=True;
            btnPesquisar.Enabled:=True;
            btnsair.Enabled:=True;
           end
        else
      begin
        dmFicha.cdsCadPessoal.Cancel;
        dmFicha.cdsCadPessoal.CancelUpdates;
        dmFicha.cdsCadDOMICILIAR.Cancel;
        dmFicha.cdsCadDOMICILIAR.CancelUpdates;
        dmFicha.cdsCadContHans.Cancel;
        dmFicha.cdsCadContHans.CancelUpdates;
      end;
end;

procedure TfrmFichadeCadastro.btnNovoClick(Sender: TObject);
var
  Numpront:integer; //Armazena o ultimo Numero de Prontuario
begin
{Condicional para envitar que seja aberto uma nova ficha de paciente durante o cadastro
das outras Abas }
if MessageDlg('Deseja Mesmo Abrir Um NOVO FORMULÁRIO?' ,mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    PageControl1.ActivePage:=TabSheet1;

    //ATUALIZA OS DATASET'S ANTES DE COLOCALOS EM MODO DE EDIÇÃO
    dmFicha.cdsCadPessoal.Refresh;
    dmFicha.cdsCadDOMICILIAR.Refresh;
    dmFicha.cdsCadContHans.Refresh;
    dmFicha.cdsCadDiagnostico.Refresh;
    dmFicha.cdsCadLaboratorio.Refresh;
    dmFicha.cdsCadTrat.Refresh;
    dmFicha.cdsCadRecidiva.Refresh;
    dmFicha.cdsCadNeuro.Refresh;
    dmFicha.cdsAnotacoes.Refresh;
    dmFicha.cdsCadComunicante.Refresh;

    dmFicha.SQLQueryPessoal.Open;
    dmFicha.SQLQueryComunicante.Open;
    dmFicha.SQLQueryRecidiva.Open;
    dmFicha.SQLQueryDiagnostico.Open;
    dmFicha.SQLQueryNumPront.Open;
    dmFicha.SQLQueryPessoal.Refresh;
    dmFicha.SQLQueryComunicante.Refresh;
    dmFicha.SQLQueryRecidiva.Refresh;
    dmFicha.SQLQueryDiagnostico.Refresh;
    dmFicha.SQLQueryNumPront.Refresh;

    lbCODIGO.Caption:='NOVO REGISTRO';

    //COLOCA OS DATASET'S EM MODO DE EDIÇÃO
    dmFicha.cdsCadPessoal.Append;// Infor Pessoais
    dmFicha.cdsCadDOMICILIAR.Append;//Infor Domiciliares
    dmFicha.cdsCadContHans.Append; //Infor Contato com a Hanseniase
    dmFicha.cdsCadDiagnostico.Append;//Infor Diagnostico
    dmFicha.cdsCadLaboratorio.Append;//Infor Laboratorios
    dmFicha.cdsCadTrat.Append;//Infor tratamento
    dmFicha.cdsCadRecidiva.Append;//infor Recidiva
    dmFicha.cdsCadNeuro.Append;//infor Neurologica
    dmFicha.cdsAnotacoes.Append;

    //Setar com false os chekbox's da avaliação Neurologica
    chbMdGarraRigida.Checked:=false;
    chbMdFerrida.Checked:=false;
    chbMdRabisorvicao.Checked:=false;
    chbMdGarraMovel.Checked:=false;
    chbMeGarraRigida.Checked:=false;
    chbMeFerida.Checked:=false;
    chbMeReabisorvicao.Checked:=false;
    chbMeGarraMovel.Checked:=false;
    chbPdGarraRigida.Checked:=false;
    chbPdFerida.Checked:=false;
    chbPdReabsorvicao.Checked:=false;
    chbPdGarraMovel.Checked:=false;
    chbPeGarraRigida.Checked:=false;
    chbPeFerida.Checked:=false;
    chbPeReabsorvicao.Checked:=false;
    chbPeGarraMovel.Checked:=false;


    dbedit2.SetFocus;
    btnSalvarPessoal.Enabled:=True;
    btnSalvarDiagnostico.Enabled:=true;
    btnSalvarDOMICILIAR.Enabled:=true;
    btnSalvarTrat.Enabled:=true;
    btnSalvarContHans.Enabled:=true;
    btnSalvarRecidiva.Enabled:=true;
    btnSalvarNeuro.Enabled:=true;
    btnSalvarLab.Enabled:=true;
    btnAlterar.Enabled:=False;
    btnCancelar.Enabled:=True;
    btnExcluir.Enabled:=False;
    btnNovo.Enabled:=False;
    btnPesquisar.Enabled:=False;
    btnsair.Enabled:=False;
    dbcTipoPaciente.Enabled:=True;
    dmFicha.cdsCadPessoalPESS_DATA_CAD.Value:=FormatDatetime('dd"/"mm"/"yyyy',now);
    NumPront:=StrToInt(GetNumPront);
    DBENumPront.Text:=intToStr(NumPront+1); //Gera o Novo Numero do Prontuario

    //Inicia os Pontos do Monofilamento com vazio

    imgDVerde1.Visible:=FALSE;imgDVerde2.Visible:=FALSE;imgDVerde3.Visible:=FALSE;imgDVerde4.Visible:=FALSE;imgDVerde5.Visible:=FALSE;imgDVerde6.Visible:=FALSE;imgDVerde7.Visible:=FALSE;
    imgDAzul1.Visible:=FALSE;imgDAzul2.Visible:=FALSE;imgDAzul3.Visible:=FALSE;imgDAzul4.Visible:=FALSE;imgDAzul5.Visible:=FALSE;imgDAzul6.Visible:=FALSE;imgDAzul7.Visible:=FALSE;
    imgDLilas1.Visible:=FALSE;imgDLilas2.Visible:=FALSE;imgDLilas3.Visible:=FALSE;imgDLilas4.Visible:=FALSE;imgDLilas5.Visible:=FALSE;imgDLilas6.Visible:=FALSE;imgDLilas7.Visible:=FALSE;
    imgDVermelho1.Visible:=FALSE;imgDVermelho2.Visible:=FALSE;imgDVermelho3.Visible:=FALSE;imgDVermelho4.Visible:=FALSE;imgDVermelho5.Visible:=FALSE;imgDVermelho6.Visible:=FALSE;imgDVermelho7.Visible:=FALSE;
    imgDVermCruzado1.Visible:=FALSE;imgDVermCruzado2.Visible:=FALSE;imgDVermCruzado3.Visible:=FALSE;imgDVermCruzado4.Visible:=FALSE;imgDVermCruzado5.Visible:=FALSE;imgDVermCruzado6.Visible:=FALSE;imgDVermCruzado7.Visible:=FALSE;
    imgDVermAberto1.Visible:=FALSE;imgDVermAberto2.Visible:=FALSE;imgDVermAberto3.Visible:=FALSE;imgDVermAberto4.Visible:=FALSE;imgDVermAberto5.Visible:=FALSE;imgDVermAberto6.Visible:=FALSE;imgDVermAberto7.Visible:=FALSE;
    imgDPreto1.Visible:=FALSE;imgDPreto2.Visible:=FALSE;imgDPreto3.Visible:=FALSE;imgDPreto4.Visible:=FALSE;imgDPreto5.Visible:=FALSE;imgDPreto6.Visible:=FALSE;imgDPreto7.Visible:=FALSE;
    imgDVazio1.Visible:=True;imgDVazio2.Visible:=True;imgDVazio3.Visible:=True;imgDVazio4.Visible:=True;imgDVazio5.Visible:=True;imgDVazio6.Visible:=True;imgDVazio7.Visible:=True;

    imgEVerde1.Visible:=FALSE;imgEVerde2.Visible:=FALSE;imgEVerde3.Visible:=FALSE;imgEVerde4.Visible:=FALSE;imgEVerde5.Visible:=FALSE;imgEVerde6.Visible:=FALSE;imgEVerde7.Visible:=FALSE;
    imgEAzul1.Visible:=FALSE;imgEAzul2.Visible:=FALSE;imgEAzul3.Visible:=FALSE;imgEAzul4.Visible:=FALSE;imgEAzul5.Visible:=FALSE;imgEAzul6.Visible:=FALSE;imgEAzul7.Visible:=FALSE;
    imgELilas1.Visible:=FALSE;imgELilas2.Visible:=FALSE;imgELilas3.Visible:=FALSE;imgELilas4.Visible:=FALSE;imgELilas5.Visible:=FALSE;imgELilas6.Visible:=FALSE;imgELilas7.Visible:=FALSE;
    imgEVermelho1.Visible:=FALSE;imgEVermelho2.Visible:=FALSE;imgEVermelho3.Visible:=FALSE;imgEVermelho4.Visible:=FALSE;imgEVermelho5.Visible:=FALSE;imgEVermelho6.Visible:=FALSE;imgEVermelho7.Visible:=FALSE;
    imgEVermCruzado1.Visible:=FALSE;imgEVermCruzado2.Visible:=FALSE;imgEVermCruzado3.Visible:=FALSE;imgEVermCruzado4.Visible:=FALSE;imgEVermCruzado5.Visible:=FALSE;imgEVermCruzado6.Visible:=FALSE;imgEVermCruzado7.Visible:=FALSE;
    imgEVermAberto1.Visible:=FALSE;imgEVermAberto2.Visible:=FALSE;imgEVermAberto3.Visible:=FALSE;imgEVermAberto4.Visible:=FALSE;imgEVermAberto5.Visible:=FALSE;imgEVermAberto6.Visible:=FALSE;imgEVermAberto7.Visible:=FALSE;
    imgEPreto1.Visible:=FALSE;imgEPreto2.Visible:=FALSE;imgEPreto3.Visible:=FALSE;imgEPreto4.Visible:=FALSE;imgEPreto5.Visible:=FALSE;imgEPreto6.Visible:=FALSE;imgEPreto7.Visible:=FALSE;
    imgEVazio1.Visible:=True;imgEVazio2.Visible:=True;imgEVazio3.Visible:=True;imgEVazio4.Visible:=True;imgEVazio5.Visible:=True;imgEVazio6.Visible:=True;imgEVazio7.Visible:=True;

    imgPDVerde1.Visible:=FALSE;imgPDVerde2.Visible:=FALSE;imgPDVerde3.Visible:=FALSE;imgPDVerde4.Visible:=FALSE;imgPDVerde5.Visible:=FALSE;imgPDVerde6.Visible:=FALSE;imgPDVerde7.Visible:=FALSE;imgPDVerde8.Visible:=FALSE;imgPDVerde9.Visible:=FALSE;imgPDVerde10.Visible:=FALSE;
    imgPDAzul1.Visible:=FALSE;imgPDAzul2.Visible:=FALSE;imgPDAzul3.Visible:=FALSE;imgPDAzul4.Visible:=FALSE;imgPDAzul5.Visible:=FALSE;imgPDAzul6.Visible:=FALSE;imgPDAzul7.Visible:=FALSE;imgPDAzul8.Visible:=FALSE;ImgPDAzul9.Visible:=FALSE;imgPDAzul10.Visible:=FALSE;
    imgPDLilas1.Visible:=FALSE;imgPDLilas2.Visible:=FALSE;imgPDLilas3.Visible:=FALSE;imgPDLilas4.Visible:=FALSE;imgPDLilas5.Visible:=FALSE;imgPDLilas6.Visible:=FALSE;imgPDLilas7.Visible:=FALSE;imgPDLilas8.Visible:=FALSE;imgPDLilas9.Visible:=FALSE;imgPDLilas10.Visible:=FALSE;
    imgPDVermelho1.Visible:=FALSE;imgPDVermelho2.Visible:=FALSE;imgPDVermelho3.Visible:=FALSE;imgPDVermelho4.Visible:=FALSE;imgPDVermelho5.Visible:=FALSE;imgPDVermelho6.Visible:=FALSE;imgPDVermelho7.Visible:=FALSE;imgPDVermelho8.Visible:=FALSE;imgPDVermelho9.Visible:=FALSE;imgPDVermelho10.Visible:=FALSE;
    imgPDVermCruzado1.Visible:=FALSE;imgPDVermCruzado2.Visible:=FALSE;imgPDVermCruzado3.Visible:=FALSE;imgPDVermCruzado4.Visible:=FALSE;imgPDVermCruzado5.Visible:=FALSE;imgPDVermCruzado6.Visible:=FALSE;imgPDVermCruzado7.Visible:=FALSE;imgPDVermCruzado8.Visible:=FALSE;imgPDVermCruzado9.Visible:=FALSE;imgPDVermCruzado10.Visible:=FALSE;
    imgPDVermAberto1.Visible:=FALSE;imgPDVermAberto2.Visible:=FALSE;imgPDVermAberto3.Visible:=FALSE;imgPDVermAberto4.Visible:=FALSE;imgPDVermAberto5.Visible:=FALSE;imgPDVermAberto6.Visible:=FALSE;imgPDVermAberto7.Visible:=FALSE;imgPDVermAberto8.Visible:=FALSE;imgPDVermAberto9.Visible:=FALSE;imgPDVermAberto10.Visible:=FALSE;
    imgPDPreto1.Visible:=FALSE;imgPDPreto2.Visible:=FALSE;imgPDPreto3.Visible:=FALSE;imgPDPreto4.Visible:=FALSE;imgPDPreto5.Visible:=FALSE;imgPDPreto6.Visible:=FALSE;imgPDPreto7.Visible:=FALSE;imgPDPreto8.Visible:=FALSE;imgPDPreto9.Visible:=FALSE;imgPDPreto10.Visible:=FALSE;
    imgPDVazio1.Visible:=True;imgPDVazio2.Visible:=True;imgPDVazio3.Visible:=True;imgPDVazio4.Visible:=True;imgPDVazio5.Visible:=True;imgPDVazio6.Visible:=True;imgPDVazio7.Visible:=True;imgPDVazio8.Visible:=True;imgPDVazio9.Visible:=True;imgPDVazio10.Visible:=True;

    imgPEVerde1.Visible:=FALSE;imgPEVerde2.Visible:=FALSE;imgPEVerde3.Visible:=FALSE;imgPEVerde4.Visible:=FALSE;imgPEVerde5.Visible:=FALSE;imgPEVerde6.Visible:=FALSE;imgPEVerde7.Visible:=FALSE;imgPEVerde8.Visible:=FALSE;imgPEVerde9.Visible:=FALSE;imgPEVerde10.Visible:=FALSE;
    imgPEAzul1.Visible:=FALSE;imgPEAzul2.Visible:=FALSE;imgPEAzul3.Visible:=FALSE;imgPEAzul4.Visible:=FALSE;imgPEAzul5.Visible:=FALSE;imgPEAzul6.Visible:=FALSE;imgPEAzul7.Visible:=FALSE;imgPEAzul8.Visible:=FALSE;ImgPEAzul9.Visible:=FALSE;imgPEAzul10.Visible:=FALSE;
    imgPELilas1.Visible:=FALSE;imgPELilas2.Visible:=FALSE;imgPELilas3.Visible:=FALSE;imgPELilas4.Visible:=FALSE;imgPELilas5.Visible:=FALSE;imgPELilas6.Visible:=FALSE;imgPELilas7.Visible:=FALSE;imgPELilas8.Visible:=FALSE;imgPELilas9.Visible:=FALSE;imgPELilas10.Visible:=FALSE;
    imgPEVermelho1.Visible:=FALSE;imgPEVermelho2.Visible:=FALSE;imgPEVermelho3.Visible:=FALSE;imgPEVermelho4.Visible:=FALSE;imgPEVermelho5.Visible:=FALSE;imgPEVermelho6.Visible:=FALSE;imgPEVermelho7.Visible:=FALSE;imgPEVermelho8.Visible:=FALSE;imgPEVermelho9.Visible:=FALSE;imgPEVermelho10.Visible:=FALSE;
    imgPEVermCruzado1.Visible:=FALSE;imgPEVermCruzado2.Visible:=FALSE;imgPEVermCruzado3.Visible:=FALSE;imgPEVermCruzado4.Visible:=FALSE;imgPEVermCruzado5.Visible:=FALSE;imgPEVermCruzado6.Visible:=FALSE;imgPEVermCruzado7.Visible:=FALSE;imgPEVermCruzado8.Visible:=FALSE;imgPEVermCruzado9.Visible:=FALSE;imgPEVermCruzado10.Visible:=FALSE;
    imgPEVermAberto1.Visible:=FALSE;imgPEVermAberto2.Visible:=FALSE;imgPEVermAberto3.Visible:=FALSE;imgPEVermAberto4.Visible:=FALSE;imgPEVermAberto5.Visible:=FALSE;imgPEVermAberto6.Visible:=FALSE;imgPEVermAberto7.Visible:=FALSE;imgPEVermAberto8.Visible:=FALSE;imgPEVermAberto9.Visible:=FALSE;imgPEVermAberto10.Visible:=FALSE;
    imgPEPreto1.Visible:=FALSE;imgPEPreto2.Visible:=FALSE;imgPDPreto3.Visible:=FALSE;imgPEPreto4.Visible:=FALSE;imgPEPreto5.Visible:=FALSE;imgPEPreto6.Visible:=FALSE;imgPEPreto7.Visible:=FALSE;imgPEPreto8.Visible:=FALSE;imgPEPreto9.Visible:=FALSE;imgPEPreto10.Visible:=FALSE;
    imgPEVazio1.Visible:=True;imgPEVazio2.Visible:=True;imgPEVazio3.Visible:=True;imgPEVazio4.Visible:=True;imgPEVazio5.Visible:=True;imgPEVazio6.Visible:=True;imgPEVazio7.Visible:=True;imgPEVazio8.Visible:=True;imgPEVazio9.Visible:=True;imgPEVazio10.Visible:=True;

    //Desabilita novamente as Abas até que as informações do Novo Paciente sejam salvas
    TabSheet2.Enabled:=False;
    TabSheet3.Enabled:=False;
    TabSheet4.Enabled:=False;
    TabSheet5.Enabled:=False;
    TabSheet6.Enabled:=False;
    TabSheet7.Enabled:=False;
    TabSheet8.Enabled:=False;
    TabSheet14.Enabled:=False;
  end;
end;

procedure TfrmFichadeCadastro.btnNovoComunicanteClick(Sender: TObject);
begin
 dmFicha.cdsCadComunicante.Refresh;
  with dmFicha.cdsCadComunicante do
    begin
      append;
      DBEdit61.SetFocus;
      btnSalvarComunicante.Enabled:=TRUE;
      case Cont of
        0:DBEdit80.Text:='A'+IntToStr(CodNumPront);
        1:DBEdit80.Text:='B'+IntToStr(CodNumPront);
        2:DBEdit80.Text:='C'+IntToStr(CodNumPront);
        3:DBEdit80.Text:='D'+IntToStr(CodNumPront);
        4:DBEdit80.Text:='E'+IntToStr(CodNumPront);
        5:DBEdit80.Text:='F'+IntToStr(CodNumPront);
        6:DBEdit80.Text:='G'+IntToStr(CodNumPront);
        7:DBEdit80.Text:='H'+IntToStr(CodNumPront);
        8:DBEdit80.Text:='I'+IntToStr(CodNumPront);
        9:DBEdit80.Text:='J'+IntToStr(CodNumPront);
        10:DBEdit80.Text:='L'+IntToStr(CodNumPront);
        11:DBEdit80.Text:='M'+IntToStr(CodNumPront);
        12:DBEdit80.Text:='N'+IntToStr(CodNumPront);
        13:DBEdit80.Text:='O'+IntToStr(CodNumPront);
        14:DBEdit80.Text:='P'+IntToStr(CodNumPront);
        15:DBEdit80.Text:='Q'+IntToStr(CodNumPront);
        16:DBEdit80.Text:='R'+IntToStr(CodNumPront);
        17:DBEdit80.Text:='S'+IntToStr(CodNumPront);
      end;
    end;
end;

procedure TfrmFichadeCadastro.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFichadeCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if MessageDlg('Deseja realmente sair da Ficha de Cadastro?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes then
    begin
    //libera a memoria  e fecha ou Não a Tela
    Action := caFree; //ação do objeto TCloseAction para fechar a tela
    end
    else
    Action := caNone ; //ação do objeto TCloseAction para não fechar a tela
end;

procedure TfrmFichadeCadastro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  //FECHA OS DATASET'S
  dmFicha.cdsCadPessoal.Close;
  dmFicha.cdsCadDOMICILIAR.Close;
  dmFicha.cdsCadContHans.Close;
  dmFicha.cdsCadContHansPess.Close;
  dmFicha.cdsCadDiagnostico.Close;
  dmFicha.cdsCadTipoLesao.Close;
  dmFicha.cdsCadLaboratorio.Close;
  dmFicha.cdsCadTrat.Close;
  dmFicha.cdsCadRecidiva.close;
  dmFicha.cdsRecTipoLesao.Close;
  dmFicha.cdsRecTroncAfe.Close;
  dmFicha.cdsCadComunicante.Close;
  dmFicha.cdsCadComTipoLesao.Close;
  dmFicha.cdsCadNeuro.Close;
  dmFicha.cdsAnotacoes.Close;
end;

procedure TfrmFichadeCadastro.FormCreate(Sender: TObject);
begin
//ABRI OS DATASET'S
  if not assigned(dmFicha) then
    begin
      dmFicha:=TdmFicha.Create(Self);
      dmFicha.cdsCadPessoal.Open;
      dmFicha.cdsCadDOMICILIAR.Open;
      dmFicha.cdsCadContHans.Open;
      dmFicha.cdsCadContHansPess.Open;
      dmFicha.cdsCadDiagnostico.Open;
      dmFicha.cdsCadTipoLesao.Open;
      dmFicha.cdsCadLaboratorio.Open;
      dmFicha.cdsCadTrat.Open;
      dmFicha.cdsCadRecidiva.Open;
      dmFicha.cdsRecTipoLesao.Open;
      dmFicha.cdsRecTroncAfe.Open;
      dmFicha.cdsCadComunicante.Open;
      dmFicha.cdsCadComTipoLesao.Open;
      dmFicha.cdsCadNeuro.Open;
      dmFicha.cdsAnotacoes.Open;
    end;
end;

procedure TfrmFichadeCadastro.FormDestroy(Sender: TObject);
begin
  dmFicha.Free;
  dmFicha:=nil;
end;

procedure TfrmFichadeCadastro.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage:=TabSheet1;
  lbCODIGO.Caption:='0'+intToStr(dmFicha.cdsCadPessoalID_PESS.Value);
end;

function TfrmFichadeCadastro.getCodComTipoLesao: integer;// Códio do tipo da lesão
begin
  dmFicha.SQLQueryComTipoLesao.Open;
  Result:=dmFicha.SQLQueryComTipoLesaoCODIGO.Value;
end;

function TfrmFichadeCadastro.getCodDiag: integer;
begin
  dmFicha.SQLQueryDiagnostico.Open;
  Result:=dmFicha.SQLQueryDiagnosticoCODIGO.Value;
end;

function TfrmFichadeCadastro.getCodigoComunicante: integer;  //Código do Comunicante
begin
  dmFicha.SQLQueryComunicante.Open;
  Result:=dmFicha.SQLQueryComunicanteCODIGO.Value;
end;

function TfrmFichadeCadastro.getCodPess: integer;
begin
  dmFicha.SQLQueryPessoal.Open;
  Result:=dmFicha.SQLQueryPessoalCODIGO.Value;
end;

function TfrmFichadeCadastro.getCodRecidiva: integer;
begin
  dmFicha.SQLQueryRecidiva.Open;
  Result:=dmFicha.SQLQueryRecidivaCODIGO.Value;
end;

function TfrmFichadeCadastro.getNumPront: String;
begin
  dmFicha.SQLQueryNUMPRONT.Open;
  Result:=dmFicha.SQLQueryNUMPRONTMAX.Value;
end;

procedure TfrmFichadeCadastro.imgDVazio1Click(Sender: TObject);
begin
  try
    frmCoresMD1:=TfrmCoresMD1.Create(Self);
    frmCoresMD1.ShowModal;
  finally
    frmCoresMD1.Free;
    frmCoresMD1:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgDVazio2Click(Sender: TObject);
begin
  try
    frmCoresMD2:=TfrmCoresMD2.Create(Self);
    frmCoresMD2.ShowModal;
  finally
    frmCoresMD2.Free;
    frmCoresMD2:=nil
  end;
end;

procedure TfrmFichadeCadastro.imgDVazio3Click(Sender: TObject);
begin
  try
    frmCoresMD3:=TfrmCoresMD3.Create(Self);
    frmCoresMD3.ShowModal;
  finally
    frmCoresMD3.Free;
    frmCoresMD3:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgDVazio4Click(Sender: TObject);
begin
  try
    frmCoresMD4:=TfrmCoresMD4.Create(Self);
    frmCoresMD4.ShowModal;
  finally
    frmCoresMD4.Free;
    frmCoresMD4:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgDVazio5Click(Sender: TObject);
begin
  try
    frmCoresMD5:=TfrmCoresMD5.Create(Self);
    frmCoresMD5.ShowModal;
  finally
    frmCoresMD5.Free;
    frmCoresMD5:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgDVazio6Click(Sender: TObject);
begin
  try
    frmCoresMD6:=TfrmCoresMD6.Create(Self);
    frmCoresMD6.ShowModal;
  finally
    frmCoresMD6.Free;
    frmCoresMD6:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgDVazio7Click(Sender: TObject);
begin
  try
    frmCoresMD7:=TfrmCoresMD7.Create(Self);
    frmCoresMD7.ShowModal;
  finally
    frmCoresMD7.Free;
    frmCoresMD7:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgEVazio1Click(Sender: TObject);
begin
  TRY
    frmCoresME1:=TfrmCoresME1.Create(Self);
    frmCoresME1.ShowModal;
  FINALLY
    frmCoresME1.Free;
    frmCoresME1:=nil;
  END;
end;

procedure TfrmFichadeCadastro.imgEVazio2Click(Sender: TObject);
begin
  try
    frmCoresME2:=TfrmCoresME2.Create(Self);
    frmCoresME2.ShowModal;
  finally
    frmCoresME2.Free;
    frmCoresME2:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgEVazio3Click(Sender: TObject);
begin
  try
    frmCoresME3:=TfrmCoresME3.Create(Self);
    frmCoresME3.ShowModal;
  finally
    frmCoresME3.Free;
    frmCoresME3:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgEVazio4Click(Sender: TObject);
begin
  try
    frmCoresME4:=TfrmCoresME4.Create(Self);
    frmCoresME4.ShowModal;
  finally
    frmCoresME4.Free;
    frmCoresME4:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgEVazio5Click(Sender: TObject);
begin
  try
    frmCoresME5:=TfrmCoresME5.Create(Self);
    frmCoresME5.ShowModal;
  finally
    frmCoresME5.Free;
    frmCoresME5:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgEVazio6Click(Sender: TObject);
begin
  try
    frmCoresME6:=TfrmCoresME6.Create(Self);
    frmCoresME6.ShowModal;
  finally
    frmCoresME6.Free;
    frmCoresME6:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgEVazio7Click(Sender: TObject);
begin
  try
    frmCoresME7:=TfrmCoresME7.Create(Self);
    frmCoresME7.ShowModal;
  finally
    frmCoresME7.Free;
    frmCoresME7:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio10Click(Sender: TObject);
begin
  try
    frmCoresPD10:=TfrmCoresPD10.Create(Self);
    frmCoresPD10.ShowModal;
  finally
    frmCoresPD10.Free;
    frmCoresPD10:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio1Click(Sender: TObject);
begin
  TRY
    frmCoresPD1:=TfrmCoresPD1.Create(Self);
    frmCoresPD1.ShowModal;
  FINALLY
    frmCoresPD1.Free;
    frmCoresPD1:=nil;
  END;
end;

procedure TfrmFichadeCadastro.imgPDVazio2Click(Sender: TObject);
begin
  try
    frmCoresPD2:=TfrmCoresPD2.Create(Self);
    frmCoresPD2.ShowModal;
  finally
    frmCoresPD2.Free;
    frmCoresPD2:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio3Click(Sender: TObject);
begin
  try
    frmCoresPD3:=TfrmCoresPD3.Create(Self);
    frmCoresPD3.ShowModal;
  finally
    frmCoresPD3.Free;
    frmCoresPD3:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio4Click(Sender: TObject);
begin
  try
    frmCoresPD4:=TfrmCoresPD4.Create(Self);
    frmCoresPD4.ShowModal;
  finally
    frmCoresPD4.Free;
    frmCoresPD4:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio5Click(Sender: TObject);
begin
  try
    frmCoresPD5:=TfrmCoresPD5.Create(Self);
    frmCoresPD5.ShowModal;
  finally
    frmCoresPD5.Free;
    frmCoresPD5:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio6Click(Sender: TObject);
begin
  try
    frmCoresPD6:=TfrmCoresPD6.Create(Self);
    frmCoresPD6.ShowModal;
  finally
    frmCoresPD6.Free;
    frmCoresPD6:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio7Click(Sender: TObject);
begin
  try
    frmCoresPD7:=TfrmCoresPD7.Create(Self);
    frmCoresPD7.ShowModal
  finally
    frmCoresPD7.Free;
    frmCoresPD7:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio8Click(Sender: TObject);
begin
  try
    frmCoresPD8:=TfrmCoresPD8.Create(Self);
    frmCoresPD8.ShowModal;
  finally
    frmCoresPD8.Free;
    FRmCoresPD8:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPDVazio9Click(Sender: TObject);
begin
  try
    frmCoresPD9:=TfrmCoresPD9.Create(Self);
    frmCoresPd9.ShowModal;
  finally
    frmCoresPD9.Free;
    frmCoresPD9:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio10Click(Sender: TObject);
begin
  try
    frmCoresPE10:=TfrmCoresPE10.Create(Self);
    frmCoresPE10.ShowModal;
  finally
    frmCoresPE10.Free;
    frmCoresPE10:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio1Click(Sender: TObject);
begin
  try
    frmCoresPE1:=TfrmCoresPE1.Create(Self);
    frmCoresPE1.ShowModal;
  finally
    frmCoresPE1.Free;
    frmCoresPE1:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio2Click(Sender: TObject);
begin
  try
    frmCoresPE2:=TfrmCoresPE2.Create(Self);
    frmCoresPE2.ShowModal;
  finally
    frmCoresPE2.Free;
    frmCoresPE2:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio3Click(Sender: TObject);
begin
  try
    frmCoresPE3:=TfrmCoresPE3.Create(Self);
    frmCoresPE3.ShowModal;
  finally
    frmCoresPE3.Free;
    frmCoresPE3:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio4Click(Sender: TObject);
begin
  try
    frmCoresPE4:=TfrmCoresPE4.Create(Self);
    frmCoresPE4.ShowModal;
  finally
    frmCoresPE4.Free;
    frmCoresPE4:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio5Click(Sender: TObject);
begin
  try
    frmCoresPE5:=TfrmCoresPE5.Create(Self);
    frmCoresPE5.ShowModal;
  finally
    frmCoresPE5.Free;
    frmCoresPE5:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio6Click(Sender: TObject);
begin
  try
    frmCoresPE6:=TfrmCoresPE6.Create(Self);
    frmCoresPE6.ShowModal;
  finally
    frmCoresPE6.Free;
    frmCoresPE6:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio7Click(Sender: TObject);
begin
  try
    frmCoresPE7:=TfrmCoresPE7.Create(Self);
    frmCoresPE7.ShowModal;
  finally
    frmCoresPE7.Free;
    frmCoresPE7:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio8Click(Sender: TObject);
begin
  try
    frmCoresPE8:=TfrmCoresPE8.Create(Self);
    frmCoresPE8.ShowModal;
  finally
    frmCoresPE8.Free;
    frmCoresPE8:=nil;
  end;
end;

procedure TfrmFichadeCadastro.imgPEVazio9Click(Sender: TObject);
begin
  try
    frmCoresPE9:=TfrmCoresPE9.Create(Self);
    frmCoresPE9.ShowModal;
  finally
    frmCoresPE9.Free;
    frmCoresPE9:=nil;
  end;
end;

procedure TfrmFichadeCadastro.RadioButton1Click(Sender: TObject);
begin
 DBedit6.Enabled:=True;
 DBedit7.Enabled:=false;
end;

procedure TfrmFichadeCadastro.RadioButton2Click(Sender: TObject);
begin
  DBedit6.Enabled:=false;
  DBedit7.Enabled:=True;
end;

end.
