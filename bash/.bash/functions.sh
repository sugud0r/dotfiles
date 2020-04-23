# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1   ;;
      *.tar.gz)    tar xvzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xvf $1    ;;
      *.tbz2)      tar xvjf $1   ;;
      *.tgz)       tar xvzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# new_record - add new record to /etc/hosts
#   Useful to use with docker with nginx proxy
#   service
# usage: ex <record>
new_record() {
  local root="${1}.local"
  local mail="mail.${1}.local"
  local db="db.${1}.local"

  local record="127.0.0.1 ${root} ${mail} ${db}"

  echo $record | sudo tee -a /etc/hosts
}

# view - open image with xdg-open
# usage: view <image path>
view() {
  xdg-open ${1} > /dev/null 2>&1 &
}
