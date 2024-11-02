program TZTest;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  upascaltz in '..\upascaltz.pas',
  upascaltz_tools in '..\upascaltz_tools.pas',
  upascaltz_types in '..\upascaltz_types.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
