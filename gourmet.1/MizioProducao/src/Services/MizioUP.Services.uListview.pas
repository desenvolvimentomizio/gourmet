unit MizioUP.Services.uListview;

interface

uses FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView, FMX.Graphics;

type
    TMyListview = class
    private

    public
        class procedure SetupItem(lv: TListView; Item: TListViewItem; img_uncheck,
                                  img_check: TBitmap); static;
        class procedure SelecionarItem(lv: TListView; Item: TListViewItem;
                                       img_uncheck, img_check: TBitmap); static;
        class function SelectedCount(lview: TListView): integer; static;
        class procedure AddItem(lv: TListView; codigo, descricao: string;
                                bmp: TBitmap); static;

end;

implementation

uses
  System.UITypes;

class procedure TMyListview.SetupItem(lv: TListView; Item: TListViewItem;
                                  img_uncheck, img_check: TBitmap);
begin
    with item do
    begin
        if Checked then
            TListItemImage(Objects.FindDrawable('ImgCheck')).Bitmap := img_check
        else
            TListItemImage(Objects.FindDrawable('ImgCheck')).Bitmap := img_uncheck;
    end;
end;


class procedure TMyListview.SelecionarItem(lv: TListView; Item: TListViewItem;
                                           img_uncheck, img_check: TBitmap);
begin


    Item.Checked := NOT Item.Checked;
    SetupItem(lv, item, img_uncheck, img_check);
end;

class function TMyListview.SelectedCount(lview: TListView): integer;
var
    x : integer;
begin
    Result := 0;

    for x := lview.ItemCount - 1 downto 0 do
        if lview.Items[x].Checked then
            Inc(Result);
end;

class procedure TMyListview.AddItem(lv: TListView;
                                    codigo, descricao: string;
                                    bmp: TBitmap);
begin
    with lv.Items.Add do
    begin
        Height := 60;
        TagString := codigo;
        Checked := false;

        TListItemText(Objects.FindDrawable('TxtColaborador')).Text := descricao;
        TListItemImage(Objects.FindDrawable('ImgCheck')).Bitmap := bmp;


     //   lv.SetColorItemFill(TAlphaColorRec.red);

    end;
end;


end.

