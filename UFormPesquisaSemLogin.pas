unit UFormPesquisaSemLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListBox, FMX.Objects, FMX.ListView,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFormPesquisaSemLogin = class(TForm)
    LblTitulo: TLabel;
    LstVwProfissionais: TListView;
    RctServicos: TRectangle;
    CbxServicos: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    LinkListControlToField2: TLinkListControlToField;
    procedure FormShow(Sender: TObject);
    procedure CbxServicosChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaSemLogin: TFormPesquisaSemLogin;

implementation

{$R *.fmx}

uses UDMPrincipal;

procedure TFormPesquisaSemLogin.CbxServicosChange(Sender: TObject);
begin

  with DMPrincipal do
  begin
//    if BindSourceDB1.DataSet.FieldByName('id').AsString = '0' then
    RESTRequestListaProfissional.Resource := 'pessoaprofissao/list/ficha/' + BindSourceDB1.DataSet.FieldByName('id').AsString;
    RESTRequestListaProfissional.Execute;
    RESTResponseDataSetAdapterListaProfissional.Active := true;
    cdsListaProfissional.Active := true;
  end;


end;

procedure TFormPesquisaSemLogin.FormShow(Sender: TObject);
begin

  with DMPrincipal do
  Begin
    RESTRequestProfissao.Execute;
    RESTResponseDataSetAdapterProfissao.Active := true;
    cdsProfissao.Active := true;
  End;

end;

end.
