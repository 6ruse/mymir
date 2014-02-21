unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdAntiFreezeBase, IdAntiFreeze, IdCookieManager,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ActnList,
  Buttons, StdCtrls, ExtCtrls, jpeg, ComCtrls, utils, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, ToolWin, cxPC, cxControls, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxGroupBox, Spin, ImgList, cxGraphics, cxLookAndFeels,
  CheckLst, Gauges, uWorkTime, PropStorageEh, Menus,
  PropFilerEh, OleCtrls, SHDocVw, pngimage, cxRadioGroup, cxSplitter, Grids,
  ValEdit, XPMan, cxPCdxBarPopupMenu;

type
  TFrmMain = class(TForm)
    ActionList1: TActionList;
    actClose: TAction;
    IdHTTP1: TIdHTTP;
    IdCookieManager1: TIdCookieManager;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    actDisconnect: TAction;
    actConnect: TAction;
    actSearchFreind: TAction;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    ToolBar2: TToolBar;
    StatusBar1: TStatusBar;
    cxTabSheet3: TcxTabSheet;
    RchEdtLog: TRichEdit;
    Panel1: TPanel;
    SpeedButton4: TSpeedButton;
    FileSaveDialog1: TFileSaveDialog;
    actSaveLog: TAction;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    actAbout: TAction;
    ToolButton3: TToolButton;
    actMessage: TAction;
    ToolButton4: TToolButton;
    Panel2: TPanel;
    LstFrend: TCheckListBox;
    GroupBox1: TGroupBox;
    ChckAutoSave: TCheckBox;
    ChckConnect: TCheckBox;
    Panel3: TPanel;
    Label4: TLabel;
    ChckFrends: TCheckBox;
    RegPropStorageManEh1: TRegPropStorageManEh;
    actCancel: TAction;
    ToolButton5: TToolButton;
    PopupMenu1: TPopupMenu;
    actGoMessageSlctUser: TAction;
    lastUse: TLabel;
    PropStorageEh1: TPropStorageEh;
    N1: TMenuItem;
    ToolButton6: TToolButton;
    PropStorageEh2: TPropStorageEh;
    actAddAllFrends: TAction;
    N2: TMenuItem;
    GroupBox2: TGroupBox;
    ChckInsertFrends: TCheckBox;
    SpnEdtMaxFrends: TSpinEdit;
    Label11: TLabel;
    Label2: TLabel;
    SpnEdtInterval: TSpinEdit;
    edtFind: TButtonedEdit;
    Bevel2: TBevel;
    N3: TMenuItem;
    cxTabSheet4: TcxTabSheet;
    Panel4: TPanel;
    Label10: TLabel;
    CmbVozrast: TComboBox;
    Label12: TLabel;
    CmbCountry: TComboBox;
    Label13: TLabel;
    CmbRegion: TComboBox;
    Label14: TLabel;
    CmbCity: TComboBox;
    BtnFindFrends: TSpeedButton;
    ActFindFrends: TAction;
    SpeedButton3: TSpeedButton;
    actUpdateFindFrends: TAction;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    EdtStrPeople: TSpinEdit;
    EdtTimeAddFrends: TSpinEdit;
    Label16: TLabel;
    CheckStartProgram: TCheckBox;
    actAddPeople: TAction;
    CheckAddLog: TCheckBox;
    actGoMessageFindFrend: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    CheckIgnoreError: TCheckBox;
    Panel6: TPanel;
    ListFindPeople: TListBox;
    LabelCountFindPeople: TLabel;
    Panel7: TPanel;
    LabelCntListPeople: TLabel;
    ListResultAddFrend: TValueListEditor;
    cxSplitter1: TcxSplitter;
    actAddFrendInfinity: TAction;
    Button1: TButton;
    PMenuAddFrends: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Shape1: TShape;
    Image4: TImage;
    Label1: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    EdtPass: TEdit;
    EdtLogin: TEdit;
    CmbDomain: TComboBox;
    btnConnect: TSpeedButton;
    SpeedButton1: TSpeedButton;
    XPManifest1: TXPManifest;
    Bevel4: TBevel;
    Panel5: TPanel;
    RchEdtMessage: TRichEdit;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    RdGrpSex: TcxRadioGroup;
    EdtTextSearch: TButtonedEdit;
    procedure actCloseExecute(Sender: TObject);
    procedure actDisconnectExecute(Sender: TObject);
    procedure actConnectExecute(Sender: TObject);
    procedure actSearchFreindExecute(Sender: TObject);
    procedure actSaveLogExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actMessageExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChckFrendsClick(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actGoMessageSlctUserExecute(Sender: TObject);
    procedure actAddAllFrendsExecute(Sender: TObject);
    procedure edtFindExit(Sender: TObject);
    procedure edtFindEnter(Sender: TObject);
    procedure edtFindKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure CmbCountryChange(Sender: TObject);
    procedure CmbRegionChange(Sender: TObject);
    procedure actUpdateFindFrendsExecute(Sender: TObject);
    procedure ActFindFrendsExecute(Sender: TObject);
    procedure actAddPeopleExecute(Sender: TObject);
    procedure actGoMessageFindFrendExecute(Sender: TObject);
    procedure EdtPassKeyPress(Sender: TObject; var Key: Char);
    procedure actAddFrendInfinityExecute(Sender: TObject);
    procedure EdtTextSearchExit(Sender: TObject);
    procedure EdtTextSearchEnter(Sender: TObject);
    procedure EdtTextSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FFriendsCount: Integer;
    FFlagCancel: Boolean;
    FStartSend: Integer;
    FMnb: string;
    FMna: string;
    // FStartEmail   : integer;
    // property StartEmail : Integer read FStartEmail write FStartEmail;
    property Mnb: string read FMnb write FMnb;
    property Mna: string read FMna write FMna;
    property StartSend: Integer read FStartSend write FStartSend;
    property FriendsCount: Integer read FFriendsCount write FFriendsCount;
    property FlagCancel: Boolean read FFlagCancel write FFlagCancel;
    procedure ProgressFree;
    procedure InsertProgress(Min, Max: Integer; Parent: TWinControl);
    procedure PrepareProgress;
    function GetCaptcha(otvAjax, UrlCaptcha: string): string;
    Procedure GetCountryData(TmpStr: string; CmbValue: TComboBox;
      var FlagRegion: byte); // получаем страну, регион, город в комбобокс
    procedure GetMnaMnb(TmpStr: string); // получаем эти два зловредных параметра
    procedure FindFrends(StrCount: Integer); // кнопка - найти друзей
    procedure GetEdtSetting(Value : Boolean);
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;
  Progress: TGauge;
  WorkTime: TWorkTime;
  hMutex: THandle;

implementation

uses uAbout, ULicense, uCaptcha;
{$R *.dfm}

procedure TFrmMain.actAboutExecute(Sender: TObject);
begin
  FrmAbout := TFrmAbout.Create(self);
  try
    FrmAbout.ShowModal;
  finally
    FrmAbout.Free;
  end;
end;

procedure TFrmMain.actAddAllFrendsExecute(Sender: TObject);
var
  PostData: TStringList;
  PageData: TStringList;
  EMailData: TStringList;
  result: Boolean;
  TmpStr: string;
  i, j: Integer;

  resFrend: Boolean;
  Cnt: Integer;

  CopyS, s: String;
  CopyId: Integer;
  Url: OleVariant;
  DataAjax: string;
  CaptIdL, CaptIdR: string;
begin
  FlagCancel := false;
  if ChckConnect.Checked then
    if not IsConnectedToInternet then
    begin
      Application.MessageBox('Нет соединения с интернетом', 'Error',
        MB_ICONERROR);
      exit;
    end;
  // Друзья моих друзей(добавить)
  PostData := TStringList.Create;
  PageData := TStringList.Create;
  try
    // идем на страничку - друзья
    StatusBar1.Panels[1].Text := 'идем на страничку - друзья...';
    PageData.Clear;
    try
      PageData.Text := IdHTTP1.Get('http://my.mail.ru/friends');
    except
      on E: Exception do
      begin
        RchEdtLog.Lines.Add(E.Message);
        PageData.Text := IdHTTP1.Get('http://my.mail.ru/friends');
      end;

    end;
    if pos('window-loading', PageData.Text) <= 0 then
    begin
      MessageBox(Application.Handle, PChar('Не могу перейти к друзьям'),
        'Error', MB_ICONHAND);
      exit;
    end;

    // получаем список всех знакомых
    StatusBar1.Panels[1].Text := 'получаем список всех знакомых...';
    PageData.Clear;
    try
      PageData.Text := IdHTTP1.Get('http://my.mail.ru/my/suggestions');
    Except
      on E: Exception do
      begin
        RchEdtLog.Lines.Add(E.Message);
        PageData.Text := IdHTTP1.Get('http://my.mail.ru/my/suggestions');
      end;
    end;
    if pos('window-loading', PageData.Text) <= 0 then
    begin
      MessageBox(Application.Handle, PChar('Не могу получить список знакомых'),
        'Error', MB_ICONHAND);
      exit;
    end;

    // идем к Друзья моих друзей
    StatusBar1.Panels[1].Text := 'идем к Друзья моих друзей...';
    PageData.Clear;
    try
      PageData.Text := IdHTTP1.Get(
        'http://my.mail.ru/my/friends?filter=frfr&booster=1');
    Except
      on E: Exception do
      begin
        RchEdtLog.Lines.Add(E.Message);
        PageData.Text := IdHTTP1.Get(
          'http://my.mail.ru/my/friends?filter=frfr&booster=1');
      end;
    end;
    // разбираем полученные данные
    StatusBar1.Panels[1].Text := 'разбираем полученные данные...';
    EMailData := TStringList.Create;

    TmpStr := PageData.Text;
    Delete(TmpStr, 1, pos('data-email', TmpStr) + 11);
    Delete(TmpStr, pos('</div>', TmpStr), Length(TmpStr));
    EMailData.Clear;
    result := false;
    repeat
      if ChckConnect.Checked then
        if not IsConnectedToInternet then
        begin
          Application.MessageBox('Нет соединения с интернетом', 'Error',
            MB_ICONERROR);
          exit;
        end;
      EMailData.Add(copy(TmpStr, 1, pos('"', TmpStr) - 1));
      if pos('data-email', TmpStr) > 0 then
        Delete(TmpStr, 1, pos('data-email', TmpStr) + 11)
      else
        result := true;

      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;
    until result;

    // ****************************************************************************//
    // ****************************************************************************//
    // ****************************************************************************//
    // ****************************************************************************//
    // ****************************************************************************//
    FrmMain.InsertProgress(0, SpnEdtMaxFrends.Value + 20, FrmMain.StatusBar1);
    resFrend := false;
    Cnt := 20;
    repeat
      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;
      if ChckConnect.Checked then
        if not IsConnectedToInternet then
        begin
          Application.MessageBox('Нет соединения с интернетом', 'Error',
            MB_ICONERROR);
          exit;
        end;
      PostData.Clear;
      PostData.Add(Format(
          'ajax_call=1&func_name=load&mna=%s&mnb=%s&encoding=windows-1251&arg_offset=%d&arg_limit=100&arg_filter=frfr', [Mna, Mnb, Cnt]));
      try
        PageData.Text := IdHTTP1.post('http://my.mail.ru/friends?ajax=1',
          PostData);
      Except
        on E: Exception do
        begin
          RchEdtLog.Lines.Add(E.Message);
          PageData.Text := IdHTTP1.post('http://my.mail.ru/friends?ajax=1',
            PostData);
        end;
      end;
      TmpStr := PageData.Text;
      Delete(TmpStr, 1, pos('data-email', TmpStr) + 11);
      Delete(TmpStr, pos('</div>', TmpStr), Length(TmpStr));
      if pos('data-email', TmpStr) > 0 then
        Inc(Cnt, 100)
      else
      begin
        resFrend := true;
        exit;
      end;

      result := false;
      repeat
        Progress.Progress := Progress.Progress + 1;
        if FlagCancel then
        begin
          StatusBar1.Panels[1].Text := 'Отменено пользователем';
          StatusBar1.Panels[2].Text := '';
          Progress.Progress := 0;
          exit;
        end;

        CopyS := copy(TmpStr, 2, pos('\', TmpStr) - 2);
        Delete(TmpStr, 1, pos('data-user-id', TmpStr) + 14);
        CopyId := StrToInt(copy(TmpStr, 1, pos('\', TmpStr) - 1));
        // LstFrend.Items.AddObject(CopyS, TObject(CopyId));
        EMailData.Add(CopyS);
        if pos('data-email', TmpStr) > 0 then
        begin
          Delete(TmpStr, 1, pos('data-email', TmpStr) + 11);
        end
        else
          result := true;
      until result;
      Label4.Caption := Format('Мои друзья: %d', [LstFrend.Items.Count]);
      if SpnEdtMaxFrends.Value < Cnt then
        resFrend := true;
    until resFrend;

    // ****************************************************************************//
    // ****************************************************************************//
    // ****************************************************************************//
    // ****************************************************************************//
    // ****************************************************************************//

    FrmMain.InsertProgress(0, EMailData.Count - 1, FrmMain.StatusBar1);
    StatusBar1.Panels[1].Text := 'начинаем проситься в друзья...';
    for i := 0 to EMailData.Count - 1 do
    begin // просимся в друзья
      if ChckConnect.Checked then
        if not IsConnectedToInternet then
        begin
          Application.MessageBox('Нет соединения с интернетом', 'Error',
            MB_ICONERROR);
          exit;
        end;
      Progress.Progress := Progress.Progress + 1;
      DataAjax := EMailData[i];
      StatusBar1.Panels[1].Text := Format('добавляю %s', [DataAjax]);
      StatusBar1.Panels[2].Text := Format('отправил %d осталось %d',
        [i, EMailData.Count - i]);
      PostData.Clear;
      PostData.Add(Format(
          'ajax_call=1&func_name=friendship.add&mna=%s&mnb=%s&encoding=windows-1251&arg_email=%s&arg_Email=%s', [Mna, Mnb, DataAjax, DataAjax]));
      try
        PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
          PostData);
      Except
        on E: Exception do
        begin
          RchEdtLog.Lines.Add(E.Message);
          PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
            PostData);
        end;
      end;
      TmpStr := PageData.Text;
      if pos('OK', TmpStr) = 0 then
      begin
        RchEdtLog.Lines.Add('error add frends:');
        RchEdtLog.Lines.Add(PageData.Text);
      end;

      if pos('captcha', TmpStr) > 0 then
      begin
        TmpStr := GetCaptcha(TmpStr,
          'http://my.mail.ru/cgi-bin/my/get_image?id=');
        if TmpStr = '' then
          exit;
        CaptIdL := copy(TmpStr, 1, pos(';', TmpStr) - 1);
        CaptIdR := copy(TmpStr, pos(';', TmpStr) + 1, Length(TmpStr));
        // CaptIdL := Copy(TmpStr,1,Pos('"',TmpStr)-1);
        // CaptIdR :=Copy(TmpStr,Pos(';',TmpStr)+1,Length(TmpStr));

        PostData.Clear;
        PostData.Add(Format(
            'ajax_call=1&func_name=suggest.add&mna=%s&mnb=%s&encoding=windows-1251&arg_email=%s&arg_Email=%s&arg_profile_id=&arg_page=suggestions&arg_captcha_id=%s&arg_captcha_answer=%s', [Mna, Mnb, DataAjax, DataAjax, CaptIdL, CaptIdR]));
        try
          PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
            PostData);
        Except
          on E: Exception do
          begin
            RchEdtLog.Lines.Add(E.Message);
            PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
              PostData);
          end;
        end;
      end;

      if SpnEdtInterval.Value > 0 then
        for j := 1 to SpnEdtInterval.Value do
        begin
          if FlagCancel then
          begin
            StatusBar1.Panels[1].Text := 'Отменено пользователем';
            StatusBar1.Panels[2].Text := '';
            Progress.Progress := 0;
            exit;
          end;
          Sleep(1000);
          Application.ProcessMessages;
        end;
    end;

  finally
    PostData.Free;
    PageData.Free;
    EMailData.Free;
    StatusBar1.Panels[1].Text := 'готово';
  end;
end;

procedure TFrmMain.actAddFrendInfinityExecute(Sender: TObject);
var
  PostData: TStringList;
  PageData: TStringList;
  i, j: Integer;
  DataAjax: string;
  x: Integer;
  CntAdd: Integer;
begin
  // бесконечное добавление друзей
  ListResultAddFrend.Strings.Clear;
  PostData := TStringList.Create;
  PageData := TStringList.Create;
  FlagCancel := false;
  CntAdd := 0;
  repeat
    if FlagCancel then
    begin
      StatusBar1.Panels[1].Text := 'Отменено пользователем';
      StatusBar1.Panels[2].Text := '';
      exit;
    end;
    FindFrends(1);
    try
      for i := 0 to ListFindPeople.Count - 1 do
      begin
        Inc(CntAdd);
        if FlagCancel then
        begin
          StatusBar1.Panels[1].Text := 'Отменено пользователем';
          StatusBar1.Panels[2].Text := '';
          exit;
        end;

        DataAjax := ListFindPeople.Items[i];
        PostData.Clear;
        PostData.Add('ajax_call=1&func_name=perl_add_friend&mna=' + Mna +
            '&mnb=' + Mnb + '&encoding=windows-1251&data=%5B%22' + DataAjax +
            '%22%2C+false%2C+null%2C+null%2C+%22search%22%5D');
        ListFindPeople.Selected[i] := true;
        Application.ProcessMessages;

        PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
          PostData);
        StatusBar1.Panels[1].Text := Format('Добавил %d, осталось %d',
          [CntAdd, ListFindPeople.Count - i]);
        AddResultFrends(DataAjax, PageData.Text, ListResultAddFrend);

        if CheckAddLog.Checked then
        begin
          RchEdtLog.Lines.Add(Format('Добавляю %s, ответ сервера:',
              [DataAjax]));
          RchEdtLog.Lines.Add(PageData.Text);
        end;

        for j := 1 to EdtTimeAddFrends.Value do
        begin
          if FlagCancel then
          begin
            StatusBar1.Panels[1].Text := 'Отменено пользователем';
            StatusBar1.Panels[2].Text := '';
            exit;
          end;
          for x := 1 to 60 do
          begin
            if FlagCancel then
            begin
              StatusBar1.Panels[1].Text := 'Отменено пользователем';
              StatusBar1.Panels[2].Text := '';
              exit;
            end;
            Application.ProcessMessages;
            Sleep(1000);
            Application.ProcessMessages;
            StatusBar1.Panels[2].Text := Format
              ('До след. отпр. ост. %d мин, %d сек.',
              [EdtTimeAddFrends.Value - j, x - 60]);
          end;
        end;
      end;

    Except
      on E: Exception do
      begin

      end;
    end;
  until FlagCancel;

  StatusBar1.Panels[1].Text := 'Отменено пользователем';
  StatusBar1.Panels[2].Text := '';
end;

procedure TFrmMain.actAddPeopleExecute(Sender: TObject);
var
  PostData: TStringList;
  PageData: TStringList;
  i, j: Integer;
  DataAjax: string;
  x: Integer;
begin
  FlagCancel := false;
  ListResultAddFrend.Strings.Clear;
  PostData := TStringList.Create;
  PageData := TStringList.Create;
  // RchEdtLog.Lines.Clear;
  FrmMain.InsertProgress(0, ListFindPeople.Count, FrmMain.StatusBar1);
  try
    for i := 0 to ListFindPeople.Count - 1 do
    begin
      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;

      DataAjax := ListFindPeople.Items[i];
      PostData.Clear;
      PostData.Add('ajax_call=1&func_name=perl_add_friend&mna=' + Mna +
          '&mnb=' + Mnb + '&encoding=windows-1251&data=%5B%22' +
          DataAjax + '%22%2C+false%2C+null%2C+null%2C+%22search%22%5D');
      ListFindPeople.Selected[i] := true;
      Application.ProcessMessages;
      Progress.Progress := Progress.Progress + 1;
      try
        PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
          PostData);
        StatusBar1.Panels[1].Text := Format('Добавил %d, осталось %d',
          [i + 1, ListFindPeople.Count - i]);
        AddResultFrends(DataAjax, PageData.Text, ListResultAddFrend);

        if CheckAddLog.Checked then
        begin
          RchEdtLog.Lines.Add(Format('Добавляю %s, ответ сервера:',
              [DataAjax]));
          RchEdtLog.Lines.Add(PageData.Text);
        end;
      Except
        on E: Exception do
        begin
          RchEdtLog.Lines.Add(E.Message);
          PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
            PostData);
          if CheckAddLog.Checked then
          begin
            RchEdtLog.Lines.Add(Format('Добавляю %s, ответ сервера:',
                [DataAjax]));
            RchEdtLog.Lines.Add(PageData.Text);
          end;
        end;
      end;

      for j := 1 to EdtTimeAddFrends.Value do
      begin
        if FlagCancel then
        begin
          StatusBar1.Panels[1].Text := 'Отменено пользователем';
          StatusBar1.Panels[2].Text := '';
          Progress.Progress := 0;
          exit;
        end;
        for x := 1 to 60 do
        begin
          if FlagCancel then
          begin
            StatusBar1.Panels[1].Text := 'Отменено пользователем';
            StatusBar1.Panels[2].Text := '';
            Progress.Progress := 0;
            exit;
          end;
          Application.ProcessMessages;
          Sleep(1000);
          Application.ProcessMessages;
          StatusBar1.Panels[2].Text := Format(
            'До след. отпр. ост. %d мин, %d сек.', [EdtTimeAddFrends.Value - j,
            x - 60]);
        end;

      end;
    end;
    PageData.Free;
    PostData.Free;
  except
    on E: Exception do
      RchEdtLog.Lines.Add(E.Message);
  end;
end;

procedure TFrmMain.actCancelExecute(Sender: TObject);
begin
  FlagCancel := true;
  StartSend := LstFrend.ItemIndex;
end;

procedure TFrmMain.actCloseExecute(Sender: TObject);
begin
  Close
end;

procedure TFrmMain.actConnectExecute(Sender: TObject);
var
  PostData: TStringList;
  PageData: TStringList;
  Domain: string;
  TmpStr: string;
  result: Boolean;
  s: string;
  resFrend: Boolean;
  Cnt: Integer;
  FirstName, LastName: string;
  CopyS: String;
  CopyId: Integer;
begin
  StartSend := 0;
  PostData := TStringList.Create;
  PageData := TStringList.Create;
  try
    StatusBar1.Panels[1].Text := 'Подключаюсь к mail.ru... Ждем...';
    PostData.Add(Format('page=http://my.mail.ru/mail/%s', [EdtLogin.Text]));
    PostData.Add(Format('Login=%s', [EdtLogin.Text]));
    Domain := CmbDomain.Text;
    Delete(Domain, 1, 1);
    PostData.Add(Format('Domain=%s', [Domain]));
    PostData.Add(Format('Password=%s', [EdtPass.Text]));
    try
      PageData.Text := IdHTTP1.post('http://auth.mail.ru/cgi-bin/auth',PostData);
    Except
      on E: Exception do
      begin
        RchEdtLog.Lines.Add(E.Message);
        PageData.Text := IdHTTP1.post('http://auth.mail.ru/cgi-bin/auth',PostData);
      end;
    end;
    if pos('window-loading', PageData.Text) = 0 then
    begin
      MessageBox(Application.Handle, PChar('Авторизация пользователя прошла неудачно'), 'Error', MB_ICONHAND);
      exit;
    end;

    TmpStr := PageData.Text;
    GetMnaMnb(TmpStr);

    // загружаем аватарку
    StatusBar1.Panels[1].Text :='Получаю аватарку и основную информацию mail.ru... Ждем...';
    TmpStr := copy(Domain, 1, pos('.', Domain) - 1);
    GetImageJpeg(IdHTTP1, Format('http://avt-14.foto.mail.ru/%s/%s/_avatar190?13855603422',[TmpStr, EdtLogin.Text]), Image2);
    // загружаем наше имя
    FirstName := Pars('ame-firstname">', PageData.Text, ',');
    LastName := Pars('ame-lastname">', PageData.Text, ',');
//    PageData.SaveToFile('D:\sa.txt');
    Delete(FirstName, 1, 8);
    Delete(FirstName, Pos('<',FirstName), Length(FirstName));
    Delete(LastName, 1, 7);
    Delete(LastName, Pos('<',LastName), Length(LastName));
    Label1.Caption := Format('%s %s', [FirstName, LastName]);
    Image4.Visible := true;

    if not ChckInsertFrends.Checked then
      exit;

    // получаем список друзей
    StatusBar1.Panels[1].Text := 'Получаю список друзей с mail.ru... Ждем...';
    s := Pars('ActiveFriendsCount', PageData.Text, ',');
    Delete(s, 1, 15);
    FriendsCount := StrToInt(s);
    FrmMain.InsertProgress(0, FriendsCount, FrmMain.StatusBar1);

    try
      PageData.Text := IdHTTP1.Get('http://my.mail.ru/friends');
    Except
      on E: Exception do
      begin
        RchEdtLog.Lines.Add(E.Message);
        IdHTTP1.Get('http://my.mail.ru/friends');
      end;
    end;

    PostData.Clear;
    LstFrend.Clear;
    TmpStr := PageData.Text;
    Delete(TmpStr, 1, pos('data-email', TmpStr) + 11);
    Delete(TmpStr, pos('</div>', TmpStr), Length(TmpStr));

    result := false;
    repeat
      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;

      CopyS := copy(TmpStr, 1, pos('"', TmpStr) - 1);
      Delete(TmpStr, 1, pos('data-user-id', TmpStr) + 13);
      CopyId := StrToInt(copy(TmpStr, 1, pos('"', TmpStr) - 1));
      LstFrend.Items.AddObject(CopyS, TObject(CopyId));

      if pos('data-email', TmpStr) > 0 then
        Delete(TmpStr, 1, pos('data-email', TmpStr) + 11)
      else
        result := true;
      Progress.Progress := Progress.Progress + 1;
    until result;

    resFrend := false;
    Cnt := 20;
    repeat
      result := false;
      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;

      PostData.Add(Format(
          'ajax_call=1&func_name=load&mna=%s&mnb=%s&encoding=windows-1251&arg_offset=%d&arg_limit=100&arg_filter=all', [Mna, Mnb, Cnt]));

      try
        PageData.Text := IdHTTP1.post('http://my.mail.ru/friends?ajax=1',
          PostData);
      Except
        on E: Exception do
        begin
          RchEdtLog.Lines.Add(E.Message);
          PageData.Text := IdHTTP1.post('http://my.mail.ru/friends?ajax=1',
            PostData);
        end;
      end;

      TmpStr := PageData.Text;
      Delete(TmpStr, 1, pos('data-email', TmpStr) + 11);
      Delete(TmpStr, pos('</div>', TmpStr), Length(TmpStr));
      if pos('data-email', TmpStr) > 0 then
        Inc(Cnt, 100)
      else
      begin
        resFrend := true;
        result := true;
        // Exit;
      end;

      while not result do
      begin
        // repeat
        if FlagCancel then
        begin
          StatusBar1.Panels[1].Text := 'Отменено пользователем';
          StatusBar1.Panels[2].Text := '';
          Progress.Progress := 0;
          exit;
        end;

        CopyS := copy(TmpStr, 2, pos('\', TmpStr) - 2);
        Delete(TmpStr, 1, pos('data-user-id', TmpStr) + 14);
        CopyId := StrToInt(copy(TmpStr, 1, pos('\', TmpStr) - 1));
        LstFrend.Items.AddObject(CopyS, TObject(CopyId));
        if pos('data-email', TmpStr) > 0 then
        begin
          Delete(TmpStr, 1, pos('data-email', TmpStr) + 11);
        end
        else
          result := true;
        Progress.Progress := Progress.Progress + 1;
      end;
      // until result ;
      Label4.Caption := Format('Мои друзья: %d', [LstFrend.Items.Count]);
    until resFrend;

    Label4.Caption := Format('Мои друзья: %d', [LstFrend.Items.Count]);

    if ChckFrends.Checked then
      LstFrend.CheckAll(cbChecked, true, true);

  finally
    PostData.Free;
    PageData.Free;
    StatusBar1.Panels[1].Text := 'Готово';
    GetEdtSetting(false);
  end;
end;

procedure TFrmMain.actDisconnectExecute(Sender: TObject);
begin
  IdHTTP1.Get('http://my.mail.ru/?logout=1');
  IdHTTP1.Disconnect;
  Label1.Caption := '';
  Image2.Picture := nil;
  GetEdtSetting(true);
end;

procedure TFrmMain.ActFindFrendsExecute(Sender: TObject);
begin
  FindFrends(EdtStrPeople.Value);
end;

procedure TFrmMain.actGoMessageFindFrendExecute(Sender: TObject);
var
  TmpStr: string;
  i: Integer;
begin
  // Начать отправку с указанного
  StartSend := LstFrend.ItemIndex;
  if StartSend = 0 then
  begin
    Application.MessageBox('Найдите нужный контакт и повторите попытку',
      'Error', MB_ICONERROR);
    edtFind.SetFocus;
    exit;
  end;
  actMessageExecute(Sender);
end;

procedure TFrmMain.actGoMessageSlctUserExecute(Sender: TObject);
var
  TmpStr: string;
  i: Integer;
begin
  // Начать отправку с последнего
  TmpStr := lastUse.Caption;
  for i := 0 to LstFrend.Count - 1 do
    if TmpStr = LstFrend.Items[i] then
      StartSend := i;
  if StartSend = 0 then
  begin
    Application.MessageBox('Не могу найти последнего кому отправлял сообщение',
      'Error', MB_ICONERROR);
    exit;
  end;
  actMessageExecute(Sender);
end;

procedure TFrmMain.actMessageExecute(Sender: TObject);
var
  PostData: TStringList;
  PageData: TStringList;
  j, i: Integer;
  TmpStr: string;
  IdUser: Integer;
  CntChkd: Integer;
  CntMes: Integer;
  TmpI: Integer;
begin
  // отпраивть сообщение
  FlagCancel := false;
  StatusBar1.Panels[1].Text := 'Отправляю письма...';
  PostData := TStringList.Create;
  PageData := TStringList.Create;
  try
    FrmMain.InsertProgress(0, FriendsCount - StartSend, FrmMain.StatusBar1);

    CntChkd := 0;
    CntMes := 0;
    for i := 0 to LstFrend.Count - 1 do
      if LstFrend.Checked[i] then
        Inc(TmpI);
    CntChkd := TmpI - StartSend;

    Label8.Caption := Format('отправлено %d осталось %d',
      [CntMes, CntChkd - CntMes]);
    TmpStr := '';
    for i := StartSend to LstFrend.Count - 1 do
    begin
      if Length(RchEdtMessage.Lines.Text) = 0 then
      begin
        Application.MessageBox('Введите текст сообщения', 'Error',
          MB_ICONERROR);
        exit;
      end;

      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;

      if ChckConnect.Checked then
        if not IsConnectedToInternet then
        begin
          Application.MessageBox('Нет соединения с интернетом', 'Error',
            MB_ICONERROR);
          exit;
        end;
      Progress.Progress := Progress.Progress + 1;

      if LstFrend.Checked[i] then
      begin
        if ChckAutoSave.Checked then
          PropStorageEh1.SaveProperties;

        StatusBar1.Panels[1].Text := Format('Отправляю сообщение %s',
          [LstFrend.Items[i]]);
        LstFrend.Selected[i] := true;
        if SpnEdtInterval.Value > 0 then
          for j := 1 to SpnEdtInterval.Value do
          begin
            Label9.Caption := Format('До след. отпр. ост. %d',
              [SpnEdtInterval.Value - j]);
            Sleep(1000);
            Application.ProcessMessages;
            if FlagCancel then
            begin
              StatusBar1.Panels[1].Text := 'Отменено пользователем';
              StatusBar1.Panels[2].Text := '';
              Progress.Progress := 0;
              exit;
            end;
          end;

        IdUser := Integer(LstFrend.Items.Objects[i]);
        PostData.Clear;
        PostData.Add(Format(
            'ajax_call=1&func_name=dialogues.post_message&mna=%s&mnb=%s&encoding=windows-1251&arg_user_id=%d&arg_message=%s', [Mna, Mnb, IdUser, RchEdtMessage.Lines.Text]));
        try
          PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
            PostData);
          if CheckAddLog.Checked then
          begin
            RchEdtLog.Lines.Add(Format('Сообщение для %s, ответ сервера:',
                [IdUser]));
            RchEdtLog.Lines.Add(PageData.Text);
          end;
        Except
          on E: Exception do
          begin
            RchEdtLog.Lines.Add(E.Message);
            if CheckIgnoreError.Checked then
              CONTINUE
            else
              FlagCancel := true;
          end;
        end;
        TmpStr := PageData.Text;
        Inc(CntMes);
        if pos('OK', TmpStr) = 0 then
        begin
          RchEdtLog.Lines.Add('error send message:');
          RchEdtLog.Lines.Add(PageData.Text);
        end;
        Label8.Caption := Format('отправлено %d осталось %d',
          [CntMes, CntChkd - CntMes]);
        Application.ProcessMessages;
        if FlagCancel then
        begin
          StatusBar1.Panels[1].Text := 'Отменено пользователем';
          StatusBar1.Panels[2].Text := '';
          Progress.Progress := 0;
          Label8.Caption := Format('отправлено %d осталось %d', [CntMes, 0]);
          exit;
        end;
      end;
    end;
  finally
    PostData.Free;
    PageData.Free;
    StatusBar1.Panels[1].Text := 'готово';
  end;
end;

procedure TFrmMain.actSaveLogExecute(Sender: TObject);
begin
  if FileSaveDialog1.Execute then
    RchEdtLog.Lines.SaveToFile(FileSaveDialog1.FileName);
end;

procedure TFrmMain.actSearchFreindExecute(Sender: TObject);
var
  PostData: TStringList;
  PageData: TStringList;
  EMailData: TStringList;
  result: Boolean;
  TmpStr: string;
  i, j: Integer;
  CaptIdL, CaptIdR: string;
  DataAjax: string;
begin
  FlagCancel := false;
  if ChckConnect.Checked then
    if not IsConnectedToInternet then
    begin
      Application.MessageBox('Нет соединения с интернетом', 'Error',
        MB_ICONERROR);
      exit;
    end;
  PostData := TStringList.Create;
  PageData := TStringList.Create;
  try
    // идем на страничку - друзья
    StatusBar1.Panels[1].Text := 'идем на страничку - друзья...';
    PageData.Clear;
    PageData.Text := IdHTTP1.Get('http://my.mail.ru/friends');
    if pos('window-loading', PageData.Text) <= 0 then
    begin
      MessageBox(Application.Handle, PChar('Не могу перейти к друзьям'),
        'Error', MB_ICONHAND);
      exit;
    end;

    // получаем список всех знакомых
    StatusBar1.Panels[1].Text := 'получаем список всех знакомых...';
    PageData.Clear;
    try
      PageData.Text := IdHTTP1.Get('http://my.mail.ru/my/suggestions');
    Except
      on E: Exception do
      begin
        RchEdtLog.Lines.Add(E.Message);
        PageData.Text := IdHTTP1.Get('http://my.mail.ru/my/suggestions');
      end;
    end;

    if pos('window-loading', PageData.Text) <= 0 then
    begin
      MessageBox(Application.Handle, PChar('Не могу получить список знакомых'),'Error', MB_ICONHAND);
      exit;
    end;

    // разбираем полученные данные
    StatusBar1.Panels[1].Text := 'разбираем полученные данные...';
    EMailData := TStringList.Create;

    TmpStr := PageData.Text;
    Delete(TmpStr, 1, pos('data-email', TmpStr) + 11);
    Delete(TmpStr, pos('</div>', TmpStr), Length(TmpStr));
    EMailData.Clear;
    result := false;
    repeat
      EMailData.Add(copy(TmpStr, 1, pos('"', TmpStr) - 1));
      if pos('data-email', TmpStr) > 0 then
        Delete(TmpStr, 1, pos('data-email', TmpStr) + 11)
      else
        result := true;

      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;

    until result;

    FrmMain.InsertProgress(0, EMailData.Count - 1, FrmMain.StatusBar1);
    StatusBar1.Panels[1].Text := 'начинаем проситься в друзья...';
    for i := 0 to EMailData.Count - 1 do
    begin // просимся в друзья
      StatusBar1.Panels[2].Text := Format('отправлено %d осталось %d',
        [i, EMailData.Count - i]);
      Progress.Progress := Progress.Progress + 1;

      DataAjax := EMailData[i];
      PostData.Clear;
      PostData.Add(Format(
          'ajax_call=1&func_name=suggest.add&mna=%s&mnb=%s&encoding=windows-1251&arg_email=%s&arg_Email=%s&arg_profile_id=&arg_page=suggestions', [Mna, Mnb, DataAjax, DataAjax]));
      try
        PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
          PostData);
      Except
        on E: Exception do
        begin
          RchEdtLog.Lines.Add(E.Message);
          PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
            PostData);
        end;
      end;
      TmpStr := PageData.Text;
      if pos('OK', TmpStr) = 0 then
      begin
        RchEdtLog.Lines.Add('error add frends:');
        RchEdtLog.Lines.Add(PageData.Text);
        exit;
      end;

      if pos('captcha', TmpStr) > 0 then
      begin
        TmpStr := GetCaptcha(TmpStr,
          'http://my.mail.ru/cgi-bin/my/get_image?id=');
        if TmpStr = '' then
          exit;
        CaptIdL := copy(TmpStr, 1, pos('"', TmpStr) - 1);
        CaptIdR := copy(TmpStr, pos(';', TmpStr) + 1, Length(TmpStr));
        PostData.Clear;
        PostData.Add(Format(
            'ajax_call=1&func_name=suggest.add&mna=%s&mnb=%s&encoding=windows-1251&arg_email=%s&arg_Email=%s&arg_profile_id=&arg_page=suggestions&arg_captcha_id=%s&arg_captcha_answer=%s', [Mna, Mnb, DataAjax, DataAjax, CaptIdL, CaptIdR]));
        try
          PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
            PostData);
        Except
          on E: Exception do
          begin
            RchEdtLog.Lines.Add(E.Message);
            PageData.Text := IdHTTP1.post('http://my.mail.ru/cgi-bin/my/ajax',
              PostData);
          end;
        end;
      end;

      if ChckConnect.Checked then
        if not IsConnectedToInternet then
        begin
          Application.MessageBox('Нет соединения с интернетом', 'Error',
            MB_ICONERROR);
          exit;
        end;

      for j := 1 to SpnEdtInterval.Value do
      begin
        if FlagCancel then
        begin
          StatusBar1.Panels[1].Text := 'Отменено пользователем';
          StatusBar1.Panels[2].Text := '';
          Progress.Progress := 0;
          exit;
        end;
        Sleep(1000);
        Application.ProcessMessages;
      end;
    end;
    ProgressFree;
    StatusBar1.Panels[1].Text := 'готово';
    StatusBar1.Panels[2].Text := '';
  finally
    PostData.Free;
    PageData.Free;
    EMailData.Free;
  end;
end;

procedure TFrmMain.actUpdateFindFrendsExecute(Sender: TObject);
var
  PostData: TStringList;
  PageData: TStringList;
  TmpStr: string;
  CmbValue: string;
  result: Boolean;
  FlagReg: byte;
begin
  StatusBar1.Panels[1].Text := 'Получаю настройки для поиска';
  PageData := TStringList.Create();
  PageData.Text := IdHTTP1.Get(
    'http://my.mail.ru/my/search_people?q=&st=search&head=1&search=%CD%E0%E9%F2%E8');
  if pos('window-loading', PageData.Text) = 0 then
  begin
    MessageBox(Application.Handle, PChar(
        'Ошибка, возможно вы не авторизованы, увы :('), 'Error', MB_ICONHAND);
    exit;
  end;

  TmpStr := PageData.Text;
  GetMnaMnb(TmpStr); // получаем эти два параметра для страницы
  Delete(TmpStr, 1, pos('<select name="age" class="mf_vmi"  disabled>',
      TmpStr) + 44);
  Delete(TmpStr, pos('</select>', TmpStr), Length(TmpStr));
  Trim(TmpStr);
  CmbVozrast.Clear;
  result := false;
  CmbValue := '';
  repeat
    CmbValue := copy(TmpStr, pos('<option value="', TmpStr) + 18,
      pos('</', TmpStr));
    Delete(CmbValue, pos('</', CmbValue), Length(CmbValue));
    Trim(CmbValue);
    if CmbValue <> '' then
      CmbVozrast.Items.Add(CmbValue)
    else
      result := true;
    Delete(TmpStr, 1, pos('</', TmpStr));
  until result;
  CmbVozrast.ItemIndex := 0;

  // получим список стран
  PageData.Clear;
  PageData.Text := IdHTTP1.Get(Format(
      'http://my.mail.ru/cgi-bin/my/ajax?ajax_call=1&func_name=perl_get_geo&mna=%s&mnb=%s&encoding=windows-1251', [Mna, Mnb]));
  TmpStr := PageData.Text;

  GetCountryData(TmpStr, CmbCountry, FlagReg);
  // получаем города страны

  RchEdtLog.Lines := PageData;
  PageData.Free;
  StatusBar1.Panels[1].Text := 'готово';
end;

procedure TFrmMain.ChckFrendsClick(Sender: TObject);
begin
  if ChckFrends.Checked then
    LstFrend.CheckAll(cbChecked, true, true)
  else
    LstFrend.CheckAll(cbUnchecked, true, true);

end;

procedure TFrmMain.CmbCountryChange(Sender: TObject);
var
  FlagReg: byte;
  PageData: TStringList;
  TmpStr: string;
  IdCountry: Integer;
begin
  //
  PageData := TStringList.Create;
  IdCountry := Integer(CmbCountry.Items.Objects[CmbCountry.ItemIndex]);
  try
    PageData.Clear;
    TmpStr :=
      'http://my.mail.ru/cgi-bin/my/ajax?ajax_call=1&func_name=perl_get_geo&mna='
      + Mna + '&mnb=' + Mnb + '&encoding=windows-1251&data=%5B%22' + IntToStr
      (IdCountry) + '%22%5D';
    PageData.Text := IdHTTP1.Get(TmpStr);
    // RchEdtLog.Lines := PageData ;
    TmpStr := PageData.Text;
  finally
    PageData.Free;
  end;

  GetCountryData(TmpStr, CmbRegion, FlagReg);
  if FlagReg = 1 then // Россия
  begin
    CmbRegion.Enabled := true;
    CmbCity.Enabled := false;
  end
  else
  begin
    GetCountryData(TmpStr, CmbCity, FlagReg);
    CmbCity.Enabled := true;
    CmbRegion.Enabled := false;
  end;

end;

procedure TFrmMain.CmbRegionChange(Sender: TObject);
var
  FlagReg: byte;
  PageData: TStringList;
  TmpStr: string;
  IdCountry: Integer;
begin
  //
  PageData := TStringList.Create;
  IdCountry := Integer(CmbRegion.Items.Objects[CmbRegion.ItemIndex]);
  try
    PageData.Clear;
    TmpStr :=
      'http://my.mail.ru/cgi-bin/my/ajax?ajax_call=1&func_name=perl_get_geo&mna='
      + Mna + '&mnb=' + Mnb + '&encoding=windows-1251&data=%5B%22' + IntToStr
      (IdCountry) + '%22%5D';
    PageData.Text := IdHTTP1.Get(TmpStr);
    TmpStr := PageData.Text;
  finally
    PageData.Free;
  end;
  CmbCity.Enabled := true;
  GetCountryData(TmpStr, CmbCity, FlagReg);
end;

procedure TFrmMain.edtFindEnter(Sender: TObject);
begin
  // очистить значение
  edtFind.Font.Color := clBlack;
  edtFind.Text := EmptyStr;
end;

procedure TFrmMain.edtFindExit(Sender: TObject);
begin
  if edtFind.Text = EmptyStr then
  begin
    edtFind.Font.Color := clGray;
    edtFind.Text := 'Для поиска введите E-Mail и нажмите Enter';
  end;
end;

procedure TFrmMain.edtFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
  Frend: string;
  FindStr: string;
  Start: Integer;
begin
  { Вызвать поиск при Ентере }
  if Key = VK_RETURN then
  begin
    FindStr := edtFind.Text;
    Start := LstFrend.ItemIndex;
    if Start = -1 then
      Start := 0;
    for i := Start to LstFrend.Count - 1 do
    begin
      Frend := LstFrend.Items[i];
      if pos(FindStr, Frend) > 0 then
      begin
        LstFrend.Selected[i] := true;
        exit;
      end;
    end;
  end
  else if Key = VK_ESCAPE then
  begin
    edtFind.Text := EmptyStr;
    edtFindExit(Sender);
  end;
end;

procedure TFrmMain.EdtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    actConnectExecute(Sender);
end;

procedure TFrmMain.EdtPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    actConnectExecute(Sender);
end;

procedure TFrmMain.EdtTextSearchEnter(Sender: TObject);
begin
  // очистить значение
  EdtTextSearch.Font.Color := clBlack;
  EdtTextSearch.Text := EmptyStr;
end;

procedure TFrmMain.EdtTextSearchExit(Sender: TObject);
begin
  if EdtTextSearch.Text = EmptyStr then
  begin
    EdtTextSearch.Font.Color := clGray;
    EdtTextSearch.Text := 'Имя, Фамилия или E-mail';
  end;
end;

procedure TFrmMain.EdtTextSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    EdtTextSearch.Text := EmptyStr;
    EdtTextSearchExit(Sender);
  end;
end;

procedure TFrmMain.FindFrends(StrCount: Integer); // кнопка найти друзей
var
  PostData: TStringList;
  PageData: TStringList;
  TmpStr: string;
  CityId: string;
  StrAge: string;
  Sex: string;
  PeopleCnt: string;
  result: Boolean;
  resultAll: Boolean;
  PeopleEmail: string;
  Cnt: Integer;
  StrPeople: Integer;
  TextFind : string;
begin
  // поиск друзей
  PostData := TStringList.Create;
  PageData := TStringList.Create;
  FlagCancel := false;
  try
    CityId := IntToStr(Integer(CmbCity.Items.Objects[CmbCity.ItemIndex]));

    if (EdtTextSearch.Text <> '') and (EdtTextSearch.Text <> 'Имя, Фамилия или E-mail') then
    begin
      TextFind := 'common%22%3A+%22'+UrlEncode(EdtTextSearch.Text)+'%22%2C+%22';
    end
    else
      TextFind := '';



    case RdGrpSex.ItemIndex of
      0:
        Sex := 'sex%22%3A+2%2C+%22';
      1:
        Sex := 'sex%22%3A+1%2C+%22';
      2:
        Sex := '';
    end;
    StrAge := TextFind;
//    if CmbVozrast.ItemIndex > 0 then
      StrAge := 'general%22%3A+%7B%22' + StrAge + Sex + 'age%22%3A+' + IntToStr(CmbVozrast.ItemIndex) + '%7D%2C+%22';
//    else
//      StrAge := '';
    TmpStr :='http://my.mail.ru/cgi-bin/my/ajax?ajax_call=1&func_name=search.getlist&mna='
              + Mna + '&mnb=' + Mnb + '&encoding=windows-1251&data=%5B%7B%22' +
              StrAge + 'city%22%3A+%7B%22city_id%22%3A+' + CityId +
              '%2C+%22had_lived%22%3A+1%7D%7D%2C+false%2C+null%2C+null%2C+%22%22%5D';

    RchEdtLog.Lines.Text := TmpStr ;

    if FlagCancel then
    begin
      StatusBar1.Panels[1].Text := 'Отменено пользователем';
      StatusBar1.Panels[2].Text := '';
      Progress.Progress := 0;
      exit;
    end;

    PageData.Text := IdHTTP1.Get(TmpStr);

    TmpStr := PageData.Text;
    Delete(TmpStr, 1, pos('">', TmpStr) + 2);
    Delete(TmpStr, pos('pagesNewSelected', TmpStr), Length(TmpStr));
    PeopleCnt := copy(TmpStr, 1, pos('</', TmpStr) - 2); ;
    ListFindPeople.Clear;
    result := false;
    Cnt := 1;
    FrmMain.InsertProgress(0, StrCount * 30, FrmMain.StatusBar1);
    StatusBar1.Panels[1].Text := 'ищу людей...';
    Application.ProcessMessages;
    repeat
      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;
      Progress.Progress := Progress.Progress + 1;
      Application.ProcessMessages;
      Delete(TmpStr, 1, pos('ajaxAddFriends', TmpStr) + 29);
      PeopleEmail := copy(TmpStr, 1, pos('from', TmpStr) - 4);
      if ((PeopleEmail <> '') and (pos('iSendOut', PeopleEmail) = 0)) then
      begin
        ListFindPeople.Items.Add(PeopleEmail);
        Inc(Cnt);
      end;
      if ((Cnt = 30) or (pos('@', PeopleEmail) = 0) or (pos('iSendOut',
            PeopleEmail) <> 0)) then
        result := true;
    until result;
    // вторая страница и далее

    resultAll := false;
    StrPeople := 1;
    if StrPeople <> StrCount then
    repeat
      if FlagCancel then
      begin
        StatusBar1.Panels[1].Text := 'Отменено пользователем';
        StatusBar1.Panels[2].Text := '';
        Progress.Progress := 0;
        exit;
      end;

      Progress.Progress := Progress.Progress + 1;
      Application.ProcessMessages;
      TmpStr :='http://my.mail.ru/cgi-bin/my/ajax?ajax_call=1&func_name=search.getlist&mna='
                + Mna + '&mnb=' + Mnb + '&encoding=windows-1251&data=%5B%7B%22' +
                StrAge + 'city%22%3A+%7B%22city_id%22%3A+' + CityId +
                '%2C+%22had_lived%22%3A+1%7D%7D%2C+false%2C+null%2C+null%2C+%22%22%5D';
      PageData.Text := IdHTTP1.Get(TmpStr);
      Inc(StrPeople);
      if StrPeople = StrCount then
        resultAll := true;

      TmpStr := PageData.Text;
      Delete(TmpStr, 1, pos('">', TmpStr) + 2);
      Delete(TmpStr, pos('pagesNewSelected', TmpStr), Length(TmpStr));
      PeopleCnt := copy(TmpStr, 1, pos('</', TmpStr) - 2);
      ;
      Cnt := 1;
      result := false;
      repeat
        if FlagCancel then
        begin
          StatusBar1.Panels[1].Text := 'Отменено пользователем';
          StatusBar1.Panels[2].Text := '';
          Progress.Progress := 0;
          exit;
        end;

        Progress.Progress := Progress.Progress + 1;
        Application.ProcessMessages;
        Delete(TmpStr, 1, pos('ajaxAddFriends', TmpStr) + 29);
        PeopleEmail := copy(TmpStr, 1, pos('from', TmpStr) - 4);
        if ((PeopleEmail <> '') and (pos('iSendOut', PeopleEmail) = 0)) then
        begin
          ListFindPeople.Items.Add(PeopleEmail);
          Inc(Cnt);
        end;
        if ((Cnt = 30) or (pos('@', PeopleEmail) = 0) or (pos('iSendOut',
              PeopleEmail) <> 0)) then
          result := true;
      until result;
    until resultAll;

    Progress.Progress := StrCount * 30;
    LabelCountFindPeople.Caption := PeopleCnt;
    LabelCntListPeople.Caption := Format('Загружено %d человек',[ListFindPeople.Count]);
    StatusBar1.Panels[1].Text := 'Поиск закончен';
  finally
    PostData.Free;
    PageData.Free;
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  CheckStartProgram.Checked := true;
{$IFDEF DEBUG}
  CheckStartProgram.Checked := false;
{$ENDIF}
  if CheckStartProgram.Checked then
    if WaitForSingleObject(hMutex, 0) <> 0 then
    begin
      Application.MessageBox('Приложение уже запущено, увы :(', 'Error',
        MB_ICONERROR);
      Application.Terminate;
    end;

  StartSend := 0;
  FlagCancel := false;
  RchEdtLog.Lines.Clear;
  cxPageControl1.ActivePageIndex := 0;
  WorkTime := TWorkTime.Create(true);
  WorkTime.FreeOnTerminate := true;
  WorkTime.StartTime := Now;
  WorkTime.Resume;

  Caption := Format('My.Mir Ver.: %s', [GetSelfVersion]);
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  FrmLicense := TFrmLicense.Create(self);
  try
    FrmLicense.Show;
    FrmLicense.Hide;
    if not FrmLicense.LicenseActivate then
      if FrmLicense.ShowModal = mrCancel then
      begin
        Application.Terminate;
      end;
  finally
    FrmLicense.Free;
  end;

end;

function TFrmMain.GetCaptcha(otvAjax, UrlCaptcha: string): string;
var
  TmpStr: string;
  MemoryStream: TMemoryStream;
  Img: TPngImage;
begin
  result := '';
  Delete(otvAjax, 1, 5);
  Delete(otvAjax, Length(otvAjax) - 3, 5);
  Trim(otvAjax);
  TmpStr := copy(otvAjax, pos('"captcha","', otvAjax) + 11, Length(otvAjax));
  MemoryStream := TMemoryStream.Create;
  Img := TPngImage.Create;
  try
    IdHTTP1.Get(Format('http://my.mail.ru/cgi-bin/my/get_image?id=%s',
        [TmpStr]), MemoryStream);
    MemoryStream.Position := 0;
    Img.LoadFromStream(MemoryStream);
    FrmCaptcha := TFrmCaptcha.Create(self);
    FrmCaptcha.ImgCaptcha.Picture.Graphic := Img;
    FrmCaptcha.ImgCaptcha.Repaint;
    if FrmCaptcha.ShowModal = mrOk then
    begin
      result := Format('%s;%s', [TmpStr, FrmCaptcha.EdtCaptcha.Text]);
      // PostData.Clear;
      // PostData.add(Format('ajax_call=1&func_name=suggest.add&mna=%s&mnb=%s&encoding=windows-1251&arg_email=%s&arg_Email=%s&arg_profile_id=&arg_page=suggestions&arg_captcha_id=%s&arg_captcha_answer=%s',[Mna, mnb, DataAjax, DataAjax, TmpStr, FrmCaptcha.EdtCaptcha.Text]));
      // PageData.Text := IdHTTP1.Post('http://my.mail.ru/cgi-bin/my/ajax',PostData);
    end
    else
      result := '';
  finally
    MemoryStream.Free;
    Img.Free;
    FrmCaptcha.Free;
  end;
end;

procedure TFrmMain.GetCountryData(TmpStr: string; CmbValue: TComboBox;
  var FlagRegion: byte);
var
  StrId, StrCntr: string;
  Str: string;
  result: Boolean;
  Country: string;
  IdCntry: Integer;
begin
  Delete(TmpStr, 1, 23);
  StrCntr := copy(TmpStr, 1, pos('"]', TmpStr));
  Delete(TmpStr, 1, pos('["', TmpStr) + 1);
  StrId := copy(TmpStr, 1, pos('"]', TmpStr));

  Delete(TmpStr, 1, pos('"]', TmpStr) + 1);
  if pos('null', TmpStr) > 0 then
    FlagRegion := 0
  else
    FlagRegion := 1;

  result := false;
  CmbValue.Clear;
  CmbValue.AddItem('Выбрать', TObject(0));
  repeat
    Str := copy(StrCntr, 1, pos('"', StrCntr) - 1);
    if Str <> '' then
    begin
      Country := Str;
      Delete(StrCntr, 1, pos('"', StrCntr) + 2);
      Str := copy(StrId, 1, pos('"', StrId) - 1);
      IdCntry := StrToInt(Str);
      Delete(StrId, 1, pos('"', StrId) + 2);
      CmbValue.AddItem(Country, TObject(IdCntry));
    end
    else
      result := true;
  until result;
  CmbValue.ItemIndex := 0;

end;

procedure TFrmMain.GetEdtSetting(Value: Boolean);
begin
  EdtLogin.Enabled  := Value;
  CmbDomain.Enabled := Value;
  EdtPass.Enabled   := Value;
end;

procedure TFrmMain.GetMnaMnb(TmpStr: string);
begin
  Delete(TmpStr, 1, pos('"mna":', TmpStr) + 7);
  Mna := copy(TmpStr, 1, pos('"', TmpStr) - 1);
  Delete(TmpStr, 1, pos('"mnb":', TmpStr) + 7);
  Mnb := copy(TmpStr, 1, pos('"', TmpStr) - 1);
end;

procedure TFrmMain.InsertProgress(Min, Max: Integer; Parent: TWinControl);
begin
  Progress := TGauge.Create(Parent);
  Progress.Visible := false;
  Progress.Parent := Parent;
  Progress.Progress := 0;
  Progress.MaxValue := Max;
  Progress.MinValue := Min;

  Progress.BorderStyle := bsNone;
  Progress.BackColor := clScrollBar;
  Progress.ForeColor := clNavy;

  Progress.Left := 3;
  Progress.Width := (Parent as TStatusBar).Panels[0].Width - 6;
  Progress.Height := (Parent as TStatusBar).Height - 8;
  Progress.Top := 4;
  Progress.Font.Size := 6;

  Progress.Visible := true;
  Parent.Refresh;
end;

procedure TFrmMain.PrepareProgress;
begin
  Application.ProcessMessages;
end;

procedure TFrmMain.ProgressFree;
begin
  if Progress <> nil then
    FreeAndNil(Progress);
  StatusBar1.Panels[1].Text := '';
end;

initialization

hMutex := CreateMutex(nil, true, PChar(ExtractFileName(Application.ExeName)));

finalization

CloseHandle(hMutex);

end.
