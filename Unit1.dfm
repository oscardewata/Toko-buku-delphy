object Form1: TForm1
  Left = 289
  Top = 140
  Width = 822
  Height = 636
  Caption = 'Form1'
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 256
    Top = 32
    Width = 308
    Height = 37
    Caption = 'PEMESANAN BUKU '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 40
    Width = 8
    Height = 29
    Color = clInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 8
    Width = 8
    Height = 29
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 80
    Width = 361
    Height = 289
    Caption = 'PEMESANAN'
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 51
      Height = 20
      Caption = 'NAMA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 149
      Width = 126
      Height = 20
      Caption = 'JUMLAH BUKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 120
      Width = 65
      Height = 20
      Caption = 'HARGA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 89
      Height = 16
      Caption = 'JENIS BUKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 96
      Width = 95
      Height = 16
      Caption = 'JUDUL BUKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 184
      Width = 50
      Height = 16
      Caption = 'TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 224
      Width = 171
      Height = 13
      Caption = 'DISC 30% PEMBELIAN >100K'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 8
      Top = 248
      Width = 52
      Height = 16
      Caption = 'BAYAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 208
      Top = 64
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'NOVEL'
        'KOMIK')
    end
    object ComboBox2: TComboBox
      Left = 208
      Top = 88
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox2Change
      Items.Strings = (
        'HARRY POTTER'
        'SANG PEMIMPI'
        'THE RAINBOW'
        'LASKAR PELANGI'
        'LORD')
    end
    object ComboBox3: TComboBox
      Left = 208
      Top = 88
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBox3Change
      Items.Strings = (
        'NARUTO'
        'ONE PIECE'
        'DETECTIVE CONAN'
        'GINTAMA'
        'MINAMOTO MONOGATARI')
    end
    object Edit1: TEdit
      Left = 208
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 208
      Top = 148
      Width = 145
      Height = 21
      TabOrder = 4
      OnChange = Edit3Change
    end
    object Edit4: TEdit
      Left = 208
      Top = 120
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 208
      Top = 184
      Width = 145
      Height = 21
      TabOrder = 6
    end
    object Edit8: TEdit
      Left = 208
      Top = 216
      Width = 145
      Height = 21
      TabOrder = 7
    end
    object Edit9: TEdit
      Left = 208
      Top = 248
      Width = 145
      Height = 21
      TabOrder = 8
    end
  end
  object Button1: TButton
    Left = 384
    Top = 304
    Width = 81
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 472
    Top = 304
    Width = 81
    Height = 25
    Caption = 'MULAI LAGI'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 560
    Top = 304
    Width = 81
    Height = 25
    Caption = 'CARI'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 648
    Top = 304
    Width = 81
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button6: TButton
    Left = 512
    Top = 336
    Width = 81
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 5
    OnClick = Button6Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 384
    Width = 793
    Height = 201
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object GroupBox3: TGroupBox
    Left = 384
    Top = 80
    Width = 409
    Height = 217
    Caption = 'PENGIRIMAN'
    TabOrder = 7
    object Label12: TLabel
      Left = 40
      Top = 112
      Width = 105
      Height = 16
      Caption = 'TOTAL BAYAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 168
      Top = 53
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object Edit6: TEdit
      Left = 168
      Top = 104
      Width = 185
      Height = 21
      TabOrder = 1
    end
    object Button8: TButton
      Left = 208
      Top = 144
      Width = 97
      Height = 25
      Caption = 'HITUNG'
      TabOrder = 2
      OnClick = Button8Click
    end
    object RadioButton1: TRadioButton
      Left = 48
      Top = 32
      Width = 81
      Height = 25
      Caption = 'J N E'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 48
      Top = 64
      Width = 97
      Height = 33
      Caption = 'T I K I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = RadioButton2Click
    end
  end
  object Button7: TButton
    Left = 424
    Top = 336
    Width = 81
    Height = 25
    Caption = 'HAPUS SEMUA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button7Click
  end
  object Button5: TButton
    Left = 600
    Top = 336
    Width = 89
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 9
    OnClick = Button5Click
  end
  object DataSource1: TDataSource
    DataSet = ADODataSet1
    Left = 568
    Top = 48
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=F:\OS' +
      'CARR\KELOMPOK DELPI\kelompok delpi .mdb;Mode=Share Deny None;Per' +
      'sist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:' +
      'Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine' +
      ' Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Parti' +
      'al Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New' +
      ' Database Password="";Jet OLEDB:Create System Database=False;Jet' +
      ' OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Com' +
      'pact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OL' +
      'EDB:SFP=False'
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 664
    Top = 48
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 632
    Top = 48
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    Parameters = <>
    Left = 600
    Top = 48
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 696
    Top = 48
  end
end
