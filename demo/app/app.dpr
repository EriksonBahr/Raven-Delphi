program app;

uses
  Forms,
  uMain in 'uMain.pas' {Form2},
  uSentryConsts in 'uSentryConsts.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
