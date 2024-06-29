#!/bin/bash

function pomoc() {
    echo "Wpisz Lab4.sh --opcja"
    echo "Dostępne opcje:"
    echo "  --help    wyświetlanie tego okna pomocy"
    echo "  --date    wyświetlanie aktualnej daty"
}

function pokaz_date() {
    aktualnaData=$(date +%m/%d/%Y)
    echo "Dzisiejsza data to: $aktualnaData"
}

case "$1" in
    --help)
        pomoc
    ;;
    --date)
        pokaz_date
    ;;
    *)
        echo "Wybrano błędną opcję $1"
        pomoc
    ;;
esac
