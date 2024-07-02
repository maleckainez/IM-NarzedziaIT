#!/bin/bash
function date(){
	aktualnaData=$(date +%d/%m/%Y)
	echo "Dzisiejsza data to: $aktualnaData"
}
function logi(){
	local liczba_plikow=${1:-100}
	for ((i=1; i<=liczba_plikow; i++));do
		nazwaPliku="log$i.txt"
		echo "Nazwa Pliku: $nazwaPliku" > "$nazwaPliku"
		echo "Utworzone przez: $0" >> "$nazwaPliku"
		echo "Data utworzenia: $(date +%d/%m/%Y)" >> "$nazwaPliku"
	done
}
case "$1" in
	--date)
		date
	;;
	--logs)
		logi "$2"
	*)
		echo"Wybrano błędną opcję $1"
	;;
esac
