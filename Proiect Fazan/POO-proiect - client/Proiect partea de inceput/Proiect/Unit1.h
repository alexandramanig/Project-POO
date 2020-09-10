//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <ScktComp.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TButton *btnexit;
        TImage *Image1;
        TButton *btnstart;
        TLabel *nameLabel;
        TButton *btnConnect;
        TClientSocket *ClientSocket;
        void __fastcall btnexitClick(TObject *Sender);
        void __fastcall btnstartClick(TObject *Sender);
        void __fastcall btnConnectClick(TObject *Sender);
        void __fastcall ClientSocketRead(TObject *Sender,
          TCustomWinSocket *Socket);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};


//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
 