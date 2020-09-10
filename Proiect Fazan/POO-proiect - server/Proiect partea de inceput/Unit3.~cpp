//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit3.h"
#include "Unit1.h"
#include "Fazan.h"
#include "Player.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm2 *Form2;
Player *jucator1=new Player("",0,"P1");
Player *jucator2=new Player("",0,"P2");
//---------------------------------------------------------------------------
__fastcall TForm2::TForm2(TComponent* Owner)
        : TForm(Owner)
{
ct=0;
}
//---------------------------------------------------------------------------
void __fastcall TForm2::btnexit2Click(TObject *Sender)
{
exit(0);        
}
//---------------------------------------------------------------------------


void __fastcall TForm2::brnNameSelectClick(TObject *Sender)
{
String text = nameBox->Text;
jucator1->setNume(text);
Form1->ServerSocket->Socket->Connections[0]->SendText(text);
brnNameSelect->Hide();

}
//---------------------------------------------------------------------------

//String retinePtLabel="";
//int ctLinie=1;
void __fastcall TForm2::sendCuvantButtonClick(TObject *Sender)
{
bool adaugareCuv=true;
String text = cuvantBox->Text;
/*retinePtLabel += jucator1->istoricJucator(jucator1->getContor());
retinePtLabel += "  ";
if(ctLinie % 5 ==0){
retinePtLabel += "\n";
}
cuvLabel->Caption = retinePtLabel; */
for(int i=0;i<jucator1->getContor();i++){
if(jucator1->istoricJucator(i) == text || jucator2->istoricJucator(i) == text){
         adaugareCuv=false;
    }
}
if(adaugareCuv == true && text!=""){
if(ct==0){
String textDeTrimisAuxiliar = text.SubString(0,1);
if(textDeTrimisAuxiliar == enemyCuvantBox->Text.SubString(enemyCuvantBox->Text.Length(),1)){
jucator1->adaugaCuvant(text,jucator1->getContor());
cuvList->Items->Add(text);
adaugareCuv = false;
sendCuvantButton->Visible=false;
btnNuStiu->Visible = false;
Form1->ServerSocket->Socket->Connections[0]->SendText(text);
ct=1;
}
}
else{
if(enemyCuvantBox->Text == "NU STIU"){
  cuvList->Items->Add(text);
  jucator1->adaugaCuvant(text,jucator1->getContor());
  Form1->ServerSocket->Socket->Connections[0]->SendText(text);
  sendCuvantButton->Visible=false;
  btnNuStiu->Visible = false;
}
else{
String textAuxiliar = enemyCuvantBox->Text.SubString(enemyCuvantBox->Text.Length()-1,2);
String textDeTrimisAuxiliar = text.SubString(0,2);
if(textDeTrimisAuxiliar ==  textAuxiliar){
jucator1->adaugaCuvant(text,jucator1->getContor());
cuvList->Items->Add(text);
sendCuvantButton->Visible=false;
Form1->ServerSocket->Socket->Connections[0]->SendText(text);
}
 }
  }
}
jucator1->setContor((jucator1->getContor())+1);
//ctLinie++;
}
//---------------------------------------------------------------------------





void __fastcall TForm2::enemyCuvantBoxChange(TObject *Sender)
{
jucator2->adaugaCuvant(enemyCuvantBox->Text,jucator2->getContor());
jucator2->setContor((jucator2->getContor())+1);
}
//---------------------------------------------------------------------------

void __fastcall TForm2::btnNuStiuClick(TObject *Sender)
{
switch(btnNuStiu->Tag){
 case 0:jucator1->setFazan("f");
        btnNuStiu->Tag = btnNuStiu->Tag + 1;
        litereBox->Text = jucator1->getFazan();
        Form1->ServerSocket->Socket->Connections[0]->SendText("Litere:"+jucator1->getFazan());
        btnNuStiu->Visible = false;
        sendCuvantButton->Visible = false;
        break;
 case 1:jucator1->setFazan("fa");
        btnNuStiu->Tag = btnNuStiu->Tag + 1;
        litereBox->Text = jucator1->getFazan();
        Form1->ServerSocket->Socket->Connections[0]->SendText("Litere:"+jucator1->getFazan());
        btnNuStiu->Visible = false;
        sendCuvantButton->Visible = false;
        break;
 case 2:jucator1->setFazan("faz");
        btnNuStiu->Tag = btnNuStiu->Tag + 1;
        litereBox->Text = jucator1->getFazan();
        Form1->ServerSocket->Socket->Connections[0]->SendText("Litere:"+jucator1->getFazan());
        btnNuStiu->Visible = false;
        sendCuvantButton->Visible = false;
        break;
 case 3:jucator1->setFazan("faza");
        btnNuStiu->Tag = btnNuStiu->Tag + 1;
        litereBox->Text = jucator1->getFazan();
        Form1->ServerSocket->Socket->Connections[0]->SendText("Litere:"+jucator1->getFazan());
        btnNuStiu->Visible = false;
        sendCuvantButton->Visible = false;
        break;
 case 4:jucator1->setFazan("fazan");
        btnNuStiu->Tag = 0;
        Form1->ServerSocket->Socket->Connections[0]->SendText("Litere:"+jucator1->getFazan());
        litereBox->Text = jucator1->getFazan();
        jucator2->setScor(jucator2->getScor()+1);
        scorEnemyBox->Text = IntToStr(jucator2->getScor());
        btnNuStiu->Visible = false;
        sendCuvantButton->Visible = false;
        break;
}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::litereBoxChange(TObject *Sender)
{
if(litereBox->Text == "fazan"){
 jucator1->setFazan("");
 litereBox->Text = "";
 jucator2->setScor(jucator2->getScor());
 scorEnemyBox->Text = IntToStr(jucator2->getScor());
 jucator2->setFazan("");
 litereEnemyBox->Text="";
}        
}
//---------------------------------------------------------------------------

void __fastcall TForm2::scorEnemyBoxChange(TObject *Sender)
{
if(scorEnemyBox->Text == '2'){
   imagineCastigator->Picture->LoadFromFile("lose.jpg");
   nameLabel->Visible = false;
   nameBox->Visible = false;
   enemyNameLabel->Visible = false;
   enemyNameBox->Visible = false;
   fazanLabel->Visible = false;
   cuvantBox->Visible = false;
   sendCuvantButton->Visible = false;
   btnNuStiu->Visible = false;
   cuvList->Visible = false;
   lblLitereEnemy->Visible = false;
   enemyCuvantBox->Visible = false;
   lblLitere->Visible = false;
   litereBox->Visible = false;
   lblLitereEnemy->Visible = false;
   litereEnemyBox->Visible = false;
   cuvEnemyList->Visible = false;
   brnNameSelect->Visible = false;
   Label1->Visible = false;
 }
}
//---------------------------------------------------------------------------

void __fastcall TForm2::litereEnemyBoxChange(TObject *Sender)
{
 jucator2->setFazan(litereEnemyBox->Text);
if(jucator2->getFazan().Length() == 5){
 jucator1->setScor(jucator1->getScor() + 1);
 scorBox->Text = IntToStr(jucator1->getScor());
 litereEnemyBox->Text = "";
 litereBox->Text="";
 jucator1->setFazan("");
 btnNuStiu->Tag=0;
 if(jucator1->getScor() == 2){
   imagineCastigator->Picture->LoadFromFile("winner.jpg");
   nameLabel->Visible = false;
   nameBox->Visible = false;
   enemyNameLabel->Visible = false;
   enemyNameBox->Visible = false;
   fazanLabel->Visible = false;
   cuvantBox->Visible = false;
   sendCuvantButton->Visible = false;
   btnNuStiu->Visible = false;
   cuvList->Visible = false;
   lblLitereEnemy->Visible = false;
   enemyCuvantBox->Visible = false;
   lblLitere->Visible = false;
   litereBox->Visible = false;
   lblLitereEnemy->Visible = false;
   litereEnemyBox->Visible = false;
   cuvEnemyList->Visible = false;
   brnNameSelect->Visible = false;
   Label1->Visible = false;
   scorBox->Tag=1;
 }

}
}
//---------------------------------------------------------------------------

void __fastcall TForm2::enemyNameBoxChange(TObject *Sender)
{
jucator2->setNume(enemyNameBox->Text);
}
//---------------------------------------------------------------------------

void __fastcall TForm2::nameBoxChange(TObject *Sender)
{
jucator1->setNume(nameBox->Text);
}
//---------------------------------------------------------------------------

