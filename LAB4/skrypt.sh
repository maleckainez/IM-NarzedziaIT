#!/bin/bash
function date(){
	aktualnaData=$(date +%d/%m/%Y)
	echo "Dzisiejsza data to: $aktualnaData"
}
case "$1" in
	--date)
		date
	;;
	*)
		echo"Wybrano błędną opcję $1"
	;;
esac
