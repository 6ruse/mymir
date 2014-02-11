unit uAbout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, acPNG, ShellAPI;

type
  TFrmAbout = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Copyright: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CopyrightClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbout: TFrmAbout;

implementation

uses utils;

{$R *.dfm}

procedure TFrmAbout.CopyrightClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, nil, 'http://koder.kz/', nil, nil,SW_SHOWNOACTIVATE);
end;

procedure TFrmAbout.FormCreate(Sender: TObject);
begin
  Version.Caption := Format('Version %s',[GetSelfVersion]);
end;

end.
 
