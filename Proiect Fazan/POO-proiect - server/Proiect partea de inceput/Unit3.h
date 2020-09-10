//---------------------------------------------------------------------------

#ifndef Unit3H
#define Unit3H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TForm2 : public TForm
{
__published:	// IDE-managed Components
        TButton *btnexit2;
        TEdit *nameBox;
        TEdit *enemyNameBox;
        TButton *brnNameSelect;
        TLabel *nameLabel;
        TLabel *enemyNameLabel;
        TEdit *cuvantBox;
        TEdit *enemyCuvantBox;
        TLabel *fazanLabel;
        TLabel *Label1;
        TButton *sendCuvantButton;
        TLabel *cuvLabel;
        TListBox *cuvList;
        TListBox *cuvEnemyList;
        TLabel *conectLabel;
        TButton *btnNuStiu;
        TLabel *lblLitere;
        TLabel *lblScor;
        TLabel *lblLitereEnemy;
        TLabel *lblScorEnemy;
        TEdit *litereBox;
        TEdit *scorBox;
        TEdit *litereEnemyBox;
        TEdit *scorEnemyBox;
        TImage *imagineCastigator;
        void __fastcall btnexit2Click(TObject *Sender);
        void __fastcall brnNameSelectClick(TObject *Sender);
        void __fastcall sendCuvantButtonClick(TObject *Sender);
        void __fastcall enemyCuvantBoxChange(TObject *Sender);
        void __fastcall btnNuStiuClick(TObject *Sender);
        void __fastcall litereBoxChange(TObject *Sender);
        void __fastcall scorEnemyBoxChange(TObject *Sender);
        void __fastcall litereEnemyBoxChange(TObject *Sender);
        void __fastcall enemyNameBoxChange(TObject *Sender);
        void __fastcall nameBoxChange(TObject *Sender);
protected:      int ct;
private:	// User declarations
public:		// User declarations
        __fastcall TForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm2 *Form2;
//---------------------------------------------------------------------------
#endif
