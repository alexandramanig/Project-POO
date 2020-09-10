#include <vcl.h>
#pragma hdrstop
#include "Fazan.h"
#pragma package(smart_init)

//--------------Clasa FazanPlayer-------------
     FazanPlayer::FazanPlayer(){
          fazan="FAZAN";
          scor=0;
     }
     FazanPlayer::~FazanPlayer(){
          fazan="";
          scor=0;
     }
     FazanPlayer::FazanPlayer(String f, int s){
          fazan=f;
          scor=s;
     }
     void FazanPlayer::setFazan(String f){
          fazan=f;
     }
     String FazanPlayer::getFazan(){
          return fazan;
     }
     void FazanPlayer::setScor(int s){
          scor=s;
     }
     int FazanPlayer::getScor(){
          return scor;
     }


