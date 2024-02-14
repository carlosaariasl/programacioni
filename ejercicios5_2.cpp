#include <iostream>
#include <stdio.h>
void imprimirNumeroWhile(int inicio, int fin)
{
    int i = inicio;
    while (i <= fin)
    {
        std::cout << i << " ";
        i++;
    }
}
int sumaNumerosFor(int inicio, int fin)
{
    int suma = 0;
    for (int i = inicio; i <= fin; i++)
    {
        suma += i; // es lo mismo que colocar suma=suma+i; solo que esta abreviado
    }
    return suma;
}

int main()
{
    int inicio = 1;
    int fin = 5;
    std::cout << "Imprimir numeros del " << inicio << " " << fin << "  con While: \n";
    imprimirNumeroWhile(inicio, fin);

    int resultadoSuma = sumaNumerosFor(inicio, fin);
    std::cout << "La suma con un FOR, de los numeros del " << inicio << "al " << fin << " es: " << resultadoSuma << std::endl;
    return 0;
}
