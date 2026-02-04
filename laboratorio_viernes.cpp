#include <iostream>
using namespace std;

int sumar(int numero1, int numero2){
    return numero1 + numero2;
}

int determinaMayor(int numero1,int numero2){
    if (numero1 > numero2){
        return numero1;
    } else {
        return numero2;
    }
}

void compararNota(){
    int nota;
    cout << "Ingrese la nota del estudiante: ";
    cin >> nota;

    if (nota >= 61){
        cout << "Estudiante aprobado" << endl;
    } else {
        cout << "Estudiante reprobado" << endl;
    }
}

int main(){
    int opcion;
    cout << "1. Saludar" << endl;
    cout << "2. Realizar suma" << endl;
    cout << "3. Determinar numero mayor" << endl;
    cout << "4. Comparar nota" << endl;
    cin >> opcion;

    if (opcion == 2){
        cout << "Resultado: " << sumar(25,26) << endl;
    }
    if (opcion == 3){
        cout << "Mayor: " << determinaMayor(23,50) << endl;
    }
    if (opcion == 4){
        compararNota();
    }
}
