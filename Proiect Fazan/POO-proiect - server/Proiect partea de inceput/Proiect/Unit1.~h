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
        TServerSocket *ServerSocket;
        void __fastcall btnexitClick(TObject *Sender);
        void __fastcall btnstartClick(TObject *Sender);
        void __fastcall ServerSocketClientRead(TObject *Sender,
          TCustomWinSocket *Socket);
        void __fastcall ServerSocketAccept(TObject *Sender,
          TCustomWinSocket *Socket);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
protected:bool receiveNume;

};


//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
