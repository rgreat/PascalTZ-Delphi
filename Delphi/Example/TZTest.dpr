program TZTest;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  upascaltz in 'source\upascaltz.pas',
  upascaltz_tools in 'source\upascaltz_tools.pas',
  upascaltz_types in 'source\upascaltz_types.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
