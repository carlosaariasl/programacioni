//Declaracion de biblioteca
#include <iostream>
using namespace std;


//Crear una funcion para sumar dos numeros
int sumar(int numero1, int numero2){
    int resultado = numero1 + numero2;
    return resultado;
}

//Crear una funcion o programa que determine cual es el mayor
int determinaMayor(int numero1,int numero2){
    if (numero1>numero2){
    std::cout << "El numero mayor es numero1: ",numero1);
    }else{
    std::cout<<"El numero mayor es numero1: ",numero1);
    }
}


int compararNota(int nota){
    std::cout<<"Ingrese la nota de estudiante";
    std::cin>>nota;
    if (nota>=61){
    std::cout<<"Estudiante aprobado" endl;
    }else{
    std::cout<<"Estudiante reprobado" endl;
    }
    return 0;
}

//Funcion principal
int main(){
    int opcion;
    std::cout<<"1. Saludar" <<endl;
    std::cout<<"2. Realizar suma " <<endl;
    std::cout<<"3. Determinar si un numero es Mayor" <<endl;
    std::cout<<"4. CompararNota" <<endl;
    std::cin>>opcion;
    if (opcion==2){
        sumar(25,26);
    }
    if (opcion==3){
        determinaMayor(23,50);
    }
    if (opcion==4){
        compararNota(80);
    }
}
