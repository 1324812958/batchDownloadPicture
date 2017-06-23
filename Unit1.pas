unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,UrlMon;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Init;
    procedure Downloadpic;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }


function GetUrlFileName(const AUrl: string): string;
var ts : TStrings;
begin
  //从url取得文件名
  Result := '';
  ts := TStringList.create;
  try
    ts.Delimiter :='/';
    ts.DelimitedText := AUrl;
    if ts.Count > 0 then
      Result := ts[ts.Count - 1];
  finally
    ts.Free;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button1.Enabled := False;
  Screen.Cursor := crHourGlass;
  try
      Downloadpic;
  finally
      Screen.Cursor := crDefault;
      Button1.Enabled := True;
  end;
end;

procedure TForm1.Downloadpic;
var
   sPicName,sFileName : string;
   sValue : string;
   i : Integer;


begin
   sValue := ExtractFilePath(Application.ExeName)+'pic';
   for I := 0 to Memo1.Lines.Count -1 do
   begin
       sPicName := Memo1.Lines.Strings[i];
       if trim(sPicName) = '' then
         Continue;

       sFileName := sValue + '\'+  GetUrlFileName(sPicName);

       UrlMon.URLDownloadToFile(nil,PChar(sPicName),Pchar(sFileName), 0,nil);
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Init;
end;

procedure TForm1.Init;
var
  dir : string;
begin
   dir := ExtractFilePath(Application.ExeName)+'Pic';
   if not DirectoryExists(dir) then
     CreateDir(dir);
end;

end.
