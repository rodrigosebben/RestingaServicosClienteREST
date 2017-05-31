program RestingaServicos;

uses
  System.StartUpCopy,
  FMX.Forms,
  UFormSplash in 'UFormSplash.pas' {FormSplash},
  UFormModelo in 'UFormModelo.pas' {FormModelo},
  UFormSelecaoInicial in 'UFormSelecaoInicial.pas' {FormSelecaoInicial},
  UFormSelecionaArea in 'UFormSelecionaArea.pas' {FormSelecionaArea},
  UDMPrincipal in 'UDMPrincipal.pas' {DMPrincipal: TDataModule},
  UFormPesquisaSemLogin in 'UFormPesquisaSemLogin.pas' {FormPesquisaSemLogin},
  Classe.Bairro in 'Classe.Bairro.pas',
  Classe.Cidade in 'Classe.Cidade.pas',
  Classe.Contato_tipo in 'Classe.Contato_tipo.pas',
  Classe.Nota in 'Classe.Nota.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormSplash, FormSplash);
  Application.CreateForm(TFormSelecaoInicial, FormSelecaoInicial);
  Application.CreateForm(TFormSelecionaArea, FormSelecionaArea);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFormPesquisaSemLogin, FormPesquisaSemLogin);
  Application.Run;
end.
