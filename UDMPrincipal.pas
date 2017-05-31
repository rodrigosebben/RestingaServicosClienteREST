unit UDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, Data.DB, Datasnap.DBClient, REST.Response.Adapter, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TDMPrincipal = class(TDataModule)
    RESTClientPrincipal: TRESTClient;
    RESTRequestProfissao: TRESTRequest;
    RESTResponseProfissao: TRESTResponse;
    RESTResponseDataSetAdapterProfissao: TRESTResponseDataSetAdapter;
    cdsProfissao: TClientDataSet;
    cdsProfissaonome: TWideStringField;
    cdsProfissaoid: TWideStringField;
    RESTRequestListaProfissional: TRESTRequest;
    RESTResponseListaProfissional: TRESTResponse;
    RESTResponseDataSetAdapterListaProfissional: TRESTResponseDataSetAdapter;
    cdsListaProfissional: TClientDataSet;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1valor: TIntegerField;
    ClientDataSet1imagem: TBlobField;
    ClientDataSet1id: TIntegerField;
    cdsListaProfissionalpessoanumero: TWideStringField;
    cdsListaProfissionalpessoalogradourodesc_logradouro: TWideStringField;
    cdsListaProfissionalpessoalogradourobairrocidadedesc_cidade: TWideStringField;
    cdsListaProfissionalpessoalogradourobairrocidadeflg_estado: TWideStringField;
    cdsListaProfissionalpessoalogradourobairrocidadeid: TWideStringField;
    cdsListaProfissionalpessoalogradourobairrodesc_bairro: TWideStringField;
    cdsListaProfissionalpessoalogradourobairroid: TWideStringField;
    cdsListaProfissionalpessoalogradouroid: TWideStringField;
    cdsListaProfissionalpessoalogradourodesc_tipo: TWideStringField;
    cdsListaProfissionalpessoalogradourocep: TWideStringField;
    cdsListaProfissionalpessoanomePessoa: TWideStringField;
    cdsListaProfissionalpessoapessoa_tiponomeTipoPessoa: TWideStringField;
    cdsListaProfissionalpessoapessoa_tipoid: TWideStringField;
    cdsListaProfissionalpessoaid: TWideStringField;
    cdsListaProfissionalprofissaonome: TWideStringField;
    cdsListaProfissionalprofissaosubarea: TWideStringField;
    cdsListaProfissionalprofissaosubareaarea: TWideStringField;
    cdsListaProfissionalprofissaosubareaareanome: TWideStringField;
    cdsListaProfissionalprofissaosubareaareaid: TWideStringField;
    cdsListaProfissionalprofissaosubareanome: TWideStringField;
    cdsListaProfissionalprofissaosubareaid: TWideStringField;
    cdsListaProfissionalprofissaoid: TWideStringField;
    cdsListaProfissionalid: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPrincipal: TDMPrincipal;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
