#!/bin/bash

function pomoc() {
    echo "Wpisz Lab4.sh --opcja"
    echo "Dostępne opcje:"
    echo "  --help    wyświetlanie tego okna pomocy"
    echo "  --date    wyświetlanie aktualnej daty"
    echo "  --logi    tworzenie plików log.txt"
}

function pokaz_date() {
    aktualnaData=$(date +%d/%m/%Y)
    echo "Dzisiejsza data to: $aktualnaData"
}

function logi() {
	for i in {1..100};do
		nazwapliku="log$i.txt"
		echo "Nazwa Pliku: $nazwaPliku" > $nazwaPliku
		echo "Utworzone przez: $0" >> $nazwaPliku
		echo "Data utworzenia: $(date +%d/%m/%Y)" >> $nazwaPliku
	done
}

case "$1" in
    --help)
        pomoc
    ;;
    --date)
        pokaz_date
    ;;
--logs)
	logi
;;
    *)
        echo "Wybrano błędną opcję $1"
        pomoc
    ;;
esac
