#Noc for ZSH Ver. 0.1

#Encabezado
info="\n$FG[167] ►► Información del sistema ◄◄ \n%{$reset_color%}%"

#Screenfetch
sf=`screenfetch`

#Tiempo
dia=`date +%A`
dia_num=`date +%d`
mes=`date +%B`
year=`date +%Y`
hora=`date +%X`
tiempo='$FG[038] → Hola $FG[085]`whoami`$FG[038], la fecha es $FG[085]${dia} ${dia_num} de ${mes} de ${year} $FG[038]y abriste la terminal a las $FG[227]${hora} %{$reset_color%}%'

#Imprimir
print -P $info
echo $sf
echo " "
print -P $tiempo
echo " "

######
local ret_status="%(?:%{$fg_bold[green]%}•:%{$fg_bold[red]%}•)"
PROMPT=' ${ret_status} $FG[038][%*] $FG[085]${PWD/#$HOME/~}$(git_prompt_info) $FG[051]» %{$reset_color%}%'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[cyan]%}✓%{$reset_color%}"
