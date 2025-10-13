unit ufverificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Vcl.ActnList;

type
  Tfverificacao = class(TForm)
    dau: tuniquery;
    dauclbcodigo: TIntegerField;
    dauactcodigo: TIntegerField;
    daudauativo: TIntegerField;
    consulta: tuniquery;
  private
    { Private declarations }
    Fzcone: tuniconnection;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  public
    { Public declarations }
    vusrcodigo: string;
  end;

var
  fverificacao: Tfverificacao;

implementation

{$R *.dfm}

//uses ufliberacao;

{function liberacao(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vactcodigo: string;
  vmotivo: string): string;
var
  vch: string;
  vpercdesc: double;
  vAutorizado: boolean;
begin

  vpercdesc := 0;
  vAutorizado := false;

  try

    fverificacao := Tfverificacao.Create(AOwner);
    fverificacao.vusrcodigo := vusuario;
    fverificacao.zcone := conexao;
    fverificacao.consulta.Connection := conexao;
    fverificacao.dau.Connection := conexao;

    if Pos('desconto', vmotivo) > 0 then
    begin
      // testa se o usuario tem direito para dar estes conto

      vpercdesc := StrToFloat(Trim(Copy(vmotivo, Pos('#', vmotivo) + 1, 50)));

      fverificacao.consulta.Close;
      fverificacao.consulta.SQL.Text := 'SELECT clbdescmaximo FROM clb WHERE clbcodigo = ' + vusuario;
      fverificacao.consulta.Open;

      if fverificacao.consulta.Fields[0].AsFloat >= vpercdesc then
      begin
        // foi autorizado
        vAutorizado := true;
        vch := vusuario;
      end;
    end
    else
    begin
      // é o usuario admin =1 , sempre tem todos direitos
      if vusuario = '1' then
      begin
        vAutorizado := true;
        vch := vusuario;
      end
      else
      begin
        // teste se ele tem direito a utilizar este modulo
        fverificacao.dau.Close;
        fverificacao.dau.SQL.Text := 'SELECT * FROM dau WHERE clbcodigo = ' + vusuario + ' AND actcodigo = ' + vactcodigo + ' AND dauativo = 1';
        fverificacao.dau.Open;

        if fverificacao.dau.RecordCount = 1 then
        begin
          vAutorizado := true;
          vch := vusuario;
          // foi autorizado
        end;
      end;
    end;

    if not vAutorizado then
    begin

      vch := vusuario;

      if Pos('desconto', vmotivo) > 0 then
      begin
        try
          // é um teste para liberar o desconto
          fliberacao := Tfliberacao.Create(AOwner);
          fliberacao.CBSalvarLiberacao.visible := false;
          fliberacao.vusrcodigo := vusuario;
          fliberacao.zcone := conexao;

          if fliberacao.ShowModal = mrok then
          begin

            fverificacao.consulta.Close;
            fverificacao.consulta.SQL.Text := 'select clbdescmaximo from clb where clbcodigo=' + fliberacao.vretorno;
            fverificacao.consulta.Open;

            if fverificacao.consulta.Fields[0].AsFloat >= vpercdesc then
            begin
              vch := fliberacao.vretorno; // autorizado o desconto
            end
            else
            begin
              vch := ''; // não foi autorizado o desconto
            end;

          end;
        finally
          FreeAndNil(fliberacao);
        end;

      end
      else
      begin
        // é um teste para liberar o acesso

        try
          fverificacao.consulta.Close;
          fverificacao.consulta.SQL.Text := 'select clbidentificacao from clb where clbcodigo=' + vusuario;
          fverificacao.consulta.Open;

          fliberacao := Tfliberacao.Create(AOwner);
          fliberacao.CBSalvarLiberacao.Caption := 'Liberação permanente de acesso para ' + fverificacao.consulta.Fields[0].AsString;
          fliberacao.vusrcodigo := vusuario;
          fliberacao.zcone := conexao;

          if fliberacao.ShowModal = mrok then
          begin
            vch := fliberacao.vretorno; // foi autorizado o acesso
          end
          else
          begin
            vch := ''; // não foi autorizado o acesso
          end;

        finally
          FreeAndNil(fliberacao);
        end;
      end;
    end;

  finally
    result := vch;
    FreeAndNil(fverificacao);
  end;
end;

exports liberacao; }

end.
