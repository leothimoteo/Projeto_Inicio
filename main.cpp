
/* 
 * Objetivo: Desenvolver classe Geometria para armazenar tubos e furos, assim como
 * suas proporções;
 * Author: Leonardo Oliveira Thimoteo
 * Status: Em andamento
 * Created on 19 de Abril de 2016, 11:05
 */

#include <cstdlib>
#include <Geometria.h>
#include <Tubo.h>
#include <fstream>
#include <sstream>
#include <vector>
#include <list>

//******************************************************************************
//                                typedef
//******************************************************************************

    typedef std :: vector <Tubo>                Vector;
    
//******************************************************************************
//                      FUNÇÃO CONTINUIDADE DE TUBOS
//******************************************************************************   
    const bool Furo_Tubo (const Geometria, const Tubo);
    const bool Conti (const Tubo, const Tubo);
    
int main() {
    
    Geometria g1(100,100); //variável que contêm o valor e dimensão do poço
    Tubo t2, t6 (1,2,3,4,4);              //variável que vai assumir os valores do arquivo externo
    Vector vetor_Tubos;    //declaração do vetor tubos, que será compostos por elementos do tipo tubo
    
    std :: ifstream input("tubos.txt"); //PRECISA EXISTIR
    if (!input){
        std :: cerr << "Arquivo inexistente" << std :: endl;
        abort ();
    }
    
    for (int i=0; !input.eof(); i++){
       input >> t2;
        if (Furo_Tubo(g1, t2)){
        vetor_Tubos.push_back(t2); // neste ponto estou inicializando o tamanho o meu vetor
        } 
    }
    input.close ();
    
   // std:: cout << vetor_Tubos.size();
    
//    for (int i=0;i<vetor_Tubos.size();i++){ 
//        if (vetor_Tubos[i].CMP()<= g1.PTR().Y() && 
//            vetor_Tubos[i].DMT()>t6.DMT())
//        {
//            t6= vetor_Tubos[i];
//        } 
//    }
//    tubos.push_back(t6);
//    t6;
    
    for (int i=0;i<vetor_Tubos.size();i++){
        std:: cout << vetor_Tubos[i] << "\n";
    }

    return 0;
    
   
}
    


const bool Conti (const Tubo _t1, const Tubo _t2){
    return _t1.CMP() + _t1.CMP() == _t2.CMP() && 
           _t1.DMT() > _t2.DMT();
    
}
const bool Furo_Tubo (const Geometria _geo, const Tubo _tubo){
    return _geo.DMT() >= _tubo.DMT()+ (2*_tubo.ESP())  &&
           _geo.ALT() > _tubo.CMP();
}