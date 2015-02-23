
#fräsiga funktioner
function ext() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xvjf $1     ;;
            *.tar.gz)   tar xvzf $1     ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      unrar x $1      ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xvf $1      ;;
            *.tbz2)     tar xvjf $1     ;;
            *.tgz)      tar xvzf $1     ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *.7z)       7z x $1         ;;
            *)          echo "'$1' inkompatibel filtyp" ;;
        esac
    else
        echo "'$1' är inte en korrekt fil!"
    fi
}

function tarz() { tar cvzf "${1%%/}.tar.gz" "${1%%/}/"; }
function tarb() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

#alias :D
alias dra="git pull"
alias tryck="git push"
alias överlämna="git commit -a -m"
alias återställ="git checkout"
alias ij="~/Hämtningar/idea-IU-139.1117.1/bin/idea.sh &"
alias klona="git clone"
alias fixaöverlämning="git commit --amend -a -m"

#startup
asciiquarium
clear
fortune | cowsay

