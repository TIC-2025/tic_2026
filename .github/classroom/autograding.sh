#!/bin/bash

# TEST 1: Verificar que el alumno creó un archivo específico usando la terminal
if [ -f "solucion.txt" ]; then
    echo "✔ ¡Excelente! Creaste el archivo solucion.txt"
else
    echo "✘ Error: No se encuentra el archivo solucion.txt"
    exit 1
fi

# TEST 2: Verificar que el alumno usó Git para guardar sus cambios
if git log -1 > /dev/null 2>&1; then
    echo "✔ ¡Muy bien! Has usado git commit correctamente."
else
    echo "✘ Error: No has realizado ningún commit con tus cambios."
    exit 1
fi
