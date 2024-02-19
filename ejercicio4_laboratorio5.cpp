#include <iostream>
#include <stdio.h>
int main()
{
    int arreglo[] = {34, 56, 2, 6, 3, 4, 4, 3, 5, 334, 3, 2, 3};
    int n = sizeof(arreglo) / sizeof(arreglo[0]); // Obtener el tamaño
    bool intercambio;
    // Imprime el contenido del arreglo desordenado en la consola
    for (int x = 0; x<n; x++)
    {
        std::cout << arreglo[x] << std::endl;
    }

    // ordenar los numeros del arreglo
    do
    {
        intercambio = false;
        for (int i = 0; i < n - 1; i++)      // Recorre los elementos
            if (arreglo[i] > arreglo[i + 1]) // Si el actual es mayor al siguiente
            {
                int temp = arreglo[i];       // Copia el valor del actual a una variable temporal
                arreglo[i] = arreglo[i + 1]; // As
                arreglo[i + 1] = temp;       // coloca en su lugar el que estaba en la posicion anterior
                intercambio = true;
            }
    } while (intercambio == true);

    // Imprime el contenido del arreglo ordenado en la consola
    for (int x = 0; x < n; x++)
    {
        std::cout << arreglo[x] << std::endl;
    }
    return 0;
}