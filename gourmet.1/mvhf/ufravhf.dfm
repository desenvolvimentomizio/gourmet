inherited fravhf: Tfravhf
  Width = 1388
  ExplicitWidth = 1388
  inherited PlGeral: TPanel
    Width = 1388
    ExplicitWidth = 1388
    inherited PlLista: TPanel
      Width = 1244
      ExplicitWidth = 1244
      inherited SplLista: TSplitter
        Top = 451
        Width = 1244
        Visible = True
        ExplicitTop = 451
        ExplicitWidth = 1244
      end
      inherited SpFilter: TSplitter
        Width = 1244
        ExplicitWidth = 1244
      end
      inherited PlRodaPe: TPanel
        Top = 456
        Width = 1244
        Height = 124
        Visible = True
        ExplicitLeft = 0
        ExplicitTop = 456
        ExplicitWidth = 1244
        ExplicitHeight = 124
        object gbavh: TGroupBox
          Left = 0
          Top = 0
          Width = 425
          Height = 124
          Align = alLeft
          Caption = ' Hist'#243'rico de Altera'#231#245'es '
          TabOrder = 0
          object DBGridavh: TDBGrid
            Left = 2
            Top = 15
            Width = 421
            Height = 107
            Align = alClient
            DataSource = Davh
            DrawingStyle = gdsGradient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridavhDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'avhchave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'avhregistro'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'avhdatainicial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'avhdatafinal'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'avhvalor'
                Visible = True
              end>
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 1244
        ExplicitWidth = 1244
      end
      inherited PlSelecao: TPanel
        Width = 1244
        ExplicitWidth = 1244
        inherited GBPlSelecao: TGroupBox
          Width = 1240
          ExplicitWidth = 1240
          inherited DBLista: TDBGrid
            Width = 1133
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1244
        Height = 322
        ExplicitWidth = 1244
        ExplicitHeight = 322
        inherited DBGLista: TDBGrid
          Width = 1244
          Height = 297
          Columns = <
            item
              Expanded = False
              FieldName = 'vhfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vhfidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fclcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fclidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vhfdatainicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vhfdatafinal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ffhidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vhfvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tthidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtrdataadmissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tloidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 297
          Width = 1244
          ExplicitTop = 297
          ExplicitWidth = 1244
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1388
      ExplicitWidth = 1388
      inherited plid: TPanel
        Left = 938
        ExplicitLeft = 938
      end
      inherited PlSair: TPanel
        Left = 1182
        ExplicitLeft = 1182
      end
    end
  end
  inherited acoes: TActionList
    object ActFuncoes: TAction [0]
      Category = 'Configura'#231#245'es'
      Caption = 'Tabela de Fun'#231#245'es'
      OnExecute = ActFuncoesExecute
    end
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    object ActAlterarValor: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Alterar Valor'
      OnExecute = ActAlterarValorExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      ' SELECT'
      '  vhf.vhfcodigo,'
      '  vhfidentificacao,'
      '  vhf.fclcodigo,'
      '  etd.etdcodigo,'
      '  vhfdatainicial,'
      '  vhfdatafinal,'
      '  fcl.fclidentificacao,'
      '  etd.etdidentificacao,'
      '  vhf.anfcodigo,'
      '  anf.anfidentificacao,'
      '  ffh.ffhidentificacao,'
      
        '  if(fcl.tthcodigo=14,  (select afcvalor from afc where afc.fclc' +
        'odigo=fcl.fclcodigo and afcdatafinal='#39'9999-12-31'#39' order by afcch' +
        'ave desc limit 1) ,  (select avhvalor from avh where avh.vhfcodi' +
        'go=vhf.vhfcodigo  and avhdatafinal='#39'9999-12-31'#39' order by avhchav' +
        'e desc limit 1))  vhfvalor,'
      '  tthidentificacao,'
      '  fcl.tthcodigo,'
      '  dtr.dtrdataadmissao,'
      '  tlo.tloidentificacao,'
      '  vhf.vhfvalor vhfvalorinicial'
      ''
      '  '
      
        'FROM vhf,fcl,etd, anf, dtr,ffh, tth,tlo where fcl.tlocodigo=tlo.' +
        'tlocodigo and fcl.tthcodigo=tth.tthcodigo and  etd.etdcodigo=dtr' +
        '.etdcodigo and dtr.ffhcodigo=ffh.ffhcodigo and vhf.anfcodigo=anf' +
        '.anfcodigo and vhf.etdcodigo=etd.etdcodigo and vhf.fclcodigo=fcl' +
        '.fclcodigo'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '--    teste'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '/* SELECT'
      '  vhfcodigo,'
      '  vhfidentificacao,'
      '  vhf.fclcodigo,'
      '  etd.etdcodigo,'
      '  vhfvalor,'
      '  vhfdatainicial,'
      '  vhfdatafinal,'
      '  fcl.fclidentificacao,'
      '  etd.etdidentificacao,'
      '  vhf.anfcodigo,'
      '  anf.anfidentificacao,'
      '  ffh.ffhidentificacao,'
      ''
      ''
      'IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhfvalor) vlrhora,'
      ''
      '  IF(vhf.vhfvalor = 0, 4.5, 1) ftrhora,'
      '  (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo ORDER BY pfh.pfhchave DE' +
        'SC LIMIT 1) pfhhoras,'
      ''
      
        '  (IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhfvalor) * IF(vhf' +
        '.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo  ORDER BY pfh.pfhchave D' +
        'ESC LIMIT 1 )) salario,'
      ' '
      
        ' ((IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhfvalor) * IF(vhf' +
        '.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo ORDER BY pfh.pfhchave DE' +
        'SC LIMIT 1 )) / 6) dsr ,'
      ' '
      ' (SELECT'
      '      anfpercentual'
      '    FROM anf'
      '    WHERE anf.anfcodigo = vhf.anfcodigo  ) anfperc ,'
      ''
      ''
      
        '  ((IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhfvalor) * IF(vh' +
        'f.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo  ORDER BY pfh.pfhchave D' +
        'ESC LIMIT 1 )) + ((IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vh' +
        'fvalor) * IF(vhf.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo  ORDER BY pfhchave DESC ' +
        'LIMIT 1 )) / 6)) * (SELECT'
      '      anfpercentual / 100'
      '    FROM anf'
      '    WHERE anf.anfcodigo = vhf.anfcodigo) anfvalor  ,'
      '  (IFNULL((SELECT'
      '      atspercentual'
      '    FROM ats'
      
        '    WHERE atsmeses <= ((IF(MONTH(dtr.dtrdataadmissao) <= MONTH(C' +
        'URDATE()), YEAR(CURDATE()) - YEAR(dtr.dtrdataadmissao), YEAR(CUR' +
        'DATE()) - YEAR(dtr.dtrdataadmissao) - 1) * 12))'
      
        '    AND atsmesesinicial <= ((IF(MONTH(dtr.dtrdataadmissao) <= MO' +
        'NTH(CURDATE()), YEAR(CURDATE()) - YEAR(dtr.dtrdataadmissao), YEA' +
        'R(CURDATE()) - YEAR(dtr.dtrdataadmissao) - 1) * 12))'
      '    ORDER BY atsmeses DESC LIMIT 1), 0) ) atsperc ,'
      '  (IFNULL((SELECT'
      '      atspercentual'
      '    FROM ats'
      
        '    WHERE atsmeses <= ((IF(MONTH(dtr.dtrdataadmissao) <= MONTH(C' +
        'URDATE()), YEAR(CURDATE()) - YEAR(dtr.dtrdataadmissao), YEAR(CUR' +
        'DATE()) - YEAR(dtr.dtrdataadmissao) - 1) * 12))'
      
        '    AND atsmesesinicial <= ((IF(MONTH(dtr.dtrdataadmissao) <= MO' +
        'NTH(CURDATE()), YEAR(CURDATE()) - YEAR(dtr.dtrdataadmissao), YEA' +
        'R(CURDATE()) - YEAR(dtr.dtrdataadmissao) - 1) * 12))'
      
        '    ORDER BY atsmeses DESC LIMIT 1), 0) / 100) * ((IF(vhf.vhfval' +
        'or = 0, fcl.fclvalorbase, vhf.vhfvalor) * IF(vhf.vhfvalor = 0, 4' +
        '.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo  ORDER BY pfhchave DESC ' +
        'LIMIT 1 )) + ((IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhfval' +
        'or) * IF(vhf.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo  ORDER BY pfhchave DESC ' +
        'LIMIT 1 )) / 6)) atsvalor ,'
      ''
      
        '  (IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhfvalor) * IF(vhf' +
        '.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo ORDER BY pfh.pfhchave DE' +
        'SC LIMIT 1 )) +'
      
        '  ((IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhfvalor) * IF(vh' +
        'f.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo ORDER BY pfh.pfhchave DE' +
        'SC LIMIT 1 )) / 6) +'
      
        '  ((IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhfvalor) * IF(vh' +
        'f.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo ORDER BY pfh.pfhchave DE' +
        'SC LIMIT 1 )) + ((IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhf' +
        'valor) * IF(vhf.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo ORDER BY pfh.pfhchave DE' +
        'SC LIMIT 1 )) / 6)) * (SELECT'
      '      anfpercentual / 100'
      '    FROM anf'
      '    WHERE anf.anfcodigo = vhf.anfcodigo) +'
      '  (IFNULL((SELECT'
      '      atspercentual'
      '    FROM ats'
      
        '    WHERE atsmeses <= ((IF(MONTH(dtr.dtrdataadmissao) <= MONTH(C' +
        'URDATE()), YEAR(CURDATE()) - YEAR(dtr.dtrdataadmissao), YEAR(CUR' +
        'DATE()) - YEAR(dtr.dtrdataadmissao) - 1) * 12))'
      
        '    AND atsmesesinicial <= ((IF(MONTH(dtr.dtrdataadmissao) <= MO' +
        'NTH(CURDATE()), YEAR(CURDATE()) - YEAR(dtr.dtrdataadmissao), YEA' +
        'R(CURDATE()) - YEAR(dtr.dtrdataadmissao) - 1) * 12))'
      
        '    ORDER BY atsmeses DESC LIMIT 1), 0) / 100) * ((IF(vhf.vhfval' +
        'or = 0, fcl.fclvalorbase, vhf.vhfvalor) * IF(vhf.vhfvalor = 0, 4' +
        '.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo ORDER BY pfh.pfhchave DE' +
        'SC LIMIT 1 )) + ((IF(vhf.vhfvalor = 0, fcl.fclvalorbase, vhf.vhf' +
        'valor) * IF(vhf.vhfvalor = 0, 4.5, 1) * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      
        '    WHERE pfh.vhfcodigo = vhf.vhfcodigo ORDER BY pfh.pfhchave DE' +
        'SC LIMIT 1 )) / 6)) salariofinal'
      ''
      '  '
      
        'FROM vhf,fcl,etd, anf, dtr,ffh where etd.etdcodigo=dtr.etdcodigo' +
        ' and dtr.ffhcodigo=ffh.ffhcodigo and vhf.anfcodigo=anf.anfcodigo' +
        ' and vhf.etdcodigo=etd.etdcodigo and vhf.fclcodigo=fcl.fclcodigo'
      '*/')
    object uqtabelavhfcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'vhfcodigo'
    end
    object uqtabelavhfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'vhfidentificacao'
      Size = 50
    end
    object uqtabelafclcodigo: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'fclcodigo'
    end
    object uqtabelafclidentificacao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fclidentificacao'
      Size = 50
    end
    object uqtabelavhfvalor: TFloatField
      DisplayLabel = 'Valor da Hora'
      FieldName = 'vhfvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelavhfdatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'vhfdatainicial'
    end
    object uqtabelavhfdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'vhfdatafinal'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelaanfcodigo: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'anfcodigo'
    end
    object uqtabelaanfidentificacao: TStringField
      DisplayLabel = 'Adicional'
      FieldName = 'anfidentificacao'
      Size = 50
    end
    object uqtabelaffhidentificacao: TStringField
      DisplayLabel = 'Fun'#231#227'o Trabalhista'
      FieldName = 'ffhidentificacao'
      Size = 50
    end
    object uqtabelatthcodigo: TIntegerField
      FieldName = 'tthcodigo'
    end
    object uqtabelatthidentificacao: TStringField
      DisplayLabel = 'Tipo de Calculo da  Hora'
      FieldName = 'tthidentificacao'
      Size = 50
    end
    object uqtabeladtrdataadmissao: TDateField
      DisplayLabel = 'Data Admiss'#227'o'
      FieldName = 'dtrdataadmissao'
    end
    object uqtabelatloidentificacao: TStringField
      DisplayLabel = 'Lota'#231#227'o'
      FieldName = 'tloidentificacao'
      Size = 50
    end
    object uqtabelavhfvalorinicial: TFloatField
      FieldName = 'vhfvalorinicial'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800F00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED001D1D1D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800272727000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A002A2A2A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD001C1C
      1C001C1C1C00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F006F6F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000282828000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000035353500000000000000
      0000000000000000000035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F000000000000000000000000000000000000000000000000006F6F
      6F000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD001313130013131300DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7001919190000000000000000001919
      1900F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      00000000000000000000E4E4E400070707000000000000000000000000000000
      000007070700E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB0010101000000000000000000000000000000000000000
      00000000000010101000DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00737373007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00737373009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFE7FF0000FFFFFFFFE7FF0000FFFFFE7FE7FF0000FFFFFC3FC3FF0000
      FE7FF81FC3FF0000FC3FF00F81FF0000F81FE007FF9F0000F00FC003FF0F0000
      FFFF8001FE070000FFFF0000FC030000FFFFFFFFF8010000FFFFFFFFF8010000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object avh: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  avhchave,'
      '  vhfcodigo,'
      '  fclcodigo,'
      '  avhdatainicial,'
      
        '  if (avhdatafinal='#39'9999-12-31'#39',null, avhdatafinal)  avhdatafina' +
        'l,'
      '  avhvalor,'
      '  clbcodigo,'
      '  avhregistro'
      'FROM avh where vhfcodigo=:vhfcodigo')
    Constraints = <>
    Left = 624
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vhfcodigo'
        Value = nil
      end>
    object avhavhchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'avhchave'
    end
    object avhvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object avhfclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
    object avhavhdatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'avhdatainicial'
    end
    object avhavhvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'avhvalor'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object avhclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object avhavhregistro: TDateTimeField
      DisplayLabel = 'Altera'#231#227'o'
      FieldName = 'avhregistro'
    end
    object avhavhdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'avhdatafinal'
    end
  end
  object Davh: TDataSource
    DataSet = avh
    Left = 672
    Top = 500
  end
  object ravh: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  avhchave,'
      '  vhfcodigo,'
      '  fclcodigo,'
      '  avhdatainicial,'
      '  avhdatafinal,'
      '  avhvalor,'
      '  clbcodigo,'
      '  avhregistro'
      'FROM avh where vhfcodigo=:vhfcodigo')
    Constraints = <>
    Left = 752
    Top = 494
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vhfcodigo'
        Value = nil
      end>
    object ravhavhchave: TIntegerField
      FieldName = 'avhchave'
    end
    object ravhvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object ravhfclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
    object ravhavhdatainicial: TDateField
      FieldName = 'avhdatainicial'
    end
    object ravhavhdatafinal: TDateField
      FieldName = 'avhdatafinal'
    end
    object ravhavhvalor: TFloatField
      FieldName = 'avhvalor'
    end
    object ravhclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ravhavhregistro: TDateTimeField
      FieldName = 'avhregistro'
    end
  end
end
