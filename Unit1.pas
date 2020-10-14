unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Edit2: TEdit;
    Edit6: TEdit;
    Button8: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button7: TButton;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADODataSet1: TADODataSet;
    Button5: TButton;
    Timer1: TTimer;
    Label4: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var data,data2,bar:string;
begin
bar:=combobox2.Text+' '+combobox3.Text;
data:='insert into tokobuku(NAMA,JENISBUKU,JUDULBUKU,HARGA,JUMLAHBUKU,TOTAL,DISKON,BAYAR,PENGIRIMAN,TOTALBAYAR)values("'+EDIT1.Text+'","'+COMBOBOX1.Text+'","'+bar+'","'+edit4.Text+'","'+edit3.Text+'","'+EDIT7.Text+'","'+EDIT8.Text+'","'+EDIT9.Text+'","'+EDIT2.Text+'","'+EDIT6.Text+'");';
ADODataSet1.Active:=FALSE;
ADOCommand1.CommandText:=data;
ADOCommand1.Execute;
data2:='select*from tokobuku';
ADODataSet1.CommandText:=data2;
ADODataSet1.Active:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
VAR DATA,DATA2:STRING;
begin
EDIT1.Text:='';
COMBOBOX1.Text:='';
COMBOBOX2.Text:='';
COMBOBOX3.Text:='';
EDIT2.TEXT:='';
EDIT3.TEXT:='';
EDIT4.TEXT:='';
EDIT6.TEXT:='';
EDIT7.TEXT:='';
EDIT8.TEXT:='';
EDIT9.TEXT:='';
ADODataSet1.Active:=FALSE;
data2:='select*from tokobuku';
ADODataSet1.CommandText:=data2;
ADODataSet1.Active:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
VAR
DATA:STRING;
begin
ADODATASET1.Active:=FALSE;
ADOCONNECTION1.Connected:=TRUE;
DATA:=' SELECT*FROM tokobuku WHERE NAMA="'+EDIT1.TEXT+'"';
ADODATASET1.CommandText:=DATA;
ADODATASET1.Active:=TRUE;

end;



procedure TForm1.Button4Click(Sender: TObject);
var
data,data2:string;
begin
ADOConnection1.Connected:=true;
data:='delete*from tokobuku where NAMA="'+EDIT1.Text+'"';
ADOCommand1.CommandText:=data;
ADOCommand1.Execute;
ADODataSet1.Active:=FALSE;
data2:='select*from tokobuku';
ADODataSet1.CommandText:=data2;
ADODataSet1.Active:=true;
EDIT1.Text:='';
EDIT3.Text:='';
EDIT4.Text:='';
COMBOBOX1.Text:='';
COMBOBOX2.Text:='';
COMBOBOX3.Text:='';
EDIT7.TEXT:='';
EDIT8.TEXT:='';
EDIT9.TEXT:='';
end;

procedure TForm1.Button7Click(Sender: TObject);
var
data,data2:string;
begin
ADODataSet1.Active:=false;
ADOConnection1.Connected:=true;
data:='delete*from tokobuku';
ADOCommand1.CommandText:=data;
ADOCommand1.Execute;
ADODataSet1.Active:=FALSE;
data2:='select*from tokobuku';
ADODataSet1.CommandText:=data2;
ADODataSet1.Active:=true;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
application.Terminate
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
if combobox3.Text='NARUTO' then
begin
edit4.Text:='25000';
end;
if combobox3.Text='ONE PIECE' then
begin
edit4.Text:='23000';
end;
if combobox3.Text='DETECTIVE CONAN' then
begin
edit4.Text:='30000';
end;
if combobox3.Text='GINTAMA' then
begin
edit4.Text:='15000';
end;
if combobox3.Text='MINAMOTO MONOGATARI' then
begin
edit4.Text:='28000';
end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
if combobox2.Text='HARRY POTTER' then
begin
edit4.Text:='35000';
end;
if combobox2.Text='SANG PEMIMPI' then
begin
EDIT4.Text:='20000';
end;
if combobox2.Text='THE RAINBOW' then
begin
EDIT4.Text:='22000';
end;
if combobox2.Text='LASKAR PELANGI' then
begin
EDIT4.Text:='33000';
end;
if combobox2.Text='LORD' then
begin
EDIT4.Text:='40000';
end;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
IF RADIOBUTTON1.Checked= TRUE THEN EDIT2.Text:= '25000';
end;

procedure TForm1.Edit3Change(Sender: TObject);
var total,dis,jumlah,sub:real;
begin
if edit3.Text='' then
begin
jumlah:=0;
end
else
jumlah:=strtofloat(edit3.Text);
sub := strtofloat(edit4.Text)*(jumlah);
EDIT7.TEXT:=floattostr(sub);

dis:= strtofloat(EDIT7.Text)*0.3;
if strtofloat(EDIT7.TEXT) >= 100000 then
begin
EDIT8.Text:=floattostr(dis);
total:= strtofloat(EDIT7.Text)-dis;
EDIT9.Text:=floattostr(total);
end
else
begin
EDIT8.Text:='Tidak Ada';
EDIT9.Text:=floattostr(strtofloat(EDIT7.TEXT));
end;
end;

procedure TForm1.Button8Click(Sender: TObject);
VAR I:REAL;
begin
I:= STRTOFLOAT(EDIT9.Text)+ STRTOFLOAT(EDIT2.Text);
EDIT6.Text:= FLOATTOSTR(I);
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
IF RADIOBUTTON2.Checked= TRUE THEN EDIT2.Text:= '30000';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
combobox2.Visible:=false;
combobox3.Visible:=false;
edit1.Text:='';
edit3.Text:='';
edit4.Text:='';
EDIT7.TEXT:='';
EDIT8.TEXT:='';
EDIT9.TEXT:='';

end;


procedure TForm1.ComboBox1Change(Sender: TObject);
begin
IF COMBOBOX1.Text='NOVEL' then
begin
combobox2.Visible:=true;
combobox3.Visible:=false;
COMBOBOX3.Text:='';
end;

IF COMBOBOX1.Text='KOMIK' then
begin
combobox2.Visible:=false;
COMBOBOX2.Text:='';
combobox3.Visible:=true;
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
VAR DATA2,data,bar:STRING;
BEGIN
bar:=combobox2.Text+' '+combobox3.Text;
data:= 'update tokobuku set NAMA="'+edit1.Text+'",jenisbuku="'+COMBOBOX1.Text+'",judulbuku="'+bar+'",harga="'+EDIT4.text+'",jumlahbuku="'+EDIT3.Text+'",TOTAL="'+EDIT7.TEXT+'",diskon="'+EDIT8.TEXT+'",bayar="'+EDIT9.TEXT+'",pengiriman="'+EDIT2.TEXT+'",TOTALbayar="'+EDIT6.TEXT+'" where nama="'+Edit1.Text+'";';
ADOCOMMAND1.CommandText:=data;
ADOCOMMAND1.Execute;
ADODataSet1.Active:=FALSE;
data2:='select*from tokobuku';
ADODataSet1.CommandText:=data2;
ADODataSet1.Active:=true;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
label4.Caption:=datetostr(now);
 label8.Caption:=timetostr(now);
end;

end.
