inherited frmTarefa2: TfrmTarefa2
  Caption = 'Tarefa 2'
  PixelsPerInch = 96
  TextHeight = 13
  object pbTemp1: TProgressBar
    Left = 32
    Top = 179
    Width = 713
    Height = 17
    Step = 1
    TabOrder = 0
  end
  object pbTemp2: TProgressBar
    Left = 32
    Top = 232
    Width = 713
    Height = 17
    Step = 1
    TabOrder = 1
  end
  object btnStart: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 2
    OnClick = btnStartClick
  end
  object edTemp1: TEdit
    Left = 32
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '100'
  end
  object edTemp2: TEdit
    Left = 32
    Top = 205
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '200'
  end
end
