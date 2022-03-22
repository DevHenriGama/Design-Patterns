unit Director;

interface

uses IBuilder;

type
  TDirector = class
  private

  public
    constructor Create(Builder : ITextConvertBuilder);
    destructor Destroy; override;
  end;

implementation

{ TDirector }

constructor TDirector.Create(Builder: ITextConvertBuilder);
begin
  Builder.ConvertChar('a');
  Builder.ConvertFontChange('new');
  Builder.ConvertParagraph('now');

end;

destructor TDirector.Destroy;
begin

  inherited;
end;

end.
