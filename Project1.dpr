program Project1;



uses
  Forms,
  Unit1 in 'Unit1.pas' {Speeliite},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Speliite:)';
  Application.CreateForm(TSpeeliite, Speeliite);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
