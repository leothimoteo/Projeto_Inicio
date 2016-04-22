#include <Tubo.h>

std :: ostream& operator << (std:: ostream& _os, const Tubo& _tubo) {        
    _os << "Espessura:  " << _tubo.esp << "   Diâmetro:  " << _tubo.diametro
            <<"   Altura: " << _tubo.comprimento << "   Centro:"  
                  << _tubo.ptr <<  std :: endl;
    
    return _os;
}

std :: istream& operator >> (std:: istream& _os,  Tubo& _tubo) {
    _os >> _tubo.esp >> _tubo.diametro >> _tubo.comprimento;
    return _os;
}


const Tubo& Tubo:: operator= (const Tubo& _tubo) {
    if (this != &_tubo){
        comprimento = _tubo.comprimento;
        esp = _tubo.esp;
        diametro = _tubo.diametro;
        ptr = _tubo.ptr;
    }
    
    return *this;
}