unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, uPascalTZ;

type
  TMainForm = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TZ : TPascalTZ;
  end;

var
  MainForm: TMainForm;

implementation

uses
  AppDir;


{$R *.dfm}

procedure TMainForm.DateTimePicker1Change(Sender: TObject);
begin
  DateTimePicker2.DateTime:=TZ.Convert(DateTimePicker1.DateTime,Edit1.Text,Edit2.Text);
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  TZ:=TPascalTZ.Create(nil);
  TZ.DatabasePath:='TZData\';
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  TZ.Free;
end;

end.
