unit ufmostraist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  Tfmostraist = class(TForm)
    plcentro: TPanel;
    Splitter: TSplitter;
    TreeViewBookmarks: TTreeView;
    ScrollBox: TScrollBox;
    PanelBotoes: TPanel;
    PanelCancel: TPanel;
    ProgressBar: TProgressBar;
    ButtonCancel: TButton;
    PanelButtons: TPanel;
    SpeedButtonPreviousPage: TSpeedButton;
    SpeedButtonNextPage: TSpeedButton;
    SpeedButtonFirstPage: TSpeedButton;
    SpeedButtonLastPage: TSpeedButton;
    SpeedButtonPrint: TSpeedButton;
    SpeedButtonPageNumber: TSpeedButton;
    Bevel2: TBevel;
    SpeedButtonZoomOut: TSpeedButton;
    SpeedButtonZoomIn: TSpeedButton;
    SpeedButtonSearch: TSpeedButton;
    EditSearch: TEdit;
    ComboBoxZoom: TComboBox;
    PrintDialog: TPrintDialog;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure SpeedButtonPrintClick(Sender: TObject);
    procedure SpeedButtonFirstPageClick(Sender: TObject);
    procedure SpeedButtonPreviousPageClick(Sender: TObject);
    procedure SpeedButtonPageNumberClick(Sender: TObject);
    procedure SpeedButtonNextPageClick(Sender: TObject);
    procedure SpeedButtonLastPageClick(Sender: TObject);
    procedure SpeedButtonZoomOutClick(Sender: TObject);
    procedure SpeedButtonZoomInClick(Sender: TObject);
    procedure ComboBoxZoomChange(Sender: TObject);
    procedure EditSearchChange(Sender: TObject);
    procedure SpeedButtonSearchClick(Sender: TObject);
    procedure TreeViewBookmarksClick(Sender: TObject);
    procedure SplitterMoved(Sender: TObject);
    procedure ScrollBoxClick(Sender: TObject);
    procedure PdfViewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PdfViewMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PdfViewMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PdfViewPageChange(Sender: TObject);
    procedure PdfViewPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
     Selecting: Boolean;
    SelectionStart: Integer;
    SelectionEnd: Integer;
    Cancel: Boolean;
    DisableBookmarks: Boolean;
    SearchStart: Integer;
    SearchEnd: Integer;

    procedure AddBookmarks(Node: TTreeNode; Bookmarks: TBookmarks);
    procedure Zoom;
    function FindBookmark(PageNumber: Integer): TTreeNode;
    function AddChildren(Node: TTreeNode): Boolean;
    { Private declarations }
  public

    procedure CarregaPDF(vnomepdf: string);
    { Public declarations }
  end;

var
  fmostraist: Tfmostraist;

implementation

uses Printers, ClipBrd, Types,  ShellApi;

{$R *.dfm}
var
  BookmarkPages: array of TTreeNode;

procedure PrintBitmap(Printer: TPrinter; Bitmap: TBitmap);
var
  InfoHeaderSize, ImageSize: DWORD;
  InfoHeader: PBitmapInfo;
  Image: Pointer;
begin
  GetDIBSizes(Bitmap.Handle, InfoHeaderSize, ImageSize);

  InfoHeader := AllocMem(InfoHeaderSize);
  try
    Image := AllocMem(ImageSize);
    try
      GetDIB(Bitmap.Handle, 0, InfoHeader^, Image^);

      StretchDIBits(Printer.Canvas.Handle, 0, 0, Bitmap.Width, Bitmap.Height, 0, 0, Bitmap.Width, Bitmap.Height, Image, InfoHeader^, DIB_RGB_COLORS, SRCCOPY);
    finally
      FreeMem(Image);
    end;
  finally
    FreeMem(InfoHeader);
  end;
end;


procedure Tfmostraist.CarregaPDF(vnomepdf: string);
var
  Password: string;
begin
  Selecting := False;
  SelectionStart := -1;
  SelectionEnd := -1;
  SpeedButtonPrint.Enabled := False;
  SpeedButtonFirstPage.Enabled := False;
  SpeedButtonPreviousPage.Enabled := False;
  SpeedButtonPageNumber.Enabled := False;
  SpeedButtonPageNumber.Caption := '';
  SpeedButtonNextPage.Enabled := False;
  SpeedButtonLastPage.Enabled := False;
  SpeedButtonZoomIn.Enabled := False;
  SpeedButtonZoomOut.Enabled := False;

  SpeedButtonSearch.Enabled := False;
  EditSearch.Enabled := False;
  TreeViewBookmarks.Visible := False;
  Splitter.Visible := False;
  Pdf.Active := False;
  Pdf.FileName := vnomepdf;
  Pdf.Password := '';
  PdfView.PageNumber := 1;
  BookmarkPages := nil;
  try
    PdfView.Active := True;
  except
    on Error: EPdfError do
      if Error.Message = 'Senha requeri, ou senha invalida' then
      begin
        if not InputQuery('Digite a senha', 'Senha: ', Password) then
          raise;
        Pdf.Password := Password;
        PdfView.Active := True;
      end
      else
        raise;
  end;
  TreeViewBookmarks.Items.Clear;
  SetLength(BookmarkPages, Pdf.PageCount);
  AddBookmarks(nil, Pdf.Bookmarks);
  if TreeViewBookmarks.Items.Count > 0 then
  begin
    Splitter.Visible := True;
    TreeViewBookmarks.Visible := True;
  end;

  Zoom;
end;

procedure Tfmostraist.ComboBoxZoomChange(Sender: TObject);
begin
  Zoom;
  PdfView.SetFocus;

end;

procedure Tfmostraist.EditSearchChange(Sender: TObject);
begin
  if SearchStart <> -1 then
  begin
    SearchStart := -1;
    SearchEnd := -1;
    PdfView.Repaint;
  end;
  SpeedButtonSearch.Enabled := EditSearch.Text <> '';


end;

procedure Tfmostraist.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_LEFT, VK_RIGHT, VK_HOME, VK_END] then
    if EditSearch.Focused then
      Exit;

  case Key of
    VK_PRIOR, VK_UP, VK_LEFT:
      begin
        if SpeedButtonPreviousPage.Enabled then
          SpeedButtonPreviousPage.Click;
        Key := 0;
      end;

    VK_NEXT, VK_DOWN, VK_RIGHT:
      begin
        if SpeedButtonNextPage.Enabled then
          SpeedButtonNextPage.Click;
        Key := 0;
      end;

    VK_HOME:
      begin
        if SpeedButtonFirstPage.Enabled then
          SpeedButtonFirstPage.Click;
        Key := 0;
      end;

    VK_END:
      begin
        if SpeedButtonLastPage.Enabled then
          SpeedButtonLastPage.Click;
        Key := 0;
      end;
  end;

end;

procedure Tfmostraist.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  ScrollBox.VertScrollBar.Position := ScrollBox.VertScrollBar.Position - WheelDelta;

end;

procedure Tfmostraist.FormResize(Sender: TObject);
begin
  Zoom;
end;

procedure Tfmostraist.PdfViewMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  Tolerance = 2.0;
var
  LinkIndex: Integer;
  NewPageNumber: Integer;
begin
  if not PdfView.Active then
    Exit;

  PdfView.SetFocus;

  LinkIndex := PdfView.WebLinkAtPos(X, Y);
  if LinkIndex <> -1 then
  begin
    ShellExecute(0, 'open', PChar(string(PdfView.WebLink[LinkIndex].Url)), '', '', SW_SHOWNORMAL);
    Exit;
  end;

  LinkIndex := PdfView.LinkAnnotationAtPos(X, Y);
  if LinkIndex <> -1 then
  begin
    NewPageNumber := PdfView.LinkAnnotation[LinkIndex].PageNumber;
    if (NewPageNumber >= 1) and (NewPageNumber <= PdfView.PageCount) then
      PdfView.PageNumber := NewPageNumber;
    Exit;
  end;

  if ssDouble in Shift then
  begin
    // select current word
    SelectionStart := PdfView.CharacterIndexAtPos(X, Y, Tolerance, Tolerance);
    SelectionEnd := SelectionStart;
    if SelectionStart >= 0 then
    begin
      while (SelectionStart > 0) and IsCharAlphaNumericW(PdfView.Character[SelectionStart - 1]) do
        Dec(SelectionStart);

      while (SelectionEnd < PdfView.CharacterCount - 1) and IsCharAlphaNumericW(PdfView.Character[SelectionEnd + 1]) do
        Inc(SelectionEnd);

      PdfView.Invalidate;
    end;
  end
  else
  begin
    Selecting := True;
    SelectionStart := -1;
    SelectionEnd := -1;
  end


end;

procedure Tfmostraist.PdfViewMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);

const
  Tolerance = 2.0;
var
  SelectedIndex: Integer;
  NeedRepaint: Boolean;
begin
  if not PdfView.Active then
    Exit;

  SelectedIndex := PdfView.CharacterIndexAtPos(X, Y, Tolerance, Tolerance);
  if (not Selecting) and (PdfView.WebLinkAtPos(X, Y) <> -1) then
    PdfView.Cursor := crHandPoint
  else if (not Selecting) and (PdfView.LinkAnnotationAtPos(X, Y) <> -1) then
    PdfView.Cursor := crHandPoint
  else if SelectedIndex >= 0 then
    PdfView.Cursor := crIBeam
  else
    PdfView.Cursor := crDefault;

  if Selecting then
    if SelectedIndex >= 0 then
    begin
      NeedRepaint := False;

      if SelectionStart = -1 then
      begin
        SelectionStart := SelectedIndex;
        NeedRepaint := True;
      end;

      if SelectionEnd <> SelectedIndex then
      begin
        SelectionEnd := SelectedIndex;
        NeedRepaint := True;
      end;

      if NeedRepaint then
        PdfView.Invalidate;
    end;


end;

procedure Tfmostraist.PdfViewMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

var
  Text: WString;
begin
  if Selecting then
  begin
    Selecting := False;
    if (SelectionStart >= 0) and (SelectionEnd >= 0) then
    begin
      if SelectionEnd < SelectionStart then
        Text := PdfView.Text(SelectionEnd, SelectionStart - SelectionEnd + 1)
      else
        Text := PdfView.Text(SelectionStart, SelectionEnd - SelectionStart + 1);

      Clipboard.AsText := Text;
    end;
  end;


end;

function Tfmostraist.AddChildren(Node: TTreeNode): Boolean;
var
  Bookmark: TBookmark;
  I: Integer;
begin
  Result := False;
  if Node.HasChildren and (Node.Count = 0) then
  begin
    TreeViewBookmarks.Items.BeginUpdate;
    Screen.Cursor := crHourGlass;
    try
      Bookmark.Handle := Node.Data;
      AddBookmarks(Node, Pdf.BookmarkChildren[Bookmark]);
      Result := True;

      for I := 0 to Node.Count - 1 do
        if I > 0 then
          Break // optimization
        else
          AddChildren(Node.Item[I]);
    finally
      Screen.Cursor := crDefault;
      TreeViewBookmarks.Items.EndUpdate;
    end;
  end
end;



function Tfmostraist.FindBookmark(PageNumber: Integer): TTreeNode;
var
  Index: Integer;
begin
  if BookmarkPages = nil then
    Result := nil
  else
  begin
    Index := PageNumber - 1;
    while (Index > 0) and (BookmarkPages[Index] = nil) do
      Dec(Index);

    Result := BookmarkPages[Index];

    if Result <> nil then
      if AddChildren(Result) then
        Result := FindBookmark(PageNumber);
  end;
end;


procedure Tfmostraist.PdfViewPageChange(Sender: TObject);
var
  Node: TTreeNode;
begin
  if PdfView.Active then
  begin
    SpeedButtonPrint.Enabled := True;
    SpeedButtonFirstPage.Enabled := PdfView.PageNumber > 1;
    SpeedButtonPreviousPage.Enabled := PdfView.PageNumber > 1;
    SpeedButtonPageNumber.Enabled := PdfView.PageCount > 1;
    SpeedButtonPageNumber.Caption := IntToStr(PdfView.PageNumber) + ' of ' + IntToStr(PdfView.PageCount);
    SpeedButtonNextPage.Enabled := PdfView.PageNumber < PdfView.PageCount;
    SpeedButtonLastPage.Enabled := PdfView.PageNumber < PdfView.PageCount;
    SpeedButtonZoomIn.Enabled := True;
    SpeedButtonZoomOut.Enabled := True;
    ComboBoxZoom.Enabled := True;
    SpeedButtonSearch.Enabled := EditSearch.Text <> '';
    EditSearch.Enabled := True;
  end
  else
  begin
    SpeedButtonPrint.Enabled := False;
    SpeedButtonFirstPage.Enabled := False;
    SpeedButtonPreviousPage.Enabled := False;
    SpeedButtonPageNumber.Enabled := False;
    SpeedButtonPageNumber.Caption := '';
    SpeedButtonNextPage.Enabled := False;
    SpeedButtonLastPage.Enabled := False;
    SpeedButtonZoomIn.Enabled := False;
    SpeedButtonZoomOut.Enabled := False;
    ComboBoxZoom.Enabled := False;
    SpeedButtonSearch.Enabled := False;
    EditSearch.Enabled := False;
  end;

  Selecting := False;
  SelectionStart := -1;
  SelectionEnd := -1;

  SearchStart := -1;
  SearchEnd := -1;

  Zoom;
  PdfView.Invalidate;

  // update bookmark
  if not DisableBookmarks then
  begin
    Node := FindBookmark(PdfView.PageNumber);
    if Node <> nil then
      TreeViewBookmarks.Selected := Node
    else
      TreeViewBookmarks.Selected := nil;
  end;


end;

procedure Tfmostraist.PdfViewPaint(Sender: TObject);
begin
  PdfView.PaintSelection(SelectionStart, SelectionEnd, $F0C080);
  PdfView.PaintSelection(SearchStart, SearchEnd, $00E000);

end;

procedure Tfmostraist.ScrollBoxClick(Sender: TObject);
begin
  PdfView.SetFocus;

end;

procedure Tfmostraist.SpeedButtonFirstPageClick(Sender: TObject);
begin
  PdfView.PageNumber := 1;
end;

procedure Tfmostraist.SpeedButtonLastPageClick(Sender: TObject);
begin
  PdfView.PageNumber := PdfView.PageCount;
end;

procedure Tfmostraist.SpeedButtonNextPageClick(Sender: TObject);
begin
  PdfView.PageNumber := PdfView.PageNumber + 1;
end;

procedure Tfmostraist.SpeedButtonPageNumberClick(Sender: TObject);
var
  PageNumber: string;
  NewPageNumber: Integer;
begin
  PageNumber := IntToStr(PdfView.PageNumber);
  if InputQuery('Selecionar página', 'Número da página: ', PageNumber) then
  begin
    NewPageNumber := StrToIntDef(PageNumber, PdfView.PageNumber);
    if (NewPageNumber > 0) and (NewPageNumber <= PdfView.PageCount) then
      PdfView.PageNumber := NewPageNumber;
  end;

end;

procedure Tfmostraist.SpeedButtonPreviousPageClick(Sender: TObject);
begin
  PdfView.PageNumber := PdfView.PageNumber - 1;
end;

procedure Tfmostraist.SpeedButtonPrintClick(Sender: TObject);
var
  FromPage, ToPage, Page, Copy, CopyCount, CollateCopy, CollateCopyCount: Integer;
  FirstPage: Boolean;
  Bitmap: TBitmap;
begin
  PrintDialog.MinPage := 1;
  PrintDialog.MaxPage := Pdf.PageCount;
  PrintDialog.Options := [poPageNums];
  PrintDialog.FromPage := PdfView.PageNumber;
  PrintDialog.ToPage := PdfView.PageNumber;
  PrintDialog.PrintRange := prPageNums;

  if PrintDialog.Execute then
  begin
    if PrintDialog.PrintRange = prPageNums then
    begin
      FromPage := PrintDialog.FromPage;
      ToPage := PrintDialog.ToPage;
    end
    else
    begin
      FromPage := 1;
      ToPage := Pdf.PageCount;
    end;

    if PrintDialog.Collate then
    begin
      CollateCopyCount := PrintDialog.Copies;
      CopyCount := 1;
    end
    else
    begin
      CollateCopyCount := 1;
      CopyCount := PrintDialog.Copies;
    end;

    if Pdf.Title <> '' then
      Printer.Title := Pdf.Title
    else
      Printer.Title := Caption;

    FirstPage := True;
    Printer.BeginDoc;
    try
      Cancel := False;
      ProgressBar.Max := (ToPage - FromPage + 1) * PrintDialog.Copies;
      ProgressBar.Position := 0;
      PanelButtons.Visible := False;
      PanelCancel.Visible := True;

      for CollateCopy := 1 to CollateCopyCount do
        for Page := FromPage to ToPage do
          for Copy := 1 to CopyCount do
          begin
            if FirstPage then
              FirstPage := False
            else
              Printer.NewPage;

            ProgressBar.Position := ProgressBar.Position + 1;

            Pdf.PageNumber := Page;
            if Pdf.FormFill then
            begin
              Bitmap := Pdf.RenderPage(0, 0, Printer.PageWidth, Printer.PageHeight, ro0, [rePrinting]);
              try
                PrintBitmap(Printer, Bitmap);
              finally
                Bitmap.Free;
              end;
            end
            else
              Pdf.RenderPage(Printer.Handle, 0, 0, Printer.PageWidth, Printer.PageHeight, ro0, [rePrinting]);

            application.ProcessMessages;
            if Cancel then
            begin
              CollateCopyCount := 0;
              ToPage := 0;
              CopyCount := 0;
            end;
          end;
    finally
      PanelCancel.Visible := False;
      PanelButtons.Visible := True;
      Printer.EndDoc;
    end;
  end;


end;

procedure Tfmostraist.SpeedButtonSearchClick(Sender: TObject);
var
  FoundIndex: Integer;
begin
  if EditSearch.Text <> '' then
  begin
    Cancel := False;
    ProgressBar.Max := Pdf.PageCount - PdfView.PageNumber;
    ProgressBar.Position := 0;
    PanelButtons.Visible := False;
    PanelCancel.Visible := True;

    try
      Pdf.PageNumber := PdfView.PageNumber;
      if SearchStart = -1 then
        FoundIndex := Pdf.FindFirst(EditSearch.Text, [])
      else
        FoundIndex := Pdf.FindNext;

      SearchStart := -1;
      SearchEnd := -1;

      while (FoundIndex = -1) and (Pdf.PageNumber < Pdf.PageCount) do
      begin
        ProgressBar.Position := ProgressBar.Position + 1;
        application.ProcessMessages;
        if Cancel then
          Break;

        Pdf.PageNumber := Pdf.PageNumber + 1;
        FoundIndex := Pdf.FindFirst(EditSearch.Text, [])
      end;

      if FoundIndex <> -1 then
      begin
        PdfView.PageNumber := Pdf.PageNumber;
        SearchStart := FoundIndex;
        SearchEnd := FoundIndex + Length(EditSearch.Text) - 1;
        PdfView.Invalidate; // repaint
      end
      else
      begin
        PdfView.Invalidate; // repaint
        if not Cancel then
          ShowMessage('Text not found');
      end;
    finally
      PanelCancel.Visible := False;
      PanelButtons.Visible := True;
    end;
  end

end;

procedure Tfmostraist.SpeedButtonZoomInClick(Sender: TObject);
begin
  ComboBoxZoom.ItemIndex := ComboBoxZoom.ItemIndex + 1;
  Zoom;

end;

procedure Tfmostraist.SpeedButtonZoomOutClick(Sender: TObject);
begin
  ComboBoxZoom.ItemIndex := ComboBoxZoom.ItemIndex - 1;
  Zoom;

end;

procedure Tfmostraist.SplitterMoved(Sender: TObject);
begin
  Zoom;

end;

procedure Tfmostraist.TreeViewBookmarksClick(Sender: TObject);
var
  Bookmark: TBookmark;
  Node: TTreeNode;
begin
  if PdfView.Active then
  begin
    Node := TreeViewBookmarks.Selected;
    if Node <> nil then
    begin
      Bookmark := Pdf.Bookmark[Node.Text];
      if (Bookmark.PageNumber >= 1) and (Bookmark.PageNumber <= PdfView.PageCount) then
        try
          DisableBookmarks := True;
          PdfView.PageNumber := Bookmark.PageNumber;
        finally
          DisableBookmarks := False;
        end;
    end;
  end;

  PdfView.SetFocus;

end;

procedure Tfmostraist.AddBookmarks(Node: TTreeNode; Bookmarks: TBookmarks);
var
  ChildNode: TTreeNode;
  I: Integer;
begin
  TreeViewBookmarks.Items.BeginUpdate;
  try
    for I := 0 to Length(Bookmarks) - 1 do
    begin
      ChildNode := TreeViewBookmarks.Items.AddChildObject(Node, Bookmarks[I].Title, Bookmarks[I].Handle);
      if BookmarkPages[Bookmarks[I].PageNumber - 1] = nil then
        BookmarkPages[Bookmarks[I].PageNumber - 1] := ChildNode;
      ChildNode.HasChildren := Pdf.HasBookmarkChildren[Bookmarks[I]];
    end;
  finally
    TreeViewBookmarks.Items.EndUpdate;
  end;
end;

procedure Tfmostraist.Zoom;
var
  PageX, PageY, PdfPageWidth, PdfPageHeight, PageWidth, PageHeight: Double;
begin
  if PdfView.Active then
  begin
    SendMessage(ScrollBox.Handle, WM_SETREDRAW, WPARAM(False), 0);

    try
      if PdfView.Rotation in [ro0, ro180] then
      begin
        PdfPageWidth := PdfView.PageWidth;
        PdfPageHeight := PdfView.PageHeight;
      end
      else
      begin
        PdfPageWidth := PdfView.PageHeight;
        PdfPageHeight := PdfView.PageWidth;
      end;

      PageWidth := 0;
      PageHeight := 0;

      case ComboBoxZoom.ItemIndex of
        0:
          begin
            PageWidth := 0.1 * PdfPageWidth;
            PageHeight := 0.1 * PdfPageHeight;
          end;

        1:
          begin
            PageWidth := 0.25 * PdfPageWidth;
            PageHeight := 0.25 * PdfPageHeight;
          end;

        2:
          begin
            PageWidth := 0.5 * PdfPageWidth;
            PageHeight := 0.5 * PdfPageHeight;
          end;

        3:
          begin
            PageWidth := 0.75 * PdfPageWidth;
            PageHeight := 0.75 * PdfPageHeight;
          end;

        5:
          begin
            PageWidth := 1.25 * PdfPageWidth;
            PageHeight := 1.25 * PdfPageHeight;
          end;

        6:
          begin
            PageWidth := 1.5 * PdfPageWidth;
            PageHeight := 1.5 * PdfPageHeight;
          end;

        7:
          begin
            PageWidth := 2.0 * PdfPageWidth;
            PageHeight := 2.0 * PdfPageHeight;
          end;

        8:
          begin
            PageWidth := 4.0 * PdfPageWidth;
            PageHeight := 4.0 * PdfPageHeight;
          end;

        9:
          begin
            PageWidth := 8.0 * PdfPageWidth;
            PageHeight := 8.0 * PdfPageHeight;
          end;

        11:
          begin
            ScrollBox.HorzScrollBar.Visible := False;
            ScrollBox.VertScrollBar.Visible := False;

            if ScrollBox.Width / PdfPageWidth > ScrollBox.Height / PdfPageHeight then
            begin
              PdfView.SetBounds(0, 0, Round(ScrollBox.Height * PdfPageWidth / PdfPageHeight), ScrollBox.Height);
              PageX := (ScrollBox.ClientWidth - PdfView.Width) / 2.0;
              if PageX < 0 then
                PageX := 0;
              PdfView.SetBounds(Round(PageX) - ScrollBox.HorzScrollBar.ScrollPos, 0, Round(ScrollBox.ClientHeight * PdfPageWidth / PdfPageHeight), ScrollBox.ClientHeight);
            end
            else
            begin
              PdfView.SetBounds(0, 0, ScrollBox.Width, Round(ScrollBox.Width * PdfPageHeight / PdfPageWidth));
              PageY := (ScrollBox.ClientHeight - PdfView.Height) / 2.0;
              if PageY < 0 then
                PageY := 0;
              PdfView.SetBounds(0, Round(PageY) - ScrollBox.VertScrollBar.ScrollPos, ScrollBox.ClientWidth, Round(ScrollBox.ClientWidth * PdfPageHeight / PdfPageWidth));
            end;
          end;

        12:
          begin
            ScrollBox.HorzScrollBar.Visible := False;
            ScrollBox.VertScrollBar.Visible := True;

            PdfView.SetBounds(0, -ScrollBox.VertScrollBar.ScrollPos, ScrollBox.Width, Round(ScrollBox.Width * PdfPageHeight / PdfPageWidth));
            PageY := (ScrollBox.ClientHeight - PdfView.Height) / 2.0;
            if PageY < 0 then
              PageY := 0;
            PdfView.SetBounds(0, Round(PageY) - ScrollBox.VertScrollBar.ScrollPos, ScrollBox.ClientWidth, Round(ScrollBox.ClientWidth * PdfPageHeight / PdfPageWidth));
          end;

      else
        begin
          PageWidth := PdfPageWidth;
          PageHeight := PdfPageHeight;
        end;
      end;

      if ComboBoxZoom.ItemIndex < 11 then
      begin
        ScrollBox.HorzScrollBar.Visible := True;
        ScrollBox.VertScrollBar.Visible := True;

        // set page size
        PageWidth := Screen.PixelsPerInch * PageWidth / 72.0;
        PageHeight := Screen.PixelsPerInch * PageHeight / 72.0;
        PdfView.SetBounds(-ScrollBox.HorzScrollBar.ScrollPos, -ScrollBox.VertScrollBar.ScrollPos, Round(PageWidth), Round(PageHeight));

        // center page
        PageX := (ScrollBox.ClientWidth - PageWidth) / 2.0;
        if PageX < 0 then
          PageX := 0;
        PageY := (ScrollBox.ClientHeight - PageHeight) / 2.0;
        if PageY < 0 then
          PageY := 0;
        PdfView.SetBounds(Round(PageX) - ScrollBox.HorzScrollBar.ScrollPos, Round(PageY) - ScrollBox.VertScrollBar.ScrollPos, Round(PageWidth), Round(PageHeight));
      end;

      // update zoom buttons visibility
      SpeedButtonZoomIn.Enabled := ComboBoxZoom.ItemIndex < 9;
      SpeedButtonZoomOut.Enabled := (ComboBoxZoom.ItemIndex > 0) and (ComboBoxZoom.ItemIndex < 10);
    finally
      SendMessage(ScrollBox.Handle, WM_SETREDRAW, WPARAM(True), 0);
      ScrollBox.Invalidate;
      PdfView.Invalidate;
    end;
  end;
end;



end.
