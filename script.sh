#!/bin/bash
set -e
readonly SEM_ARGUMENTOS=150

encerrar() {
    msg="${1}"
    codigo="${2:-160}"
    echo "Error: ${msg}" >&2
    exit "${codigo}" 
}

if [[ $# -eq 0 ]]; then
    encerrar "Você não passou um argumento" "${SEM_ARGUMENTOS}"
elif [[ $# -gt 1 ]]; then
    encerrar "Passe apenas um argumento"
fi
    echo "Parabens, você chegou até a saída utilizando o argumento: ${1}" 
    