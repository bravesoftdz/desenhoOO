{
  @abstract(Essa classe � uma classe final)
}
unit URetangulo;

interface

uses
    UFormaGeometrica
  , Graphics
  ;

type
  TRetangulo = class(TFormaGeometrica)
  private
    FBase: Integer;
    FAltura: Integer;

  public
    constructor Create(const coCor: TColor);

    function CalculaArea: Double; override;
    function SolicitaParametros: Boolean; override;

    property ALTURA: Integer read FAltura;
    property BASE: Integer read FBase;
  end;

implementation

uses
    Dialogs
  , SysUtils
  , ExtCtrls
  ;

{ TQuadrado }

function TRetangulo.CalculaArea: Double;
begin
  Result := FBase * FAltura;
end;

constructor TRetangulo.Create(const coCor: TColor);
begin
  Inherited;
  Shape.Shape := stRectangle;
end;

function TRetangulo.SolicitaParametros: Boolean;
begin
  FBase   := StrToIntDef(InputBox('Informe', 'Base do Retangulo', ''), -1);
  FAltura := StrToIntDef(InputBox('Informe', 'Altura do Retangulo', ''), -1);

  Result := (FBase > -1) and (FAltura > -1);
end;

end.


