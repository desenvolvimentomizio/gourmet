unit uThAjustaMesas;

interface

uses
  System.Classes, SysUtils, Vcl.Buttons, dialogs, DateUtils;

type
  TAjustaEstadoMesas = class(TThread)
  private
    procedure UpdateMesas;
  protected
    procedure Execute; override;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

  Synchronize(UpdateCaption);

  and UpdateCaption could look like,

  procedure AjustaEstadoMesas.UpdateCaption;
  begin
  Form1.Caption := 'Updated in a thread';
  end;

  or

  Synchronize(
  procedure
  begin
  Form1.Caption := 'Updated in thread via an anonymous method'
  end
  )
  );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses ufprincirest;

{ AjustaEstadoMesas }

procedure TAjustaEstadoMesas.Execute;

begin
  NameThreadForDebugging('AjustaEstadoMesas');

  Synchronize(UpdateMesas);

end;

procedure TAjustaEstadoMesas.UpdateMesas;
var
  i, u: integer;
  coraberta1: integer;
  coraberta2: integer;
  corfechada: integer;
  corparada: integer;

  estaatrazada: boolean;
  estaparada: boolean;

  hora1: ttime;
  hora2: ttime;
  vqtd: integer;
  vlta: string;
  vtit: string;

  qtdAbertas: integer;
  qtdViagens: integer;
  qtdEntregas: integer;

begin
  { mesas }
  vqtd := 70;
  vlta := 'm';
  vtit := 'M E S A ';


    coraberta1 := $00D90000; // azul
    coraberta2 := $000F0FFF; // larankza
    corfechada := $00FF8000;
    corparada := $00000000;

    qtdAbertas := 0;
    for i := 1 to vqtd do
    begin

      fprincirest.eMesas.Close;
      fprincirest.eMesas.sql.Text := 'select orcchave from orc where orcdataencerr is null and orcnome=' + chr(39) + vtit + formatfloat('00', i)
        + chr(39);
      fprincirest.eMesas.Open;

      if fprincirest.eMesas.Fields[0].AsInteger > 0 then
      begin

        fprincirest.atrazo.Close;
        fprincirest.atrazo.params[0].AsInteger := fprincirest.eMesas.Fields[0].AsInteger;
        fprincirest.atrazo.Open;

        fprincirest.atrazo.first;

        estaparada := false;

        fprincirest.atrazo.first;

        if (fprincirest.atrazoimmhoraentrega.AsString = '') then
        begin
          estaparada := false;
        end
        else
        begin
          fprincirest.atrazo.Last;
          hora1 := IncMinute(fprincirest.atrazoimmhoraentrega.asdatetime, 5);
          hora2 := (time);
          if (hora1 < hora2) then
          begin
            if (fprincirest.atrazoimmhoraentrega.AsString <> '') then
            begin
              estaparada := true;
            end
            else
              estaparada := false;

          end
          else
          begin
            estaparada := false;
          end;

        end;

      end;

      fprincirest.eMesas.Close;
      fprincirest.eMesas.sql.Text := 'select orcchave from orc where orcdataencerr is null and orcnome=' + chr(39) + vtit + formatfloat('00', i)
        + chr(39);
      fprincirest.eMesas.Open;

      if fprincirest.eMesas.Fields[0].AsInteger > 0 then
      begin

        fprincirest.atrazo.Close;
        fprincirest.atrazo.params[0].AsInteger := fprincirest.eMesas.Fields[0].AsInteger;
        fprincirest.atrazo.Open;

        fprincirest.atrazo.first;

        estaatrazada := false;
        while not fprincirest.atrazo.eof do
        begin
          hora1 := IncMinute(fprincirest.atrazoimmhorapedido.asdatetime, 15);
          hora2 := (time);

          if (hora1 < hora2) and (fprincirest.atrazoimmhoraentrega.AsString = '') then
          begin
            estaatrazada := true;
            break;
          end;

          fprincirest.atrazo.Next;
        end;

      end;

      if not fprincirest.eMesas.IsEmpty then
      begin
        qtdAbertas := qtdAbertas + 1;

        if estaatrazada then
        begin
          (fprincirest.FindComponent(vlta + formatfloat('00', i)) as tspeedbutton).Font.Color := coraberta2;
        end
        else
        begin
          if estaparada then
          begin
            (fprincirest.FindComponent(vlta + formatfloat('00', i)) as tspeedbutton).Font.Color := corparada;
          end
          else
            (fprincirest.FindComponent(vlta + formatfloat('00', i)) as tspeedbutton).Font.Color := coraberta1;
        end;

      end
      else
        (fprincirest.FindComponent(vlta + formatfloat('00', i)) as tspeedbutton).Font.Color := corfechada;
    end;

  fprincirest.plmpendentes.Color := fprincirest.pltitulomesas.Color;
  fprincirest.plmpendentes.Caption := 'Abertas: ' + formatfloat('00', qtdAbertas);

end;

end.
