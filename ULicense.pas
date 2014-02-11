unit ULicense;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdHTTP, uEncrypt, ComCtrls, PropFilerEh, PropStorageEh,
  HTTPSend;

type
  TFrmLicense = class(TForm)
    GroupBox2: TGroupBox;
    Label5: TLabel;
    EdtLicense: TEdit;
    BtnActivate: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtEmail: TEdit;
    EdtName: TEdit;
    EdtPhone: TEdit;
    BtnSelectLicense: TButton;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    EdtLicNumber: TEdit;
    EdtEmailkoder: TEdit;
    PropStorageEh1: TPropStorageEh;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnActivateClick(Sender: TObject);
    procedure BtnSelectLicenseClick(Sender: TObject);
  private
    { Private declarations }
    FidComp: string;
    Fversion: string;
    FDWork: TDate;
    function GetHdd(): string;
    function GetLeftSerialNumber(): String;
    function GetVersion(): string;
    function GetDWork(): TDate;
    function GetLocalHost(): Boolean;

    property IdComp: string read FidComp write FidComp;
    property Version: string read Fversion write Fversion;
    property DWork: TDate read FDWork write FDWork;
  public
    { Public declarations }
    function LicenseActivate(): Boolean;
  end;

var
  FrmLicense: TFrmLicense;

implementation

uses utils;
{$R *.dfm}
{ TFrmLicense }

procedure TFrmLicense.BtnActivateClick(Sender: TObject);
begin
  if EdtLicense.Text = '' then
  begin
    Application.MessageBox('Вы не ввели лицензионный ключ программы, увы :(','Error', MB_ICONERROR);
    Exit;
  end;
  if LicenseActivate then
    ModalResult := mrOk
  else
    ModalResult := mrCancel;
end;

procedure TFrmLicense.BtnSelectLicenseClick(Sender: TObject);
var
  TextBody: string;
  License: string;
begin
  if not IsConnectedToInternet then
  begin
    Application.MessageBox('Не могу подключится к интернету', 'Error',MB_ICONERROR);
    Exit;
  end;

  License := GetLeftSerialNumber;
  TextBody := format('key = %s from %s, E-mail %s, phone %s ot my.mir',[License, EdtName.Text, EdtEmail.Text, EdtPhone.Text]);
  if EdtEmail.Text = '' then
  begin
    MessageBox(Handle, 'Поле E-Mail обязательно для заполнения, eds :(','Error', MB_ICONERROR);
    Exit;
  end;

  if not SendMsgMail('smtp.mail.ru', 'BootMailRu buy', '6ruse_as@mail.ru','wars_angel@mail.ru', TextBody, '', 'wars_angel', 'pkjytlhtvktn', '25') then
  begin
    ClientHeight := 430;
    EdtLicNumber.Text := License;
  end
  else
  begin
    SendMsgMail('smtp.mail.ru', 'BootMailRu buy', 'bknovikov@gmail.com','wars_angel@mail.ru', TextBody, '', 'wars_angel', 'pkjytlhtvktn', '25');
    MessageBox(Handle,'Ваша заявка принята, дальнейшая инструкция придет к вам на почту','Активация', MB_ICONINFORMATION);
    ModalResult := mrCancel;
  end;
end;

procedure TFrmLicense.FormCreate(Sender: TObject);
begin
  ModalResult := mrCancel;
  ClientHeight := 293;
end;

procedure TFrmLicense.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ModalResult := mrCancel;
end;

function TFrmLicense.GetDWork: TDate;
var
  Page: UTF8String;
  k, l, m: Integer;
  day: string;

  sl: TStringList;
  dateStr: string;
  i: Integer;
begin
  sl := TStringList.Create;
  HttpGetText(CNT_SITE_DATE, sl);
  sl.Text := UTF8Decode(sl.Text);
  for i := 0 to sl.Count - 1 do
  begin
    Page := sl[i];
    if pos('Сегодня:', Page) > 0 then
    begin
      dateStr := copy(Page, pos('Сегодня:', Page) + 25, 10);
      delete(dateStr, pos(',', dateStr), 1);
      Break;
    end;
  end;
  result := StrToDateTime(dateStr);
  sl.Free;
//  result := now(); //Internet
end;

function TFrmLicense.GetHdd: string;
var
  VolumeSerialNumber: DWORD;
  MaximumComponentLength: DWORD;
  FileSystemFlags: DWORD;
begin
  GetVolumeInformation('C:\', nil, 0, @VolumeSerialNumber,MaximumComponentLength, FileSystemFlags, nil, 0);
  result := IntToHex(HiWord(VolumeSerialNumber), 4) + IntToHex(LoWord(VolumeSerialNumber), 4);
end;

function TFrmLicense.GetLeftSerialNumber: String;
var
  Hdd: string;
  s, s1, s2: string;
  _ecx, _eax, _edx: longword;
begin
  asm
    mov eax,1
    db $0F,$A2
    mov _eax,eax
  end;
  asm
    mov eax,3
    db $0F,$A2
    mov _ecx,ecx
    mov _edx,edx
  end;

  s := IntToHex(_eax, 8);
  s1 := IntToHex(_edx, 8);
  s2 := IntToHex(_ecx, 8);

  Hdd := GetHdd;
  result := format('%s%s%s%s', [Hdd, s, s1, s2]);
end;

function TFrmLicense.GetLocalHost: Boolean;
var
  WinDir: array [0 .. 255] of Char;
  HostFile: string;
  DataHost: TStringList;
  TmpStr: string;
  i: Integer;
begin
  result := false;

  GetWindowsDirectory(WinDir, 255);
  HostFile := format('%s\System32\drivers\etc\hosts', [WinDir]);
  DataHost := TStringList.Create();
  try
    DataHost.LoadFromFile(HostFile);
    for i := 0 to DataHost.Count - 1 do
    begin
      TmpStr := DataHost[i];
      if pos(CNT_SITE_DATE, TmpStr) > 0 then
      begin
        result := true;
        Exit;
      end;
    end;
  finally
    DataHost.Free;
  end;
end;

function TFrmLicense.GetVersion: string;
var
  Page: string;
  k, l, m: Integer;
  day: string;
  sl: TStringList;
  dateStr: string;
begin
  sl := TStringList.Create;
  HttpGetText(CNT_LICENSE, sl);
  Page := sl.Text;
  sl.Free;
  dateStr := copy(Page, 1, 7);
  result := dateStr;
end;

function TFrmLicense.LicenseActivate: Boolean;
const
  my_key = 8898;

var
  TmpStr: string;
  License: string;
  Dlicense: TDate;
  MyLicense: string;
  MyVersion, ServerVersion: string;
begin
  result := true;
  try
    MyVersion := GetSelfVersion;
    ServerVersion := GetVersion;

    // а не пытаются ли нас поломать
    if GetLocalHost then
    begin
      Application.MessageBox('Программа будет закрыта без объяснения причин - сам виноват!','Error', MB_ICONERROR);
      result := false;
      Application.Terminate;
      Exit;
    end;

    // а та ли это версия программы
    if ServerVersion <> MyVersion then
    begin
      Application.MessageBox('Программа нуждается в обновлении, увы :(','Error', MB_ICONERROR);
      result := false;
      Exit;
    end;

    // а может это первый запуск
    if EdtLicense.Text = '' then
    begin
      result := false;
      Exit;
    end;

    // проверяем лицензию
    MyLicense := GetLeftSerialNumber;
    DWork := GetDWork;
    TmpStr := Decrypt(EdtLicense.Text, my_key);
    // расшфровали теперь разбираем на части
    License := copy(TmpStr, 1, pos('-', TmpStr) - 1);
    Dlicense := StrToDate(copy(TmpStr, pos('-', TmpStr) + 1, Length(TmpStr)));
    if DWork > Dlicense then
    begin
      Application.MessageBox('Срок действия лицензии закончен, увы :(','Error', MB_ICONERROR);
      result := false;
    end;
    if MyLicense <> License then
    begin
      Application.MessageBox('Лицензия не подходит, увы :(', 'Error', MB_ICONERROR);
      result := false;
    end;
  except
    on E: Exception do
    begin
      Application.MessageBox('bad лицензия, увы :(', 'Error', MB_ICONERROR);
      result := false;
    end;
  end;
end;

end.
