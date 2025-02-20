unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function VerificarCampos:boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  VerificarCampos;
end;

function TForm1.VerificarCampos: boolean;
var
  I: Integer;
begin
  Result := false;
  for I := 0 to Self.ComponentCount -1 do
  begin
    if Self.Components[I] is TCustomEdit then
    begin
      if TEdit(Self.Components[I]).Text = EmptyStr then
        begin
         TEdit(Self.Components[I]).Color := clRed;
         TEdit(Self.Components[I]).SetFocus;
         Result := True;
        end else
         TEdit(Self.Components[I]).Color := clWindow;
    end;

  end;

end;

end.
