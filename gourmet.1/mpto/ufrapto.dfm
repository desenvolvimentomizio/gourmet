inherited frapto: Tfrapto
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PlRodaPe: TPanel
        object progressIdentify: TProgressBar
          Left = 0
          Top = 0
          Width = 329
          Height = 26
          Align = alLeft
          Step = 1
          TabOrder = 0
        end
        object CODIGO: TEdit
          Left = 329
          Top = 0
          Width = 121
          Height = 26
          Align = alLeft
          TabOrder = 1
          ExplicitHeight = 21
        end
        object pnome: TPanel
          Left = 450
          Top = 0
          Width = 185
          Height = 26
          Align = alLeft
          Alignment = taLeftJustify
          Caption = 'pnome'
          TabOrder = 2
        end
      end
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Height = 248
          Columns = <
            item
              Expanded = False
              FieldName = 'ptochave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptodata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'diasemana'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptoiniciomanha'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptofinalmanha'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptoiniciotarde'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptofinaltarde'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptoinicioextra'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptofinalextra'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptodifinimanha'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptodiffinmanha'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptodifinitarde'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptodiffintarde'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptohorasnormais'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptoextramanha'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptoextratarde'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptohorasextras'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptofaltamanha'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptofaltatarde'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ptohorasfaltas'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 248
          Height = 172
          ExplicitTop = 248
          ExplicitHeight = 172
          object LVCandidate: TListView
            Left = 17
            Top = 6
            Width = 353
            Height = 88
            Columns = <
              item
                Caption = 'User ID'
                Width = 105
              end
              item
                Caption = 'FP ID'
                Width = 110
              end
              item
                Caption = 'Sample NO.'
                Width = 110
              end>
            GridLines = True
            ReadOnly = True
            RowSelect = True
            TabOrder = 0
            ViewStyle = vsReport
            Visible = False
          end
          object LVUsers: TListView
            Left = 376
            Top = 6
            Width = 369
            Height = 88
            Columns = <
              item
                Caption = 'User ID'
                Width = 105
              end
              item
                Caption = 'FP ID'
                Width = 110
              end
              item
                Caption = 'Sample NO.'
                Width = 110
              end>
            GridLines = True
            ReadOnly = True
            RowSelect = True
            TabOrder = 1
            ViewStyle = vsReport
            Visible = False
          end
        end
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    object ActRegistro: TAction [1]
      Category = 'Manuten'#231#227'o'
      Caption = 'Registro Bio'
      OnExecute = ActRegistroExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    object ActBiometria: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Biometria'
      OnExecute = ActBiometriaExecute
    end
    object ActCalcular: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Calcular'
      OnExecute = ActCalcularExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SET lc_time_names = '#39'pt_PT'#39';'
      ''
      'SELECT'
      ''
      '  ptochave,'
      '  ptodata,'
      '  pto.clbcodigo,'
      '  ptoiniciomanha,'
      '  ptofinalmanha,'
      '  ptoiniciotarde,'
      '  ptofinaltarde,'
      '  clbautorizaextra,'
      '  ptomotivoextra,'
      '  ptoinicioextra,'
      '  ptofinalextra,'
      '  ptodifinimanha,'
      '  ptodiffinmanha,'
      '  ptodifinitarde,'
      '  ptodiffintarde,'
      '  ptohorasnormais,'
      '  ptohorasextras,'
      '  ptohorasfaltas,'
      '  clb.clbidentificacao,'
      '  DAYNAME(ptodata) diasemana,'
      '  ptotipodifinimanha,'
      '  ptotipodiffinmanha,'
      '  ptotipodifinitarde,'
      '  ptotipodiffintarde,'
      ''
      '  ptotipositinimanha,'
      '  ptotipositfinmanha,'
      '  ptotipositinitarde,'
      '  ptotipositfintarde,'
      ''
      'ptoextramanha,'
      'ptoextratarde,'
      'ptofaltamanha,'
      'ptofaltatarde,'
      'hrtchave'
      ''
      ''
      'FROM pto, clb where pto.clbcodigo=clb.clbcodigo')
    Left = 500
    object uqtabelaptochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ptochave'
    end
    object uqtabelaptodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'ptodata'
    end
    object uqtabeladiasemana: TStringField
      DisplayLabel = 'Dia Semana'
      FieldName = 'diasemana'
      Size = 7
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object uqtabelaptoiniciomanha: TTimeField
      DisplayLabel = 'Entrada Manh'#227
      FieldName = 'ptoiniciomanha'
      EditMask = '!90:00;1;_'
    end
    object uqtabelaptofinalmanha: TTimeField
      DisplayLabel = 'Sa'#237'da Manh'#227
      FieldName = 'ptofinalmanha'
      EditMask = '!90:00;1;_'
    end
    object uqtabelaptoiniciotarde: TTimeField
      DisplayLabel = 'Entrada Tarde'
      FieldName = 'ptoiniciotarde'
      EditMask = '!90:00;1;_'
    end
    object uqtabelaptofinaltarde: TTimeField
      DisplayLabel = 'Sa'#237'da Tarde'
      FieldName = 'ptofinaltarde'
      EditMask = '!90:00;1;_'
    end
    object uqtabelaptoinicioextra: TTimeField
      DisplayLabel = 'Entrada Extra'
      FieldName = 'ptoinicioextra'
      EditMask = '!90:00;1;_'
    end
    object uqtabelaptofinalextra: TTimeField
      DisplayLabel = 'Sa'#237'da Extra'
      FieldName = 'ptofinalextra'
      EditMask = '!90:00;1;_'
    end
    object uqtabelaptodifinimanha: TTimeField
      DisplayLabel = 'Dif. Ini M'
      FieldName = 'ptodifinimanha'
    end
    object uqtabelaptodiffinmanha: TTimeField
      DisplayLabel = 'Dif. Fin M'
      FieldName = 'ptodiffinmanha'
    end
    object uqtabelaptodifinitarde: TTimeField
      DisplayLabel = 'Dif. Ini T'
      FieldName = 'ptodifinitarde'
    end
    object uqtabelaptodiffintarde: TTimeField
      DisplayLabel = 'Dif. Fin T'
      FieldName = 'ptodiffintarde'
    end
    object uqtabelaptohorasnormais: TTimeField
      DisplayLabel = 'Horas Normais'
      FieldName = 'ptohorasnormais'
    end
    object uqtabelaptohorasextras: TTimeField
      DisplayLabel = 'Horas Extras'
      FieldName = 'ptohorasextras'
    end
    object uqtabelaptoextramanha: TTimeField
      DisplayLabel = 'Extra Manha'
      FieldName = 'ptoextramanha'
    end
    object uqtabelaptoextratarde: TTimeField
      DisplayLabel = 'Extra Tarde'
      FieldName = 'ptoextratarde'
    end
    object uqtabelaptohorasfaltas: TTimeField
      DisplayLabel = 'Horas Falta'
      FieldName = 'ptohorasfaltas'
    end
    object uqtabelaptofaltamanha: TTimeField
      DisplayLabel = 'Falta Manha'
      FieldName = 'ptofaltamanha'
    end
    object uqtabelaptofaltatarde: TTimeField
      DisplayLabel = 'Falta Tarde'
      FieldName = 'ptofaltatarde'
    end
    object uqtabelaptotipositinimanha: TIntegerField
      DisplayLabel = 'Falta Manha'
      FieldName = 'ptotipositinimanha'
      Visible = False
    end
    object uqtabelaptotipositfinmanha: TIntegerField
      FieldName = 'ptotipositfinmanha'
      Visible = False
    end
    object uqtabelaptotipositinitarde: TIntegerField
      FieldName = 'ptotipositinitarde'
      Visible = False
    end
    object uqtabelaptotipositfintarde: TIntegerField
      FieldName = 'ptotipositfintarde'
      Visible = False
    end
    object uqtabelaptotipodiffintarde: TIntegerField
      FieldName = 'ptotipodiffintarde'
      Visible = False
    end
    object uqtabelaptomotivoextra: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'ptomotivoextra'
      Size = 200
    end
    object uqtabelaclbautorizaextra: TIntegerField
      DisplayLabel = 'Autorizado'
      FieldName = 'clbautorizaextra'
      Visible = False
    end
    object uqtabelaptotipodifinitarde: TIntegerField
      FieldName = 'ptotipodifinitarde'
      Visible = False
    end
    object uqtabelaptotipodiffinmanha: TIntegerField
      FieldName = 'ptotipodiffinmanha'
      Visible = False
    end
    object uqtabelaptotipodifinimanha: TIntegerField
      FieldName = 'ptotipodifinimanha'
      Visible = False
    end
    object uqtabelahrtchave: TIntegerField
      FieldName = 'hrtchave'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object pto: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ptochave,'
      '  ptodata,'
      '  clbcodigo,'
      '  ptoiniciomanha,'
      '  ptofinalmanha,'
      '  ptoiniciotarde,'
      '  ptofinaltarde,'
      '  clbautorizaextra,'
      '  ptomotivoextra,'
      '  ptoinicioextra,'
      '  ptofinalextra,'
      '  ptotipodifinimanha,'
      '  ptotipodiffinmanha,'
      '  ptotipodifinitarde,'
      '  ptotipodiffintarde,'
      '  ptotipositinimanha,'
      '  ptotipositfinmanha,'
      '  ptotipositinitarde,'
      '  ptotipositfintarde'
      ''
      'FROM pto where ptodata=:ptodata and clbcodigo=:clbcodigo')
    Left = 1016
    Top = 477
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptodata'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object ptoptochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ptochave'
    end
    object ptoptodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'ptodata'
      Required = True
    end
    object ptoclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object ptoptoiniciomanha: TTimeField
      DisplayLabel = 'Entrada Manh'#227
      FieldName = 'ptoiniciomanha'
      EditMask = '!90:00:00;1;_'
    end
    object ptoptofinalmanha: TTimeField
      DisplayLabel = 'Sa'#237'da Manh'#227
      FieldName = 'ptofinalmanha'
      EditMask = '!90:00:00;1;_'
    end
    object ptoptoiniciotarde: TTimeField
      DisplayLabel = 'Entrada Tarde'
      FieldName = 'ptoiniciotarde'
      EditMask = '!90:00:00;1;_'
    end
    object ptoptofinaltarde: TTimeField
      DisplayLabel = 'Sa'#237'da Tarde'
      FieldName = 'ptofinaltarde'
      EditMask = '!90:00:00;1;_'
    end
    object ptoclbautorizaextra: TIntegerField
      DisplayLabel = 'Autorizado'
      FieldName = 'clbautorizaextra'
    end
    object ptoptomotivoextra: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'ptomotivoextra'
      Size = 250
    end
    object ptoptoinicioextra: TTimeField
      DisplayLabel = 'Entrada Extra'
      FieldName = 'ptoinicioextra'
      EditMask = '!90:00:00;1;_'
    end
    object ptoptofinalextra: TTimeField
      DisplayLabel = 'Sa'#237'da Extra'
      FieldName = 'ptofinalextra'
      EditMask = '!90:00:00;1;_'
    end
    object ptoptotipodifinimanha: TIntegerField
      FieldName = 'ptotipodifinimanha'
    end
    object ptoptotipodiffinmanha: TIntegerField
      FieldName = 'ptotipodiffinmanha'
    end
    object ptoptotipodifinitarde: TIntegerField
      FieldName = 'ptotipodifinitarde'
    end
    object ptoptotipodiffintarde: TIntegerField
      FieldName = 'ptotipodiffintarde'
    end
    object ptoptotipositinimanha: TIntegerField
      FieldName = 'ptotipositinimanha'
    end
    object ptoptotipositfinmanha: TIntegerField
      FieldName = 'ptotipositfinmanha'
    end
    object ptoptotipositinitarde: TIntegerField
      FieldName = 'ptotipositinitarde'
    end
    object ptoptotipositfintarde: TIntegerField
      FieldName = 'ptotipositfintarde'
    end
  end
  object cht: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  chtchave,'
      '  clbcodigo,'
      '  hrtsegunda,'
      '  hrtterca,'
      '  hrtquarta,'
      '  hrtquinta,'
      '  hrtsexta,'
      '  hrtsabado,'
      '  hrtdomingo'
      'FROM cht where clbcodigo=:clbcodigo')
    Left = 936
    Top = 277
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object chtchtchave: TIntegerField
      FieldName = 'chtchave'
    end
    object chtclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object chthrtsegunda: TIntegerField
      FieldName = 'hrtsegunda'
    end
    object chthrtterca: TIntegerField
      FieldName = 'hrtterca'
    end
    object chthrtquarta: TIntegerField
      FieldName = 'hrtquarta'
    end
    object chthrtquinta: TIntegerField
      FieldName = 'hrtquinta'
    end
    object chthrtsexta: TIntegerField
      FieldName = 'hrtsexta'
    end
    object chthrtsabado: TIntegerField
      FieldName = 'hrtsabado'
    end
    object chthrtdomingo: TIntegerField
      FieldName = 'hrtdomingo'
    end
  end
  object cpto: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ptochave,'
      '  ptodata,'
      '  clbcodigo,'
      '  ptoiniciomanha,'
      '  ptofinalmanha,'
      '  ptoiniciotarde,'
      '  ptofinaltarde,'
      '  clbautorizaextra,'
      '  ptomotivoextra,'
      '  ptoinicioextra,'
      '  ptofinalextra,'
      '  ptodifinimanha,'
      '  ptodiffinmanha,'
      '  ptodifinitarde,'
      '  ptodiffintarde,'
      '  ptohorasnormais,'
      '  ptohorasextras,'
      '  ptohorasfaltas,'
      '  ptotipodifinimanha,'
      '  ptotipodiffinmanha,'
      '  ptotipodifinitarde,'
      '  ptotipodiffintarde,'
      ''
      '  ptotipositfinmanha,'
      '  ptotipositinimanha,'
      ''
      '  ptotipositinitarde,'
      '  ptotipositfintarde,'
      ''
      ''
      'ptoextramanha,'
      'ptoextratarde,'
      'ptofaltamanha,'
      'ptofaltatarde'
      ''
      ''
      'FROM pto where ptochave=:ptochave')
    Left = 968
    Top = 285
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptochave'
        Value = nil
      end>
    object cptoptochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ptochave'
    end
    object cptoptodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'ptodata'
    end
    object cptoclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
    end
    object cptoptoiniciomanha: TTimeField
      DisplayLabel = 'Entrada Manh'#227
      FieldName = 'ptoiniciomanha'
      EditMask = '!90:00;1;_'
    end
    object cptoptofinalmanha: TTimeField
      DisplayLabel = 'Sa'#237'da Manh'#227
      FieldName = 'ptofinalmanha'
      EditMask = '!90:00;1;_'
    end
    object cptoptoiniciotarde: TTimeField
      DisplayLabel = 'Entrada Tarde'
      FieldName = 'ptoiniciotarde'
      EditMask = '!90:00;1;_'
    end
    object cptoptofinaltarde: TTimeField
      DisplayLabel = 'Sa'#237'da Tarde'
      FieldName = 'ptofinaltarde'
      EditMask = '!90:00;1;_'
    end
    object cptoclbautorizaextra: TIntegerField
      DisplayLabel = 'Autorizado'
      FieldName = 'clbautorizaextra'
    end
    object cptoptomotivoextra: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'ptomotivoextra'
      Size = 200
    end
    object cptoptoinicioextra: TTimeField
      DisplayLabel = 'Entrada Extra'
      FieldName = 'ptoinicioextra'
      EditMask = '!90:00;1;_'
    end
    object cptoptofinalextra: TTimeField
      DisplayLabel = 'Sa'#237'da Extra'
      FieldName = 'ptofinalextra'
      EditMask = '!90:00;1;_'
    end
    object cptoptodifinimanha: TTimeField
      DisplayLabel = 'Dif. Ini M'
      FieldName = 'ptodifinimanha'
    end
    object cptoptodiffinmanha: TTimeField
      DisplayLabel = 'Dif. Fin M'
      FieldName = 'ptodiffinmanha'
    end
    object cptoptodifinitarde: TTimeField
      DisplayLabel = 'Dif. Ini T'
      FieldName = 'ptodifinitarde'
    end
    object cptoptodiffintarde: TTimeField
      DisplayLabel = 'Dif. Fin T'
      FieldName = 'ptodiffintarde'
    end
    object cptoptohorasnormais: TTimeField
      DisplayLabel = 'Horas Normais'
      FieldName = 'ptohorasnormais'
    end
    object cptoptohorasextras: TTimeField
      DisplayLabel = 'Horas Extras'
      FieldName = 'ptohorasextras'
    end
    object cptoptohorasfaltas: TTimeField
      DisplayLabel = 'Horas Falta'
      FieldName = 'ptohorasfaltas'
    end
    object cptoptotipodifinimanha: TIntegerField
      FieldName = 'ptotipodifinimanha'
    end
    object cptoptotipodiffinmanha: TIntegerField
      FieldName = 'ptotipodiffinmanha'
    end
    object cptoptotipodifinitarde: TIntegerField
      FieldName = 'ptotipodifinitarde'
    end
    object cptoptotipodiffintarde: TIntegerField
      FieldName = 'ptotipodiffintarde'
    end
    object cptoptotipositinimanha: TIntegerField
      FieldName = 'ptotipositinimanha'
    end
    object cptoptotipositfinmanha: TIntegerField
      FieldName = 'ptotipositfinmanha'
    end
    object cptoptotipositinitarde: TIntegerField
      FieldName = 'ptotipositinitarde'
    end
    object cptoptotipositfintarde: TIntegerField
      FieldName = 'ptotipositfintarde'
    end
    object cptoptoextramanha: TTimeField
      FieldName = 'ptoextramanha'
    end
    object cptoptoextratarde: TTimeField
      FieldName = 'ptoextratarde'
    end
    object cptoptofaltamanha: TTimeField
      FieldName = 'ptofaltamanha'
    end
    object cptoptofaltatarde: TTimeField
      FieldName = 'ptofaltatarde'
    end
  end
  object hrt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  hrtchave,'
      '  hrtinimanha,'
      '  hrtfinmanha,'
      '  hrtinitarde,'
      '  hrtfintarde'
      'FROM hrt where hrtchave=:hrtchave')
    Left = 1024
    Top = 285
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hrtchave'
        Value = nil
      end>
    object hrthrtchave: TIntegerField
      FieldName = 'hrtchave'
    end
    object hrthrtinimanha: TTimeField
      FieldName = 'hrtinimanha'
    end
    object hrthrtfinmanha: TTimeField
      FieldName = 'hrtfinmanha'
    end
    object hrthrtinitarde: TTimeField
      FieldName = 'hrtinitarde'
    end
    object hrthrtfintarde: TTimeField
      FieldName = 'hrtfintarde'
    end
  end
  object domingo: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ptochave,'
      '  ptodata,'
      '  clbcodigo,'
      '  ptoiniciomanha,'
      '  ptofinalmanha,'
      '  ptoiniciotarde,'
      '  ptofinaltarde,'
      '  clbautorizaextra,'
      '  ptomotivoextra,'
      '  ptoinicioextra,'
      '  ptofinalextra,'
      '  ptotipodifinimanha,'
      '  ptotipodiffinmanha,'
      '  ptotipodifinitarde,'
      '  ptotipodiffintarde,'
      '  ptotipositinimanha,'
      '  ptotipositfinmanha,'
      '  ptotipositinitarde,'
      '  ptotipositfintarde,'
      '  ptodifinimanha,'
      '  ptodiffinmanha,'
      '  ptodifinitarde,'
      '  ptodiffintarde,'
      '  ptohorasnormais,'
      '  ptohorasextras,'
      '  ptohorasfaltas'
      'FROM pto where ptodata=:ptodata and clbcodigo=:clbcodigo')
    Left = 912
    Top = 477
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptodata'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object domingoptochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ptochave'
    end
    object domingoptodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'ptodata'
      Required = True
    end
    object domingoclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object domingoptoiniciomanha: TTimeField
      DisplayLabel = 'Entrada Manh'#227
      FieldName = 'ptoiniciomanha'
      EditMask = '!90:00:00;1;_'
    end
    object domingoptofinalmanha: TTimeField
      DisplayLabel = 'Sa'#237'da Manh'#227
      FieldName = 'ptofinalmanha'
      EditMask = '!90:00:00;1;_'
    end
    object domingoptoiniciotarde: TTimeField
      DisplayLabel = 'Entrada Tarde'
      FieldName = 'ptoiniciotarde'
      EditMask = '!90:00:00;1;_'
    end
    object domingoptofinaltarde: TTimeField
      DisplayLabel = 'Sa'#237'da Tarde'
      FieldName = 'ptofinaltarde'
      EditMask = '!90:00:00;1;_'
    end
    object domingoclbautorizaextra: TIntegerField
      DisplayLabel = 'Autorizado'
      FieldName = 'clbautorizaextra'
    end
    object domingoptomotivoextra: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'ptomotivoextra'
      Size = 250
    end
    object domingoptoinicioextra: TTimeField
      DisplayLabel = 'Entrada Extra'
      FieldName = 'ptoinicioextra'
      EditMask = '!90:00:00;1;_'
    end
    object domingoptofinalextra: TTimeField
      DisplayLabel = 'Sa'#237'da Extra'
      FieldName = 'ptofinalextra'
      EditMask = '!90:00:00;1;_'
    end
    object domingoptotipositinimanha: TIntegerField
      FieldName = 'ptotipositinimanha'
    end
    object domingoptotipositfinmanha: TIntegerField
      FieldName = 'ptotipositfinmanha'
    end
    object domingoptotipositinitarde: TIntegerField
      FieldName = 'ptotipositinitarde'
    end
    object domingoptotipositfintarde: TIntegerField
      FieldName = 'ptotipositfintarde'
    end
  end
  object clb: TUniQuery
    SQL.Strings = (
      
        'SELECT clbcodigo FROM pto WHERE clbcodigo IN (SELECT clbcodigo F' +
        'ROM clb,dtr WHERE clb.etdcodigo=dtr.etdcodigo  AND dtr.dtrdatade' +
        'missao is NULL) GROUP BY clbcodigo ')
    Left = 736
    Top = 357
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgmodeloleitor,cfgarquivobio from cfgmflh where cfgcodig' +
        'o=:cfgcodigo')
    Left = 720
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgmodeloleitor: TIntegerField
      FieldName = 'cfgmodeloleitor'
    end
    object cfgcfgarquivobio: TBlobField
      FieldName = 'cfgarquivobio'
    end
  end
  object abono: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ptochave,'
      '  ptodata,'
      '  clbcodigo,'
      '  ptoiniciomanha,'
      '  ptofinalmanha,'
      '  ptoiniciotarde,'
      '  ptofinaltarde,'
      '  clbautorizaextra,'
      '  ptomotivoextra,'
      '  ptoinicioextra,'
      '  ptofinalextra,'
      '  ptotipodifinimanha,'
      '  ptotipodiffinmanha,'
      '  ptotipodifinitarde,'
      '  ptotipodiffintarde,'
      '  ptotipositinimanha,'
      '  ptotipositfinmanha,'
      '  ptotipositinitarde,'
      '  ptotipositfintarde,'
      '  ptodifinimanha,'
      '  ptodiffinmanha,'
      '  ptodifinitarde,'
      '  ptodiffintarde,'
      '  ptohorasnormais,'
      '  ptohorasextras,'
      '  ptohorasfaltas'
      'FROM pto where ptodata=:ptodata and clbcodigo=:clbcodigo')
    Left = 968
    Top = 477
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptodata'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object abonoptochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ptochave'
    end
    object abonoptodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'ptodata'
      Required = True
    end
    object abonoclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object abonoptoiniciomanha: TTimeField
      DisplayLabel = 'Entrada Manh'#227
      FieldName = 'ptoiniciomanha'
      EditMask = '!90:00:00;1;_'
    end
    object abonoptofinalmanha: TTimeField
      DisplayLabel = 'Sa'#237'da Manh'#227
      FieldName = 'ptofinalmanha'
      EditMask = '!90:00:00;1;_'
    end
    object abonoptoiniciotarde: TTimeField
      DisplayLabel = 'Entrada Tarde'
      FieldName = 'ptoiniciotarde'
      EditMask = '!90:00:00;1;_'
    end
    object abonoptofinaltarde: TTimeField
      DisplayLabel = 'Sa'#237'da Tarde'
      FieldName = 'ptofinaltarde'
      EditMask = '!90:00:00;1;_'
    end
    object abonoclbautorizaextra: TIntegerField
      DisplayLabel = 'Autorizado'
      FieldName = 'clbautorizaextra'
    end
    object abonoptomotivoextra: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'ptomotivoextra'
      Size = 250
    end
    object abonoptoinicioextra: TTimeField
      DisplayLabel = 'Entrada Extra'
      FieldName = 'ptoinicioextra'
      EditMask = '!90:00:00;1;_'
    end
    object abonoptofinalextra: TTimeField
      DisplayLabel = 'Sa'#237'da Extra'
      FieldName = 'ptofinalextra'
      EditMask = '!90:00:00;1;_'
    end
    object abonoptotipositinimanha: TIntegerField
      FieldName = 'ptotipositinimanha'
    end
    object abonoptotipositfinmanha: TIntegerField
      FieldName = 'ptotipositfinmanha'
    end
    object abonoptotipositinitarde: TIntegerField
      FieldName = 'ptotipositinitarde'
    end
    object abonoptotipositfintarde: TIntegerField
      FieldName = 'ptotipositfintarde'
    end
  end
end
