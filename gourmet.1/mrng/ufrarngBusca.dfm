inherited frarngBusca: TfrarngBusca
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT distinct rfi.rfichave'
      '     , rfi.etdcodigo'
      '     , rfi.tfdcodigo'
      '     , rfi.flacodigo'
      '     , rfi.tficodigo'
      '     , rfi.bcocodigo'
      '     , rfi.carcodigo'
      '     , rfi.rfiemissao'
      '     , rfi.rfivencimento'
      '     , rfi.rfinumero'
      '     , rfi.rfivalor'
      '     , rfi.rfihistorico'
      '     , rfi.srfidentificacao'
      '     , rfi.srfcodigo'
      '     , rfi.frrcodigo'
      '     , rfi.rfipercmesmora'
      '     , rfi.rfirepetir'
      '     , rfi.rfiprevisao'
      '     , rfi.rfivalorparcela'
      '     , rfi.moecodigo'
      '     , rfi.rfidatadesc'
      '     , rfi.rfivalodesc'
      '     , rfi.rfidatamulta'
      '     , rfi.rfipercmulta'
      '     , rfi.rfivalomulta'
      '     , rfi.etdidentificacao'
      '     , rfi.tfiidentificacao'
      '     , rfi.caridentificacao'
      '     , rfi.rfidtultbaixa'
      '     , rfi.rfidias'
      '     , rfi.rfibaixadocapital'
      '     , rfi.rfisaldocapital'
      '     , rfi.rfijuros'
      '     , rfi.rfimulta'
      '     , rfi.rfidesconto'
      '     , rfi.rfisaldogeral'
      '     , rfi.rfimoradia'
      '     , rfi.bconome'
      '     , rfi.titcodigo'
      '     , rfi.SaldoJurosMora AS rfisaldomora'
      '     , rfi.bolnossonumero'
      '     , rfi.rfimarca'
      
        '     , (select meschave from rfm where rfm.rfichave=rfi.rfichave' +
        ') meschave'
      '     , rfi.rdcnrauto'
      'FROM v_rfi rfi'
      'WHERE rfi.tfdcodigo = :tfdcodigo'
      'AND rfi.srfcodigo IN (0, 1)'
      
        'AND rfi.flacodigo in (select flacodigo from fcb where clbcodigo=' +
        ':clbcodigo )')
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited tabela: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited vbaixa: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited VTBaixaLte: TVirtualTable
    Data = {04000000000000000000}
  end
end
