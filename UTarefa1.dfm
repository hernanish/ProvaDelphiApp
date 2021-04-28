inherited frmTarefa1: TfrmTarefa1
  Caption = 'Tarefa 1'
  PixelsPerInch = 96
  TextHeight = 13
  object lbColunas: TLabel
    Left = 16
    Top = 29
    Width = 50
    Height = 16
    Caption = 'Colunas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTabelas: TLabel
    Left = 224
    Top = 29
    Width = 49
    Height = 16
    Caption = 'Tabelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCondicoes: TLabel
    Left = 432
    Top = 29
    Width = 65
    Height = 16
    Caption = 'Condi'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbSQL: TLabel
    Left = 16
    Top = 229
    Width = 74
    Height = 16
    Caption = 'SQL Gerado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mmColunas: TMemo
    Left = 16
    Top = 48
    Width = 185
    Height = 153
    Lines.Strings = (
      'coluna1,'
      'coluna2,'
      'coluna3,'
      'coluna4,'
      'coluna5')
    TabOrder = 0
  end
  object mmTabelas: TMemo
    Left = 224
    Top = 51
    Width = 185
    Height = 153
    Lines.Strings = (
      'tabela1,'
      'tabela2')
    TabOrder = 1
  end
  object mmCondicoes: TMemo
    Left = 432
    Top = 51
    Width = 185
    Height = 153
    Lines.Strings = (
      'coluna1 > coluna2')
    TabOrder = 2
  end
  object btGerarSQL: TButton
    Left = 656
    Top = 96
    Width = 75
    Height = 41
    Caption = 'GeraSQL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btGerarSQLClick
  end
  object mmSQLGerado: TMemo
    Left = 16
    Top = 248
    Width = 761
    Height = 157
    TabOrder = 4
  end
  object spQuery1: TspQuery
    Left = 688
    Top = 24
  end
end
