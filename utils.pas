unit utils;

interface

uses SysUtils, Windows, Forms, Classes, IdHTTP, ExtCtrls, jpeg, WinInet,
     mimemess, mimepart, smtpsend, pop3send, blcksock, ssl_openssl,
     synautil, synachar, ValEdit;
{
type
  TypeSpace = record
    Position : Integer;
    NumberSpace : Integer;
end;
}
const
  UNDEFINED                = '<не определено>';
  REGEDIT_PATH             = 'SOFTWARE\Mail.Ru\M.Agent';
  CNT_SITE_DATE            = 'http://koder.kz/';
  CNT_LICENSE              = 'http://koder.kz/licenseBootMail.txt';

  procedure AddResultFrends(Email, AjaxResult : String; List : TValueListEditor);
  function IsConnectedToInternet: Boolean;
  function GetImageJpeg(IdHTTP: TIdHTTP; URL: string; DrawToImage: TImage): TJpegImage;
  function Pars(TextIn, Text, TextOut: string): string;
  function GetSelfVersion: String;
  function SendMsgMail(Host, Subject, pTo, From , TextBody, HTMLBody, login,password, port : string) : boolean;
  function UrlEncode(S : Utf8String): String;

implementation

function UrlEncode(S : Utf8String): String;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(S)do
  if S[i] in ['a'..'z', 'A'..'Z'] then
    Result := Result + S[i]
  else
    Result := Result + '%' + IntToHex(Ord(S[i]), 2);
end;

procedure AddResultFrends(Email, AjaxResult : String; List : TValueListEditor);
  var
    Status : string;
begin
//ListResultAddFrend.InsertRow('Email','frendusername',true);
//["AjaxResponse","OK","friendship_offer",0]
//["AjaxResponse","OK","already_friendship_offer_sent",0]
//already_friends
//ratelimited_emails
//разбираем ответ сервера
  Status := AjaxResult;
  if Pos('ratelimited_emails',AjaxResult) > 0 then
    Status := 'Предложение дружбы временно не возможно';
  if Pos('already_friends',AjaxResult) > 0 then
    Status := 'Уже друзья';
  if Pos('friendship_offer"',AjaxResult) > 0 then
    Status := 'Предложение отправленно';
  if Pos('already_friendship_offer_sent"',AjaxResult) > 0 then
    Status := 'Вы уже предложили дружбу';
//добавляем в лист
  List.InsertRow(Email, Status, true);
  List.Row := List.RowCount-1;
end;

function SendMsgMail(Host, Subject, pTo, From , TextBody, HTMLBody, login,password, port : string) : boolean;
 var
   Msg : TMimeMess;
   StringList : TStringList;
   MIMEPart : TMimePart;
   SMTPClient: TSMTPSend;
begin
  SMTPClient := TSMTPSend.Create;
  SMTPClient.SystemName := 'koder';
  SMTPClient.TargetHost := Host;
  SMTPClient.TargetPort := port;
  SMTPClient.UserName   := login;
  SMTPClient.Password   := password;

  result := false;
  Msg := TMimeMess.Create;
  StringList := TStringList.Create;
  try

    Msg.Header.Subject := Subject;
    Msg.Header.From := From;
    Msg.Header.ToList.Add(pTo);

    MIMEPart := Msg.AddPartMultipart('alternative', nil);
    if length(TextBody) > 0 then
    begin
      StringList.Text := TextBody;
      Msg.AddPartText(StringList, MIMEPart);
    end;
    Msg.EncodeMessage;
    if (SMTPClient.Login) and (SMTPClient.AuthDone) then
    begin
      if SMTPClient.MailFrom(GetEmailAddr(Msg.Header.From), Length(Msg.Lines.Text)) then
      begin
        result := SMTPClient.MailTo(pTo);
        if result then
          result := SMTPClient.MailData(Msg.Lines);
       end;
      SMTPClient.Logout;
//    result := smtpsend.SendToRaw(From, pTo, Host, Msg.Lines, login, password);
  end;
  finally
    Msg.Free;
    StringList.Free;
    SMTPClient.Free;
  end;

end;

function IsConnectedToInternet: Boolean;
  var
    dwConnectionTypes: DWORD;
begin
  dwConnectionTypes := INTERNET_CONNECTION_MODEM +
                       INTERNET_CONNECTION_LAN +
                       INTERNET_CONNECTION_PROXY;
  Result := InternetGetConnectedState(@dwConnectionTypes, 0);
end;

function GetSelfVersion: String;
var pVer: ^VS_FIXEDFILEINFO;
    Buff: Pointer;
    iVer:  DWORD;
    i: Integer;
    VerStr: String;
begin
 iVer:=FindResource(0,'#1',RT_VERSION);
 if iVer=0 then
   begin
     Result:=UNDEFINED;
     Exit;
   end;

 Buff:=Pointer(LoadResource(0,iVer));
 pVer:=nil;
 for i:=0 to (WORD(Buff^) div 4)-1 do
   begin
     if DWORD(Buff^)=$FEEF04BD then
       begin
         pVer:=Buff;
         Break;
       end;
     Buff:=Ptr(DWORD(Buff)+4);
   end;
 if pVer^.dwSignature<>$FEEF04BD then
   begin
     Result:=UNDEFINED;
   end
 else
   begin
     VerStr:=IntToStr((pVer^.dwProductVersionMS shr $10) and $FFFF);
     VerStr:=VerStr+'.'+IntToStr(pVer^.dwProductVersionMS and $FFFF);
     VerStr:=VerStr+'.'+IntToStr((pVer^.dwProductVersionLS shr $10) and $FFFF);
     VerStr:=VerStr+'.'+IntToStr(pVer^.dwProductVersionLS and $FFFF);
     Result:=VerStr;
   end;
end;

function GetImageJpeg(IdHTTP: TIdHTTP; URL: string; DrawToImage: TImage): TJpegImage;
var
  MemoryStream: TMemoryStream;
  Img: TJpegImage;
begin
  MemoryStream := TMemoryStream.Create;
  Img := TJpegImage.Create;
  try
    IdHTTP.Get(URL, MemoryStream);
    MemoryStream.Position := 0;
    Img.LoadFromStream(MemoryStream);
    DrawToImage.Picture.Graphic := Img;
    DrawToImage.Repaint;
  finally
    MemoryStream.Free;
    Result := Img;
    Img.Free;
  end;
end;

function Pars(TextIn, Text, TextOut: string): string;
var
  TempStr: string;
begin
  Result := '';
  TempStr := Text;
  TempStr := Copy(TempStr, Pos(TextIn, TempStr) +7, Length(TempStr));
  Delete(TempStr, Pos(TextOut, TempStr), Length(TempStr));
  Result := TempStr;
end;

end.

