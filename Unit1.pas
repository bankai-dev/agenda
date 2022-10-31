unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Observações: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    txtBusca: TEdit;
    Label4: TLabel;
    TDBMemo: TDBMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure txtBuscaChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unitDM;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Dm.tbContatos.Append;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Dm.tbContatos.Edit;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Dm.tbContatos.Delete;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Dm.tbContatos.Post;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Dm.tbContatos.Cancel;
end;

procedure TForm1.txtBuscaChange(Sender: TObject);
begin
  DM.tbContatos.Locate('nome',txtBusca.text,[loPartialKey]);
end;

end.
