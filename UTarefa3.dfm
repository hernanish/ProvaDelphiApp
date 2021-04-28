inherited frmTarefa3: TfrmTarefa3
  Caption = 'Tarefa 3'
  ClientHeight = 407
  ClientWidth = 779
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbVlrProjeto: TLabel
    Left = 5
    Top = 3
    Width = 96
    Height = 13
    Caption = 'Valores por projeto:'
  end
  object dbgProjetos: TDBGrid
    Left = 5
    Top = 22
    Width = 768
    Height = 302
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edTotal: TMaskEdit
    Left = 652
    Top = 339
    Width = 121
    Height = 21
    Alignment = taRightJustify
    TabOrder = 1
    Text = ''
  end
  object edTotalDiv: TMaskEdit
    Left = 652
    Top = 373
    Width = 121
    Height = 21
    Alignment = taRightJustify
    TabOrder = 2
    Text = ''
  end
  object btnTotal: TButton
    Left = 523
    Top = 337
    Width = 121
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 3
    OnClick = btnTotalClick
  end
  object btnTotalDiv: TButton
    Left = 525
    Top = 374
    Width = 121
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 4
    OnClick = btnTotalDivClick
  end
end
