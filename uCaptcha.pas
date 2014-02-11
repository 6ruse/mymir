unit uCaptcha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFrmCaptcha = class(TForm)
    Label1: TLabel;
    EdtCaptcha: TEdit;
    BtnOk: TButton;
    BtnCancel: TButton;
    Image1: TImage;
    ImgCaptcha: TImage;
    procedure BtnOkClick(Sender: TObject);
    procedure EdtCaptchaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaptcha: TFrmCaptcha;

implementation

{$R *.dfm}

procedure TFrmCaptcha.BtnOkClick(Sender: TObject);
begin
  if EdtCaptcha.Text = '' then
  begin
    MessageBox(application.Handle, PChar('¬ведите капчу'),'Error', MB_ICONHAND);
    exit;
  end;
  ModalResult := mrOk;
end;

procedure TFrmCaptcha.EdtCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    BtnOkClick(Sender);
end;

end.
