//'id', 'int(10) unsigned', 'NO', 'PRI', '', 'auto_increment'
//'NomeTipoContato', 'varchar(250)', 'NO', '', '', ''
unit Classe.Contato_tipo;

interface
uses
  System.Generics.Collections;

type
  TContato_tipo = class
  private
    FId :Integer;
    FNomeTipoContato:String;
  public
    property Id: integer read FId write FId;
    property NomeTipoContato: string read FNomeTipoContato write FNomeTipoContato;
  end;

  TListaContato_tipo = class(TList<TContato_tipo>)
  end;

implementation

end.
