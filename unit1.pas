   unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalculate: TButton;
    Button1: TButton;
    cmbFigures: TComboBox;
    lblResult: TLabel;
    lblSideA: TLabel;
    lblSideB: TLabel;
    lblRadius: TLabel;
    txtSideA: TEdit;
    txtSideB: TEdit;
    txtRadius: TEdit;
    procedure btnCalculateClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  cmbFigures.Items.Add('Круг');
  cmbFigures.Items.Add('Квадрат');
  cmbFigures.Items.Add('Треугольник');
  cmbFigures.Items.Add('Прямоугольник');
  cmbFigures.ItemIndex := 0;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.btnCalculateClick(Sender: TObject);
var
  area: Double;
  radius, sideA, sideB: Double;
begin
  case cmbFigures.ItemIndex of
    0: begin // Круг
      radius := StrToFloat(txtRadius.Text);
      area := Pi * Power(radius, 2);
    end;
    1: begin // Квадрат
      sideA := StrToFloat(txtSideA.Text);
      area := Power(sideA, 2);
    end;
    2: begin // Треугольник
      sideA := StrToFloat(txtSideA.Text);
      area := 0.5 * sideA * StrToFloat(txtSideB.Text);
    end;
    3: begin // Прямоугольник
      sideA := StrToFloat(txtSideA.Text);
      sideB := StrToFloat(txtSideB.Text);
      area := sideA * sideB;
    end;
  end;

  lblResult.Caption := 'Площадь: ' + FloatToStr(area);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

end.



