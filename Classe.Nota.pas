//'id', 'int(10) unsigned', 'NO', 'PRI', '', 'auto_increment'
//'nota', 'int(10) unsigned', 'NO', '', '', ''
//'imagem', 'blob', 'NO', '', '', ''
unit Classe.Nota;

interface
uses
  System.Generics.Collections,System.Classes;

type
  TNota = class
  private
    FId:integer;
    FNota:integer;
    FImagem: TMemoryStream;
  public
    property Id: integer read FId write FId;
    property Nota: integer read FNota write FNota;
    property Imagem: TMemoryStream read FImagem write FImagem;
  end;

  TListaNota = class(TList<TNota>)
  end;

implementation

end.
