#!/bin/bash
function pomoc() {
    echo "Wpisz Lab4.sh --opcja"
    echo "Dostępne opcje:"
    echo "  --help (-h)        wyświetlanie tego okna pomocy"
    echo "  --date (-d)       wyświetlanie aktualnej daty"
    echo "  --logs (-l)       tworzenie stu plików log.txt"
    echo "  --logs numer  tworzenie określonej ilości plików log"
}

function pokaz_date() {
    aktualnaData=$(date +%d/%m/%Y)
    echo "Dzisiejsza data to: $aktualnaData"
}

function logi() {
    local liczba_plikow=${1:-100}
    for ((i=1; i<=liczba_plikow; i++)); do
        nazwaPliku="log$i.txt"
        echo "Nazwa Pliku: $nazwaPliku" > "$nazwaPliku"
        echo "Utworzone przez: $0" >> "$nazwaPliku"
        echo "Data utworzenia: $(date +%d/%m/%Y)" >> "$nazwaPliku"
    done
}

case "$1" in
    -h|--help)
        pomoc
    ;;
    -d|--date)
        pokaz_date
    ;;
    -l|--logs)
        logi "$2"
    ;;
    *)
        echo "Wybrano błędną opcję $1"
        pomoc
    ;;
esac
