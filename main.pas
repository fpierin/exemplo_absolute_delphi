unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    procedure TornarTextoDoObjetoEmMaiusculas(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TornarTextoDoObjetoEmMaiusculas(Sender: TObject);
var
  Edit    : TEdit     absolute Sender;
  Memo    : TMemo     absolute Sender;
  ComboBox: TComboBox absolute Sender;
begin
  if (Sender is TEdit) then
  begin
    Edit.Text := UpperCase(Edit.Text);
  end
  else if (Sender is TMemo) then
  begin
    Memo.Text := UpperCase(Memo.Text);
  end
  else if (Sender is TComboBox) and (ComboBox.Style = csDropDown) then
  begin
    ComboBox.Text := UpperCase(ComboBox.Text);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Self.Edit1.OnChange     := TornaTextoEmMaiusculas;
  Self.ComboBox1.OnChange := TornaTextoEmMaiusculas;
  Self.Memo1.OnChange     := TornaTextoEmMaiusculas;
end;

end.

