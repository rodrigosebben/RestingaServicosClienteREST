//'cidade_id', 'int(10) unsigned', 'NO', 'PRI', '', ''
//'desc_cidade', 'varchar(60)', 'NO', '', '', ''
//'flg_estado', 'char(2)', 'NO', '', '', ''
unit Classe.Cidade;

interface
uses
  System.Generics.Collections;

type
  TCidade = class
  Private
    FCidade_id:Integer;
    FDesc_cidade:string;
    FFlg_estado:boolean;
  public
    property Cidade_id: integer read FCidade_id write FCidade_id;
    property Desc_cidade: string read FDesc_cidade write FDesc_cidade;
    property Flg_estado: boolean read FFlg_estado write FFlg_estado;
  end;

  TListaCidade = class(TList<TCidade>)
  end;

implementation

end.
