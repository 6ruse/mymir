program my.mir;

uses
  Forms,
  uMain in 'uMain.pas' {FrmMain},
  utils in 'utils.pas',
  uAbout in 'uAbout.pas' {FrmAbout},
  uWorkTime in 'uWorkTime.pas',
  ULicense in 'ULicense.pas' {FrmLicense},
  uCaptcha in 'uCaptcha.pas' {FrmCaptcha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
