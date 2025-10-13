inherited fracdr: Tfracdr
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcgcodigo,'
      '  pcgestrutural,'
      '  pcgidentificacao,'
      '  pcg.cedcodigo,'
      '  seacodigo,'
      '  pcgativa'
      'FROM pcg,'
      '     cfp'
      'WHERE pcg.cfpcodigo = cfp.cfpcodigo')
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
