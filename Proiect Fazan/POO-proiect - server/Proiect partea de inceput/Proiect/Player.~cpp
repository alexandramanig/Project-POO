#include <vcl.h>
#pragma hdrstop
#include "Fazan.h"
#include "Player.h"
#pragma package(smart_init)

//---------------Clasa Player----------------
        Player::Player(){
                nume = "Ion";
                contorCuvinte=0;
        }
        Player::Player (String f,int s,String n) : FazanPlayer(f,s){
                nume=n;
                contorCuvinte=0;
        }
        Player::~Player(){
                nume="";
                contorCuvinte=0;
        }
        void Player::setNume(String s){
                nume=s;
        }
        String Player::getNume(){
                return nume;
        }
        String Player::istoricJucator(int ct){
                return istoricCuvinte[ct];
        }
        int Player::getContor(){
                return contorCuvinte;
        }
        void Player::adaugaCuvant(String k,int ct){
                istoricCuvinte[ct]=k;
        }
        void Player::setContor(int ct){
                contorCuvinte = ct;
        }
 