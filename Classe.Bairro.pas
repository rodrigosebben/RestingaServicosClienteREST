//'bairro_id', 'int(10) unsigned', 'NO', 'PRI', '', 'auto_increment'
//'cidade_id', 'int(10) unsigned', 'NO', 'MUL', '', ''
//'desc_bairro', 'varchar(45)', 'NO', '', '', ''

unit Classe.Bairro;

interface

uses
  System.Generics.Collections;

Type
  TBairro = class
  private
    Fbairro_id:integer;
    Fcidade_id:Integer;
    Fdesc_bairro:String;
  public
    property bairro_id: integer read Fbairro_id write Fbairro_id;
    property cidade_id: integer read Fcidade_id write Fcidade_id;
    property desc_bairro: string read Fdesc_bairro write Fdesc_bairro;
  end;

  TListaBairro = class(TList<TBairro>)
  end;

implementation

end.
