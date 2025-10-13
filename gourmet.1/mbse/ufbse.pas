unit ufbse;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess,
       DAScript, ufuncoes;

type
  Tfbse = class(TForm)
    consulta: tuniquery;
    fechador: TTimer;
    procedure fechadorTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Fzcone: tuniconnection;
    procedure criatabelas;
    procedure ajustatabelas;

  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  public
    vnomebanco:string;

    { Public declarations }

  end;

var
  fbse: Tfbse;

implementation

{$R *.dfm}

function criabancodedados(AOwner: TComponent; conexao: tuniconnection;nomebanco:string): string;
begin
  try
    fbse := Tfbse.Create(AOwner);
    fbse.zcone := conexao;
    fbse.vnomebanco:=nomebanco;
    fbse.ShowModal;
  finally
    freeandnil(fbse);
  end;
  result := '';
end;

exports criabancodedados;

procedure Tfbse.fechadorTimer(Sender: TObject);
begin
  close;
end;

procedure Tfbse.FormShow(Sender: TObject);
var
  i: Integer;
begin






  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is tuniquery then
    begin
      (self.Components[i] as tuniquery).Connection := zcone;
    end;
  end;
  criatabelas;
  ajustatabelas;
  fechador.Enabled := true;
end;

Procedure Tfbse.ajustatabelas;
begin

  Try
    consulta.close;
    consulta.SQL.Text := 'ALTER TABLE cls ADD COLUMN clspositopo int(4) NOT NULL DEFAULT 10';
    consulta.execsql;
  Except
  End;

  Try
    consulta.close;
    consulta.SQL.Text := 'ALTER TABLE cls ADD COLUMN clsposiesquerda int(4) NOT NULL DEFAULT 10';
    consulta.execsql;
  Except
  End;

  Try
    consulta.close;
    consulta.SQL.Text := 'ALTER TABLE cls ADD COLUMN clstopo int(4) NOT NULL DEFAULT 10';
    consulta.execsql;
  Except
  End;

  Try
    consulta.close;
    consulta.SQL.Text := 'ALTER TABLE cls ADD COLUMN clsesquerda int(4) NOT NULL DEFAULT 10';
    consulta.execsql;
  Except
  End;

  Try
    consulta.close;
    consulta.SQL.Text := 'alter table cls add COLUMN clsbotoes int(4) not null default 185';
    consulta.Execsql;
  Except
  End;

  Try
    consulta.close;
    consulta.SQL.Text := 'ALTER TABLE cls ADD INDEX usrcodigo(usrcodigo), ' + ' ADD INDEX clsnomeform(clsnomeform)';
    consulta.Execsql;
  Except

  End;

end;

Procedure Tfbse.criatabelas;
Var
  vcfg: tuniquery;
  v, vetdcodigo: Integer;
  tabelas: tstringlist;
  x: string;
Begin

  Try
    consulta.close;
    consulta.SQL.Text := 'CREATE TABLE cfg (cfgcodigo int(11) NOT NULL AUTO_INCREMENT,' +
      'cddcodigo varchar(10), cfgidentificacao varchar(50) NOT NULL, cfgdtinictb date, cfgdtfinctb date, PRIMARY KEY(cfgcodigo))ENGINE=INNODB';
    consulta.execsql;
  Except
  End;

  Try
    consulta.close;
    consulta.SQL.Text := 'insert into cfg (cfgcodigo, cfgidentificacao) values (1,' + chr(39) + 'Empresa' + chr(39) + ')';
    consulta.execsql;
  Except
  End;

  Try
    consulta.close;
    consulta.SQL.Text := 'alter table cfg add cfgverdados integer(6) not null default 0';
    consulta.execsql;
  Except
  End;

  Try
    vcfg := tuniquery.Create(self);
    vcfg.Connection := self.zcone;
    vcfg.SQL.Text := 'select cfgverdados from cfg';
    vcfg.Open;

    v := vcfg.Fields[0].AsInteger;

    vcfg.close;

  Finally
    freeandnil(vcfg);
  End;

  If v = 0 Then
  Begin

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE cls (clscodigo int(11) NOT NULL AUTO_INCREMENT,clsnomeform varchar(50) NOT NULL, ' +
        'clsposiesquerda int(4) NOT NULL DEFAULT 0,  clspositopo int(4) NOT NULL DEFAULT 0, clslargura int(4) NOT NULL DEFAULT 350,clsselecao int(4) NOT NULL DEFAULT 80, clsaltura int(4) NOT NULL DEFAULT 350, clscolunas blob, '
        + 'usrcodigo int(11), clsmodo int(2) NOT NULL DEFAULT 1, clsrodape int(4) NOT NULL DEFAULT 25, clsfiltro int(4) NOT NULL DEFAULT 40, '
        + 'clstopo int(4), clsesquerda int(4), PRIMARY KEY(clscodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text :=
        'CREATE TABLE clb (clbcodigo int(11) NOT NULL AUTO_INCREMENT,clbsuper int(1) NOT NULL DEFAULT 0, clbdescmaximo float(9,3) NOT NULL DEFAULT 0.000, '
        + 'clbsenha varchar(15), clbativo enum(' + chr(39) + '0' + chr(39) + ',' + chr(39) + '1' + chr(39) + ') NOT NULL DEFAULT '
        + chr(39) + '1' + chr(39) + ',' + 'clbidentificacao varchar(30), PRIMARY KEY(clbcodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE fnc (fnccodigo int(3) NOT NULL AUTO_INCREMENT,fncidentificacao varchar(25) NOT NULL,' +
        'fncdoacao enum(' + chr(39) + '0' + chr(39) + ',' + chr(39) + '1' + chr(39) + ') NOT NULL DEFAULT ' + chr(39) + '0' +
        chr(39) + ', fnctroca enum(' + chr(39) + '0' + chr(39) + ',' + chr(39) + '1' + chr(39) + ') NOT NULL DEFAULT ' + chr(39) +
        '0' + chr(39) + ',' + 'fnccondicional enum(' + chr(39) + '0' + chr(39) + ',' + chr(39) + '1' + chr(39) +
        ') NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) + ',fncsaldonegat enum(' + chr(39) + '0' + chr(39) + ',' + chr(39) + '1' +
        chr(39) + ') NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) + ',' + 'fnclimitecred enum(' + chr(39) + '0' + chr(39) + ',' +
        chr(39) + '1' + chr(39) + ') NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) + ',' + 'fncservicos enum(' + chr(39) + '0' +
        chr(39) + ',' + chr(39) + '1' + chr(39) + ') NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) + ', fncvende enum(' + chr(39) +
        '0' + chr(39) + ',' + chr(39) + '1' + chr(39) + ') NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) + ',' +
        'PRIMARY KEY(fnccodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;
    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE fcl (fclcodigo int(11) NOT NULL AUTO_INCREMENT, fnccodigo int(3) NOT NULL DEFAULT ' +
        chr(39) + '0' + chr(39) + ',' + 'clbcodigo int(11) NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) +
        ', PRIMARY KEY(fclcodigo), INDEX fnccodigo(fnccodigo), INDEX clbcodigo(clbcodigo),' +
        'CONSTRAINT fcl_fnc FOREIGN KEY (fnccodigo) REFERENCES fnc(fnccodigo) ON DELETE NO ACTION ON UPDATE NO ACTION, ' +
        'CONSTRAINT fcl_clb FOREIGN KEY (clbcodigo) REFERENCES clb(clbcodigo) ON DELETE NO ACTION ON UPDATE NO ACTION )ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE mdl (mdlcodigo int(11) NOT NULL AUTO_INCREMENT, mdlidentificacao varchar(50) NOT NULL ,'
        + 'mdldescricao varchar(1000) , mdlnome varchar(50) NOT NULL,' +
        'mdlconfig int(1) NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) +
        ' ,mdlsubgrupo varchar(50), PRIMARY KEY(mdlcodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE act (actcodigo int(11) NOT NULL AUTO_INCREMENT, actidentificacao varchar(50) NOT NULL,' +
        'mdlcodigo int(11) NOT NULL DEFAULT ''0'', actformulario varchar(50) NOT NULL, actacao varchar(50) NOT NULL, ' +
        'actativa int(2) NOT NULL DEFAULT ''0'', PRIMARY KEY(actcodigo), INDEX mdlcodigo(mdlcodigo), CONSTRAINT act_mdl FOREIGN KEY (mdlcodigo) '
        + ' REFERENCES mdl(mdlcodigo) ON DELETE NO ACTION  ON UPDATE NO ACTION)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE dau (daucodigo int(11) NOT NULL AUTO_INCREMENT, clbcodigo int(11) NOT NULL,' +
        'actcodigo int(11) NOT NULL, dauativo int(2) DEFAULT ' + chr(39) + '0' + chr(39) +
        ', PRIMARY KEY(daucodigo), INDEX usrcodigo(clbcodigo),' +
        'INDEX actcodigo(actcodigo), CONSTRAINT dau_act FOREIGN KEY (actcodigo) REFERENCES act(actcodigo) ON DELETE NO ACTION ' +
        ' ON UPDATE NO ACTION, CONSTRAINT dau_clb FOREIGN KEY (clbcodigo) REFERENCES clb(clbcodigo) ON DELETE NO ACTION ' +
        ' ON UPDATE NO ACTION) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE cau (cauchave int(11) NOT NULL AUTO_INCREMENT, mdlcodigo int(11) NOT NULL DEFAULT ' +
        chr(39) + '0' + chr(39) + ',' + 'actcodigo int(11) NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) +
        ', caudata date NOT NULL, cauhora time NOT NULL, ' +
        'usrautorizou int(11) NOT NULL,  PRIMARY KEY(cauchave), INDEX mdlcodigo(mdlcodigo), INDEX actcodigo(actcodigo), CONSTRAINT cau_mdl FOREIGN KEY (mdlcodigo) '
        + '  REFERENCES mdl(mdlcodigo) ON DELETE CASCADE ON UPDATE CASCADE, CONSTRAINT cau_act FOREIGN KEY (actcodigo) REFERENCES act(actcodigo) ON DELETE CASCADE '
        + ' ON UPDATE CASCADE) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text :=
        'CREATE TABLE fla (flacodigo int(3) NOT NULL, flaidentificacao varchar(50) NOT NULL,  PRIMARY KEY(flacodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE dtb ( dtbcodigo int(11) NOT NULL AUTO_INCREMENT, dtbtabela varchar(50) NOT NULL, ' +
        'dtbdescricao varchar(250), PRIMARY KEY(dtbcodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE dcp (dcpcodigo int(11) NOT NULL AUTO_INCREMENT, dcpcampo varchar(50) NOT NULL,' +
        'dcpdescricao varchar(250), dcpspeedfiscal int(1) NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) +
        ', PRIMARY KEY(dcpcodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE coa (coacodigo int(11) NOT NULL AUTO_INCREMENT, dtbcodigo int(11) NOT NULL DEFAULT ' +
        chr(39) + '0' + chr(39) + ',' + 'dcpcodigo int(11) NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) +
        ', coadata date NOT NULL, clbcodigo int(11) NOT NULL, coaanterior varchar(250), ' +
        'coaatual varchar(250), PRIMARY KEY(coacodigo), INDEX dtbcodigo(dtbcodigo), INDEX dcpcodigo(dcpcodigo), CONSTRAINT coa_dtb FOREIGN KEY (dtbcodigo) '
        + ' REFERENCES dtb(dtbcodigo) ON DELETE CASCADE ON UPDATE CASCADE, CONSTRAINT coa_dcp FOREIGN KEY (dcpcodigo) ' +
        ' REFERENCES dcp(dcpcodigo) ON DELETE CASCADE ON UPDATE CASCADE )ENGINE=INNODB ';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text :=
        'CREATE TABLE phg (phgcodigo int(11) NOT NULL default 0, phgidentificacao varchar(80) NOT NULL, phgcomplemento varchar(50), '
        + 'PRIMARY KEY(phgcodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE ced (cedcodigo int(1) NOT NULL, cedidentificacao varchar(15) NOT NULL, ' +
        ' PRIMARY KEY(cedcodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into fla (flacodigo, flaidentificacao) values (1,' + chr(39) + 'Matriz' + chr(39) + ')';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into ced (cedcodigo, cedidentificacao) values (0,' + chr(39) + 'Débito' + chr(39) + ')';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into ced (cedcodigo, cedidentificacao) values (1,' + chr(39) + 'Crédito' + chr(39) + ')';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE cfp (cfpcodigo int(3) NOT NULL, cedcodigo int(1) NOT NULL DEFAULT 0, ' +
        'cfpmascara varchar(50) NOT NULL,cfpidentificacao varchar(50) NOT NULL, cfpgrupo int(2) NOT NULL, PRIMARY KEY(cfpcodigo), INDEX cedcodigo(cedcodigo), '
        + 'CONSTRAINT cfp_ced FOREIGN KEY (cedcodigo) REFERENCES ced(cedcodigo) ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text :=
        'CREATE TABLE mlg (mlgchave int(11) NOT NULL AUTO_INCREMENT, flacodigo int(11) NOT NULL DEFAULT 0 ,mlgdata date ,clbcodigo int(11) NOT NULL DEFAULT 0, mlgsituacao int(1) NOT NULL DEFAULT 0,'
        + 'PRIMARY KEY(mlgchave), INDEX clbcodigo(clbcodigo), CONSTRAINT mlg_clb FOREIGN KEY (clbcodigo) REFERENCES clb(clbcodigo) '
        + '  ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE cca(ccachave int(11) NOT NULL default 0, cauchave int(11) NOT NULL DEFAULT 0,' +
        'coacodigo int(11) NOT NULL DEFAULT 0,PRIMARY KEY(ccachave),INDEX cauchave(cauchave),' +
        'INDEX coacodigo(coacodigo), CONSTRAINT cca_cau FOREIGN KEY (cauchave) REFERENCES cau(cauchave)' +
        '  ON DELETE CASCADE ON UPDATE CASCADE,CONSTRAINT cca_coa FOREIGN KEY (coacodigo) ' +
        '  REFERENCES coa(coacodigo) ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE fcb (fcbchave int(11) NOT NULL AUTO_INCREMENT, flacodigo int(3) NOT NULL DEFAULT ' +
        chr(39) + '0' + chr(39) + ',' + 'clbcodigo int(11) NOT NULL DEFAULT ' + chr(39) + '0' + chr(39) +
        ',  PRIMARY KEY(fcbchave), INDEX flacodigo(flacodigo), ' +
        'INDEX clbcodigo(clbcodigo), CONSTRAINT fcb_fla FOREIGN KEY (flacodigo) REFERENCES fla(flacodigo) ' +
        '  ON DELETE CASCADE ON UPDATE CASCADE, CONSTRAINT fcb_clb FOREIGN KEY (clbcodigo) REFERENCES clb(clbcodigo) ' +
        ' ON DELETE CASCADE ON UPDATE CASCADE) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE sea (seacodigo int(1) NOT NULL, seaidentificacao varchar(15) NOT NULL, ' +
        'PRIMARY KEY(seacodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into sea (seacodigo, seaidentificacao) values (0,' + chr(39) + 'Sintética' + chr(39) + ')';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into sea (seacodigo, seaidentificacao) values (1,' + chr(39) + 'Analítica' + chr(39) + ')';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE pcg (pcgcodigo int(11) NOT NULL, seacodigo int(1) NOT NULL DEFAULT 0, ' +
        'cfpcodigo int(3) NOT NULL DEFAULT 0, pcgestrutural varchar(50) NOT NULL, ' +
        'pcgidentificacao varchar(80) NOT NULL, PRIMARY KEY(pcgcodigo), INDEX cfpcodigo(cfpcodigo), ' +
        'INDEX seacodigo(seacodigo), CONSTRAINT pcg_cfp FOREIGN KEY (cfpcodigo) REFERENCES cfp(cfpcodigo) ' +
        ' ON DELETE CASCADE ON UPDATE CASCADE, CONSTRAINT pcg_sea FOREIGN KEY (seacodigo) ' +
        ' REFERENCES sea(seacodigo) ON DELETE CASCADE ON UPDATE CASCADE )ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE rmg (rmgchave int(11) NOT NULL AUTO_INCREMENT,' +
        'mlgchave int(11) NOT NULL DEFAULT 0, flacodigo int(3) NOT NULL DEFAULT 0, phgcodigo int(11) NOT NULL DEFAULT 0,' +
        'rmgdata date,rmgvalor double(9,2) NOT NULL DEFAULT 0.00, rmgcomplemento varchar(300),' +
        'pcgdebito int(11), pcgcredito int(11), ' + 'INDEX mlgchave(mlgchave),' + 'INDEX flacodigo(flacodigo),' +
        'INDEX phgcodigo(phgcodigo),' + 'PRIMARY KEY(rmgchave))ENGINE=INNODB';

      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE drg (drgchave int(11) NOT NULL AUTO_INCREMENT, rmgchave int(11) NOT NULL DEFAULT 0,' +
        'pcgcodigo int(11) NOT NULL DEFAULT 0,drgvalor double(9,2) NOT NULL default 0,drgtipo int(1) NOT NULL DEFAULT 0, PRIMARY KEY(drgchave), INDEX rmgchave(rmgchave),'
        + 'INDEX pcgcodigo(pcgcodigo), CONSTRAINT drg_rmg FOREIGN KEY (rmgchave) REFERENCES rmg(rmgchave) ON DELETE CASCADE ON UPDATE CASCADE, '
        + 'CONSTRAINT drg_pcg FOREIGN KEY (pcgcodigo) REFERENCES pcg(pcgcodigo) ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE pfr ( pfrcodigo int(11) NOT NULL AUTO_INCREMENT,  pfrnomeform varchar(50) NOT NULL, ' +
        'pfrcolunas blob ,pfrlargura int(4) NOT NULL DEFAULT 350,  pfraltura int(4) NOT NULL DEFAULT 350,  usrcodigo int(11),  PRIMARY KEY(pfrcodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE psf ( psfcodigo int(11) NOT NULL AUTO_INCREMENT, pfrcodigo int(11) NOT NULL DEFAULT 0, '
        + 'psfalinhamento int(4) NOT NULL DEFAULT 0, psfposicao int(4) NOT NULL DEFAULT 150, psfnome varchar(50) NOT NULL, ' +
        'PRIMARY KEY(psfcodigo), INDEX pfrcodigo(pfrcodigo), CONSTRAINT psf_pfr FOREIGN KEY (pfrcodigo) ' +
        '  REFERENCES pfr(pfrcodigo) ON DELETE CASCADE ON UPDATE CASCADE) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE dcl (dclcodigo int(11) NOT NULL AUTO_INCREMENT, clscodigo int(11) NOT NULL DEFAULT 0, ' +
        'clbcodigo int(11) NOT NULL DEFAULT 0, dclvisivel int(1) NOT NULL DEFAULT 1, dclpesquisavel int(1) NOT NULL DEFAULT 1, ' +
        'dclpesquisa int(1) NOT NULL DEFAULT 1,  dclnomecampo varchar(50), dcltitulo varchar(50), PRIMARY KEY(dclcodigo), INDEX clscodigo(clscodigo), INDEX clbcodigo (clbcodigo), '
        + 'CONSTRAINT dcl_cls FOREIGN KEY (clscodigo) REFERENCES cls(clscodigo) ON DELETE CASCADE ON UPDATE CASCADE, ' +
        'CONSTRAINT dcl_clb FOREIGN KEY (clbcodigo) REFERENCES clb(clbcodigo) ON DELETE CASCADE ON UPDATE CASCADE) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into clb (clbcodigo, clbidentificacao, clbsenha) values (1,' + chr(39) + 'Admin' + chr(39) +
        ',' + chr(39) + protegertexto('#delphi') + chr(39) + ')';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into cfp (cfpcodigo, cedcodigo, cfpidentificacao,cfpmascara,cfpgrupo) values (1,0,' + chr(39) +
        'ATIVO' + chr(39) + ',' + chr(39) + '1.2.3.44.55.666' + chr(39) + ',1)';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into cfp (cfpcodigo, cedcodigo, cfpidentificacao,cfpmascara,cfpgrupo) values (2,1,' + chr(39) +
        'PASSIVO' + chr(39) + ',' + chr(39) + '1.2.3.44.55.666' + chr(39) + ',2)';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into cfp (cfpcodigo, cedcodigo, cfpidentificacao,cfpmascara,cfpgrupo) values (4,1,' + chr(39) +
        'RESULTADOS' + chr(39) + ',' + chr(39) + '1.2.3.44.55.666' + chr(39) + ',4)';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into cfp (cfpcodigo, cedcodigo, cfpidentificacao,cfpmascara,cfpgrupo) values (8,1,' + chr(39) +
        'CENTROS DE CUSTOS' + chr(39) + ',' + chr(39) + '1.2.3.44.55.666' + chr(39) + ',8)';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE fil (filcodigo int(11) NOT NULL AUTO_INCREMENT, ' +
        'clscodigo int(11) NOT NULL DEFAULT 0, clbcodigo int(11) NOT NULL DEFAULT 0, ' +
        'filsqloriginal varchar(4000), PRIMARY KEY(filcodigo), INDEX clbcodigo(clbcodigo), ' +
        'INDEX clscodigo(clscodigo), CONSTRAINT fil_clb FOREIGN KEY (clbcodigo) ' +
        '  REFERENCES clb(clbcodigo) ON DELETE CASCADE ON UPDATE CASCADE, ' +
        ' CONSTRAINT fil_cls FOREIGN KEY (clscodigo) REFERENCES cls(clscodigo) ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE ifi (ifichave int(11) NOT NULL AUTO_INCREMENT, ' +
        'filcodigo int(11) NOT NULL DEFAULT 0 , ' + 'ifitipocampo int(3) NOT NULL DEFAULT 1, ' + 'ifititulo varchar(50),' +
        'ififiltro varchar(1000) ,ifidescricao varchar(1000) ,ificampo varchar(50) NOT NULL ,' +
        'ifimetodo int(1) NOT NULL DEFAULT 1 , PRIMARY KEY(ifichave),' +
        'INDEX filcodigo(filcodigo), CONSTRAINT ifi_fil FOREIGN KEY (filcodigo) ' +
        ' REFERENCES fil(filcodigo) ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE sfi (sfichave int(11) NOT NULL AUTO_INCREMENT, ' +
        'ifichave int(11) NOT NULL DEFAULT 0, sfitexto varchar(50) NOT NULL, ' +
        'PRIMARY KEY(sfichave), INDEX ifichave(ifichave), CONSTRAINT sfi_ifi FOREIGN KEY (ifichave) ' +
        ' REFERENCES ifi(ifichave) ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE vfi (vfichave int(11) NOT NULL AUTO_INCREMENT, ' +
        'ifichave int(11) NOT NULL DEFAULT 0, vfivlrinicial float(9,3) NOT NULL DEFAULT 0, ' +
        'vfivlrfinal float(9,3) NOT NULL DEFAULT 0, PRIMARY KEY(vfichave),' +
        'INDEX ifichave(ifichave), CONSTRAINT vfi_ifi FOREIGN KEY (ifichave) ' +
        ' REFERENCES ifi(ifichave) ON DELETE CASCADE ON UPDATE CASCADE ) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE dfi (dfichave int(11) NOT NULL AUTO_INCREMENT, ' +
        'ifichave int(11) NOT NULL DEFAULT 0, dfidatainicial date, ' +
        'dfidatafinal date, PRIMARY KEY(dfichave), INDEX ifichave(ifichave), ' +
        'CONSTRAINT dfi_ifi FOREIGN KEY (ifichave) REFERENCES ifi(ifichave)  ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE cfi (cfichave int(11) NOT NULL AUTO_INCREMENT, ' +
        'ifichave int(11) NOT NULL DEFAULT 0, cficodinicial int(11), cficodfinal int(11), ' +
        'PRIMARY KEY(cfichave), INDEX ifichave(ifichave), CONSTRAINT cfi_ifi FOREIGN KEY (ifichave) ' +
        ' REFERENCES ifi(ifichave) ON DELETE CASCADE ON UPDATE CASCADE )ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE rpg (rpgchave int(11) NOT NULL AUTO_INCREMENT, ' +
        'pcgconta01 int(11), pcgccusto01 int(11), pcgconta02 int(11), pcgccusto02 int(11), ' +
        'pcgconta03 int(11), pcgccusto03 int(11), pcgconta04 int(11), pcgccusto04 int(11), ' +
        'pcgconta05 int(11), pcgccusto05 int(11), PRIMARY KEY(rpgchave)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE prc (prcchave int(11) NOT NULL AUTO_INCREMENT, ' +
        'pcgconta int(11) NOT NULL, pcgccusto int(11) NOT NULL, prcpercentual float(9,3) NOT NULL DEFAULT 100, ' +
        'PRIMARY KEY(prcchave), INDEX pcgconta(pcgconta), INDEX pcgccusto(pcgccusto), CONSTRAINT prc_cta FOREIGN KEY (pcgconta) '
        + ' REFERENCES pcg(pcgcodigo) ON DELETE CASCADE ON UPDATE CASCADE, CONSTRAINT prc_ccu FOREIGN KEY (pcgccusto) ' +
        ' REFERENCES pcg(pcgcodigo) ON DELETE CASCADE ON UPDATE CASCADE )ENGINE=INNODB ';
      consulta.execsql;
    Except

    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into fcb (fcbcodigo,flacodigo, clbcodigo) values (1,1,1)';
      consulta.execsql;
    Except
    End;

    // filtros do razao

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE frc (frcchave int(11) NOT NULL AUTO_INCREMENT,' +
        'clbcodigo int(11) NOT NULL DEFAULT 0,frcdtinicial date NOT NULL,frcdtfinal date NOT NULL, frczeradas INTEGER(1) NOT NULL DEFAULT 0, frcparcial INTEGER(1) NOT NULL DEFAULT 0,' +
        'PRIMARY KEY(frcchave),INDEX clbcodigo(clbcodigo),CONSTRAINT frz_clb FOREIGN KEY (clbcodigo)' +
        '  REFERENCES clb(clbcodigo)  ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE frf (frfchave int(11) NOT NULL AUTO_INCREMENT,' +
        'frcchave int(11) NOT NULL DEFAULT 0, flacodigo int(3) NOT NULL DEFAULT 0,' +
        'PRIMARY KEY(frfchave), INDEX frcchave(frcchave), INDEX flacodigo(flacodigo),' +
        'CONSTRAINT frf_frc FOREIGN KEY (frcchave) REFERENCES frc(frcchave) ON DELETE CASCADE ' +
        ' ON UPDATE CASCADE, CONSTRAINT frf_fla FOREIGN KEY (flacodigo) REFERENCES fla(flacodigo) ' +
        ' ON DELETE CASCADE ON UPDATE CASCADE )ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'CREATE TABLE frp ( frpchave int(11) NOT NULL AUTO_INCREMENT,' +
        'frcchave int(11) NOT NULL DEFAULT 0, pcgcodigo int(11) NOT NULL DEFAULT 0, ' +
        'PRIMARY KEY(frpchave), INDEX frcchave(frcchave), INDEX pcgcodigo(pcgcodigo),' +
        'CONSTRAINT frp_frc FOREIGN KEY (frcchave) REFERENCES frc(frcchave) ON DELETE CASCADE ' +
        '  ON UPDATE CASCADE, CONSTRAINT frp_pcg FOREIGN KEY (pcgcodigo) REFERENCES pcg(pcgcodigo) ' +
        ' ON DELETE CASCADE ON UPDATE CASCADE )ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

  try
      consulta.Close;
      consulta.SQL.Text := 'CREATE TABLE rza (rzachave int(11) NOT NULL AUTO_INCREMENT,' +
        'rmgchave int(11) NOT NULL, clbcodigo int(11) NOT NULL, flacodigo int(3) NOT NULL,' +
        'phgcodigo int(11) NOT NULL DEFAULT 0, rmgdata date NOT NULL, rmgvalor double(15,2) NOT NULL DEFAULT 0,' +
        'rmgcomplemento varchar(300), pcgdebito int(11), pcgcredito int(11), PRIMARY KEY(rzachave),' +
        'INDEX rmgchave(rmgchave), INDEX clbcodigo(clbcodigo), INDEX flacodigo(flacodigo),' +
        'INDEX phgcodigo(phgcodigo), INDEX pcgdebito(pcgdebito), INDEX pcgcredito(pcgcredito),' +
        'INDEX rmgdata(rmgdata), CONSTRAINT rza_rmg FOREIGN KEY (rmgchave) REFERENCES rmg(rmgchave)' +
        '  ON DELETE CASCADE ON UPDATE CASCADE, CONSTRAINT rza_clb FOREIGN KEY (clbcodigo) ' +
        '  REFERENCES clb(clbcodigo) ON DELETE CASCADE ON UPDATE CASCADE,' +
        'CONSTRAINT rza_fla FOREIGN KEY (flacodigo) REFERENCES fla(flacodigo) ' +
        ' ON DELETE CASCADE ON UPDATE CASCADE, CONSTRAINT rza_phg FOREIGN KEY (phgcodigo) ' +
        ' REFERENCES phg(phgcodigo) ON DELETE CASCADE ON UPDATE CASCADE)ENGINE=INNODB';
      consulta.ExecSQL;
    except
    end;

Try
      consulta.close;
      consulta.SQL.Text :=
        'CREATE TABLE sen (sencodigo int(1) NOT NULL, senidentificacao varchar(5) NOT NULL,  PRIMARY KEY(sencodigo)) ENGINE=INNODB';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into sen (sencodigo, senidentificacao) values (0,' + chr(39) + 'Não' + chr(39) + ')';
      consulta.execsql;
    Except
    End;

    Try
      consulta.close;
      consulta.SQL.Text := 'insert into sen (sencodigo, senidentificacao) values (1,' + chr(39) + 'Sim' + chr(39) + ')';
      consulta.execsql;
    Except
    End;



    Try
      consulta.close;
      consulta.SQL.Text := 'update cfg set cfgverdados=1';
      consulta.execsql;
    Except
    End;

  End;

End;

end.
