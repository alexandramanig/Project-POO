//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit3.h"
#include "Fazan.h"
#include "Player.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;


//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
 btnstart->Hide();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::btnexitClick(TObject *Sender)
{
   exit(0);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::btnstartClick(TObject *Sender)
{
Form1->Hide();
Form2->Show();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::btnConnectClick(TObject *Sender)
{
String text;
if(InputQuery("Connect", "Introduceti IP:", text)){
  if(text.Length()!=0){
  ClientSocket->Address=text;
  ClientSocket->Active=true;
  ShowMessage(ClientSocket->Address);
  btnstart->Show();
  }
  else
  {
  exit(0);
  }
}
else{
  ShowMessage("Ati apasat butonul Cancel");
}        
}
//---------------------------------------------------------------------------

bool receiveNume= false;

void __fastcall TForm1::ClientSocketRead(TObject *Sender,
      TCustomWinSocket *Socket)
{
String textprimit;
textprimit=Socket->ReceiveText();
if(receiveNume == false){
Form2->enemyNameBox->Text=textprimit;
Form2->enemyNameLabel->Visible=true;
Form2->enemyNameBox->Visible=true;
receiveNume=true;
if(Form2->enemyNameBox->Visible == true){
Form2->fazanLabel->Visible=true;
Form2->cuvantBox->Visible=true;
Form2->cuvList->Visible=true;
Form2->labelLitereInamic->Visible=true;
//Form2->btnNuStiu->Visible = false;
Form2->enemyCuvantBox->Visible=true;
Form2->cuvEnemyList->Visible=true;
Form2->btnLiteraInceput->Visible=true;
Form2->lblLitere->Visible=true;
Form2->lblScor->Visible=true;
Form2->litereBox->Visible=true;
Form2->scorBox->Visible=true;
Form2->lblLitereEnemy->Visible=true;
Form2->litereEnemyBox->Visible=true;
Form2->lblScorEnemy->Visible=true;
Form2->scorEnemyBox->Visible=true;
}
}
else{
if(textprimit.SubString(0,7) != "Litere:"){
Form2->sendCuvantButton->Visible=true;
Form2->btnNuStiu->Visible = true;
Form2->enemyCuvantBox->Text=textprimit;
Form2->cuvantBox->Text="";
Form2->cuvEnemyList->Items->Add(textprimit);
        }
else{
Form2->litereEnemyBox->Text = textprimit.SubString(8, textprimit.Length());
Form2->enemyCuvantBox->Text="NU STIU";
Form2->sendCuvantButton->Visible=true;
Form2->btnNuStiu->Visible = true;
Form2->cuvantBox->Text="";
if(Form2->scorBox->Tag == 1){
 Form2->sendCuvantButton->Visible=false;
 Form2->btnNuStiu->Visible = false;
}
}
}
}
//---------------------------------------------------------------------------




