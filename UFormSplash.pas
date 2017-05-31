unit UFormSplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects;

type
  TFormSplash = class(TForm)
    Image1: TImage;
    TimerSplash: TTimer;
    procedure TimerSplashTimer(Sender: TObject);
  private
    { Private declarations }
  public
    Pessoa_id:Integer;
    Nome_Pessoa:String;
    { Public declarations }
  end;

var
  FormSplash: TFormSplash;

implementation

{$R *.fmx}

uses UFormSelecaoInicial;

procedure TFormSplash.TimerSplashTimer(Sender: TObject);
begin

  if (TimerSplash.Interval = 2000) then
  begin
    if FormSelecaoInicial=nil then
      Application.CreateForm(TFormSelecaoInicial,FormSelecaoInicial);
    TFormSelecaoInicial.create(self).show;
    TimerSplash.Enabled := false;
  end;

end;

end.
