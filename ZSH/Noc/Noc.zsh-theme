#Noc for ZSH Ver. 0.1

#Encabezado
info="\n$FG[167] «« Información del sistema »» \n%{$reset_color%}%"

#Screenfetch
sf=`screenfetch`

#Tiempo
tiempo='$FG[038] • Hola $FG[085]`whoami`$FG[038], Ahora es $FG[085]`date`%{$reset_color%}%'

#Imprimir
print -P $info
echo $sf
echo " "
print -P $tiempo
echo " "

######
PROMPT='$FG[038][%*] $FG[085]${PWD/#$HOME/~}$(git_prompt_info) $FG[051]» %{$reset_color%}%'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[cyan]%}✓%{$reset_color%}"
