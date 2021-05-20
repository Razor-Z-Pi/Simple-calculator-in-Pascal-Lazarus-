unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: char);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b,sum:real;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
     a:=StrToFloat(Edit1.Text);
     b:=StrToFloat(Edit2.Text);
     sum:=a+b;
     Edit3.Text:=FloatToStr(sum);
   end;
   label2.caption:='+';
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b,raz:real;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
     a:=StrToFloat(Edit1.Text);
     b:=StrToFloat(Edit2.Text);
     raz:=a-b;
     Edit3.Text:=FloatToStr(raz);
   end;
  label2.caption:='-';
end;

procedure TForm1.Button4Click(Sender: TObject);
var a,b,chast:real;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
     a:=StrToFloat(Edit1.Text);
     b:=StrToFloat(Edit2.Text);
     chast:=a/b;
     Edit3.Text:=FloatToStr(chast);
   end;
  label2.caption:='/';
end;

procedure TForm1.Button5Click(Sender: TObject);
var a,b,chisl:real;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
     a:=StrToFloat(Edit1.Text);
     b:=StrToFloat(Edit2.Text);
     chisl:=a*b;
     Edit3.Text:=FloatToStr(chisl);
   end;
  label2.caption:='*';
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
   Edit3.Text:='';
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
    case Key of
        '0'..'9',#8: ;
        ',':if pos(',',Edit1.Text) > 0 then Key:=#0;
        #13:Edit2.SetFocus;
        else Key:=#0;
        end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: char);
begin
    case Key of
        '0'..'9',#8: ;
        ',':if pos(',',Edit1.Text) > 0 then Key:=#0;
        #13:Edit2.SetFocus;
        else Key:=#0;
        end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: char);
begin
     case Key of
    '0'..'9',#8: ;
    ',':if pos(',',Edit1.Text) > 0 then key:=#0;
    else Key:=#0;
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

