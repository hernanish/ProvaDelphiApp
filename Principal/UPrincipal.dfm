object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Principal'
  ClientHeight = 541
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mPrincipal
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mPrincipal: TMainMenu
    Left = 40
    Top = 40
    object smTarefas: TMenuItem
      Caption = 'Tarefas'
      object smTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = smTarefa1Click
      end
      object smTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = smTarefa2Click
      end
      object smTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = smTarefa3Click
      end
    end
  end
end
