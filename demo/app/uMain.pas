unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRavenClient, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FRavenClient: TRavenClient;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  uSentryConsts;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  value1, value2: integer;
  resultd: double;
begin
  value1 := 10;
  value2 := 0;
  try
    raise EDivByZero.Create('div by 0 error');
  except
    on e:exception do
      FRavenClient.sendException(e)
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FRavenClient := TRavenClient.Create(nil);
  FRavenClient.setPROTOCOL(SENTRY_PROT);
  FRavenClient.setPORT(9000);
  FRavenClient.setHOST(SENTRY_HOST);
  FRavenClient.setPUBLIC_KEY(SENTRY_PUB_KEY);
  FRavenClient.setSECRET_KEY(SENTRY_PRIV_KEY);
  FRavenClient.setPROJECT_ID(SENTRY_PROJ_ID);
  FRavenClient.setSENTRY_VERSION('7');
end;

end.
