object FrmLicense: TFrmLicense
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1082#1090#1080#1074#1072#1094#1080#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
  ClientHeight = 430
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    AlignWithMargins = True
    Left = 106
    Top = 296
    Width = 219
    Height = 16
    Alignment = taCenter
    Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100#1089#1103' '#1085#1077' '#1091#1076#1072#1083#1086#1089#1100', '#1091#1074#1099' :('
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 440
    Height = 114
    Align = alTop
    Caption = #1051#1080#1094#1077#1085#1079#1080#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 196
      Height = 16
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1102#1076#1072' '#1083#1080#1094#1077#1085#1079#1080#1086#1085#1085#1099#1081' '#1082#1083#1102#1095
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtLicense: TEdit
      Left = 8
      Top = 40
      Width = 417
      Height = 21
      TabOrder = 0
    end
    object BtnActivate: TButton
      Left = 264
      Top = 75
      Width = 161
      Height = 25
      Caption = #1040#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090' '#1083#1080#1094#1077#1085#1079#1080#1102
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnActivateClick
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 123
    Width = 440
    Height = 164
    Align = alTop
    Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1077' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1091#1102' '#1092#1086#1088#1084#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 34
      Top = 25
      Width = 32
      Height = 15
      Caption = 'E-mail'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 69
      Top = 41
      Width = 228
      Height = 15
      Caption = #1041#1091#1076#1077#1090' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100#1089#1103' '#1076#1083#1103' '#1086#1073#1088#1072#1090#1085#1086#1081' '#1089#1074#1103#1079#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 52
      Height = 15
      Caption = #1042#1072#1096#1077' '#1048#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 96
      Width = 48
      Height = 15
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object EdtEmail: TEdit
      Left = 70
      Top = 21
      Width = 355
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EdtName: TEdit
      Left = 72
      Top = 60
      Width = 353
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EdtPhone: TEdit
      Left = 72
      Top = 92
      Width = 353
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BtnSelectLicense: TButton
      Left = 232
      Top = 126
      Width = 193
      Height = 25
      Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1083#1080#1094#1077#1085#1079#1080#1086#1085#1085#1099#1081' '#1082#1083#1102#1095#1100
      TabOrder = 3
      OnClick = BtnSelectLicenseClick
    end
  end
  object GroupBox3: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 318
    Width = 440
    Height = 106
    Caption = #1040#1083#1100#1090#1077#1088#1085#1072#1090#1080#1074#1085#1099#1081' '#1089#1087#1086#1089#1086#1073' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 260
      Height = 15
      Caption = #1054#1090#1087#1088#1072#1074#1100#1090#1077' '#1087#1086#1083#1091#1095#1077#1085#1085#1099#1081' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 75
      Width = 101
      Height = 15
      Caption = #1053#1072' '#1087#1086#1095#1090#1086#1074#1099#1081' '#1103#1097#1080#1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object EdtLicNumber: TEdit
      Left = 8
      Top = 40
      Width = 417
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EdtEmailkoder: TEdit
      Left = 112
      Top = 72
      Width = 313
      Height = 23
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = 'koder@koder.kz'
    end
  end
  object PropStorageEh1: TPropStorageEh
    Section = 'Reg'
    StorageManager = FrmMain.RegPropStorageManEh1
    StoredProps.Strings = (
      'GroupBox1.EdtEmail.<P>.Text'
      'GroupBox1.EdtName.<P>.Text'
      'GroupBox1.EdtPhone.<P>.Text'
      'GroupBox2.EdtLicense.<P>.Text')
    Left = 48
    Top = 48
  end
end
