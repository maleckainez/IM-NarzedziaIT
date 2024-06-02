#!/bin/bash
function git_help(){
    echo "Wpisz auto2.sh [--wybrana_opcja]"
    echo "Dostępne opcje:"
    echo "  --help      Wyświetlenie tego okna pomocy"
    echo "  --init      Konfiguracja lokalnego środowiska GIT"
    echo "  --install   Pobranie projektu ze zdalnego repozytorium"
    echo "  --update    Wypchnij lokalne zmiany do remote"
    echo "  --authorrights      Podsumuj swoje commity z ostatniego miesiąca"
}
function git_init(){
    git config --global user.name "maleckainez"
    git config --global user.email "maleckainez@gmail.com"
    git config --global core.editor "vim"
}
function git_install(){
    git clone https://github.com/maleckainez/IM-NarzedziaIT
        sciezkaPliku=$(dirname "($readlink -f "$0")")
    if [[ ":$PATH:" = *"$sciezkaPliku"*  ]]; then
        echo "Ścieżka jest w pliku PATH"
    else
        echo "Ścieżki nie ma w pliku PATH"
        export PATH="$PATH:sciezkaPliku"
        echo "Ale bez zmartwień, już została dodana"
    fi
    echo "Date: $(date) \nCPU: $(sysctl -n hw.logicalcpu)\nPATH: $PATH" > path.bin
    echo "Pomyślnie zainstalowano repozytorium"
}
function git_update(){
    git checkout master
    bierzacy_branch=$(git branch --show-current)
    if [[-n $(git status --porcelain)]]: then
        echo "nie można dokonać update, w gałęzi roboczej są nieskomitowane zmiany"
        exit 1
    fi
    git fetch origin
    git checkout main
    git pull origin main
    git checkout $bierzacy_branch
    git merge main
    git push origin $bierzacy_branch
    echo "Gałąź $bierzacy_branch została zaktualizowana."
}
function git_prawa_autorskie(){
    autor=$(git config user.name)
    autor_email=$(git config user.email)
    git log --since="1 month ago" --author="$autor_email" --pretty=format: "%H" | while read COMMIT; do
        echo "Commit: $COMMIT" >> PrawaAutorskie.txt
        git show --pretty=format:"Data: %ci, Autor: %an, Email: %ae%nKomentarz: %s%nZmiany: %" $COMMIT >> PrawaAutorskie.txt
        git show --name-only --pretty=format: $commit >> PrawaAutorskie.txt
    done
    rar a PrawaAutorskie.rar PrawaAutorskie.txt
}

case "$1" in
    --help)
    git_help
    ;;
    --init)
    git_init
    ;;
    --install)
    git_install
    ;;
    --update)
    git_update
    ;;
    --authorrights)
    git_prawa_autorskie
    ;;
    *)
    echo"Wybrano błędną opcję: $1"
    git_help
    ;;
esac

    

